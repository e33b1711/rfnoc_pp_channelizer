
close all;

%% parameter
f_channel=1;                        %sampling rate kanal
f_sub=1/N_sub;                          %sampling rate subkanal
ir_filter=sinc(((-N_sub*100):(N_sub*100-1))/N_sub);

% figure();
% stem(ir_filter);


%% Testsignale
frame_length_sub=1e5;
input=zeros(frame_length_sub,N_sub);
time_scale_sub=(0:frame_length_sub-1)*N_sub;
freq_scale_sub=(-frame_length_sub/2:frame_length_sub/2-1)/frame_length_sub*f_sub;


if (debugging==1)

input(11,1)=1;

else

for i=1:N_sub

    % rauschen
    if mod(i,4)==1
        input(:,i)=0.5*2/5*wgn(frame_length_sub,1,1,'complex');
    end
    
    % komplexer drehzeiger
    if mod(i,4)==2
        input(:,i)=0.5*exp(i*1i+2i*pi*(1:frame_length_sub)*0.3*f_sub);
    end
    % dirac-folge
    if mod(i,4)==3
        sig=upsample(ones(frame_length_sub,1),20,i);
        input(:,i)=0.5*sig(1:frame_length_sub);
    end
    % qpsk mit pulsformung
    if mod(i,4)==0
        sig=conv(upsample(randi(2,frame_length_sub,1)*2-3+1i*randi(2,frame_length_sub,1)*2-3i,20,i),sin((1:20)/20*pi));
        input(:,i)=0.5*sig(1:frame_length_sub);
    end
    
    %input(:,i)=0.1*ones(1,frame_length_sub);
    
%     
%     if mod(i,8)==0
%         input(100,i)=1;
%     end
%      if mod(i,8)==1
%         input(500,i)=1;
%      end
%      if mod(i,8)==2
%         input(900,i)=1;
%      end
%      if mod(i,8)==3
%         input(1300,i)=1;
%      end
%      if mod(i,8)==4
%         input(1700,i)=1;
%      end
%      if mod(i,8)==5
%         input(2100,i)=1;
%      end
%      if mod(i,8)==6
%         input(2500,i)=1;
%      end
%      if mod(i,8)==7
%         input(2900,i)=1;
%      end
  
    
end
end

figure();

for i=1:N_sub
    subplot(N_sub,2,(i-1)*2+1);
    plot(time_scale_sub(1:300), real(input(1:300,i)), time_scale_sub(1:300), imag(input(1:300,i)));
    title('time domain')
    
    spec=20*log10(abs(fftshift(fft(input(:,i)))));
    subplot(N_sub,2,(i-1)*2+2);
    plot(freq_scale_sub, spec);
    title('psd')
%    suptitle('input to channelizer');
end

input_trans=input.';
input_tdm=input_trans(:);


%% gefilterte Testsignale

input_filtered=[];

chans     = 8;
filt_len  = 712;
len=filt_len/chans;


for i=1:N_sub
    
   input_filtered(:,i)=conv(conv(input(:,i),filt_mat(i,:),'same'),filt_mat(i,:),'same');
    
end


figure();
for i=1:N_sub
    subplot(N_sub,2,(i-1)*2+1);
    plot(time_scale_sub(1:300), real(input_filtered(1:300,i)), time_scale_sub(1:300), imag(input_filtered(1:300,i)));
    title('time domain')
    
    spec=20*log10(abs(fftshift(fft(input_filtered(:,i)))));
    subplot(N_sub,2,(i-1)*2+2);
    plot(freq_scale_sub, spec);
    title('psd')
%    suptitle('input to channelizer');
end


figure();
for i=1:4
    subplot(4,2,(i-1)*2+1);
    plot(time_scale_sub(1:300), real(input_filtered(1:300,i)), time_scale_sub(1:300), imag(input_filtered(1:300,i)));
    title('time domain')
    
    spec=20*log10(abs(fftshift(fft(input_filtered(:,i)))));
    subplot(4,2,(i-1)*2+2);
    plot(freq_scale_sub, spec);
    title('psd')
%    suptitle('input to channelizer');
end














    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    