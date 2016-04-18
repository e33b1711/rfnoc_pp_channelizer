
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



 %input(11,1:N_sub)=1;
 input(11,1)=1;
 input(:)=1;
 input=input.';

 
 input_tdm=input(:);
 input_tdm=exp((1:numel(input))*2*pi/8*1j).';
 %input_tdm=input_tdm((N_sub+1-1):end);









    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    