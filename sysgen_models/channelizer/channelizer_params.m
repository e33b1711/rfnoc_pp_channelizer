reset_reg_address=200;


N_sub=16;

%%
chans     = N_sub;
filt_len  = 89*N_sub;
pb_mag    = 0.1;
sb_mag    = 90;
pb_freq   = (1/chans)*0.9;
sb_freq   = (1/chans);
filt = cfirpm(filt_len-1,[0,pb_freq,sb_freq,1],@lowpass,[pb_mag,sb_mag]);
%fvtool(filt);


filt_mat=reshape(filt,N_sub,[])./max(abs(filt));
filt_mat=filt_mat(N_sub:-1:1,:);
filt=reshape(filt_mat.',1,[]);

disp('Set FFT Window Size manually to N_sub!');



