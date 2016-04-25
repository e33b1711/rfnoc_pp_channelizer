reset_reg_address=200;


N_sub=16;

%%
chans     = N_sub;
filt_len  = 89*N_sub;
pb_mag    = 0.1;
sb_mag    = 70;
pb_freq   = (1/chans)*0.9;
sb_freq   = (1/chans);
filt16 = cfirpm(filt_len-1,[0,pb_freq,sb_freq,1],@lowpass,[pb_mag,sb_mag]);
fvtool(filt16);


filt_mat=reshape(filt16,N_sub,[])./max(abs(filt16));
filt_mat=filt_mat(N_sub:-1:1,:);
filt=reshape(filt_mat.',1,[]);

disp('Set FFT Window Size manually to N_sub!');
%%
spec16=fftshift(fft(fftshift(filt16)));
spec256=[zeros(1,(256-16)/2*89), spec16, zeros(1,(256-16)/2*89)];
filt256=fftshift(ifft(fftshift(spec256)));

close all;
figure();
subplot(2,2,1);
plot(real(spec16));
hold on;
plot(imag(spec16));
plot(abs(spec16));
title('org spec');

subplot(2,2,2);
plot(filt16);
title('org time');

subplot(2,2,3);
plot(real(spec256));
hold on;
plot(imag(spec256));
plot(abs(spec256));

subplot(2,2,4);
plot(real(filt256));

%%
N_sub=256;
filt_mat=reshape(filt256,N_sub,[])./max(abs(filt256));
filt_mat=filt_mat(N_sub:-1:1,:);
filt=reshape(filt_mat.',1,[]);



