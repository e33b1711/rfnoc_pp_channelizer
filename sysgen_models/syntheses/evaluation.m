%close all;
%% testen auf überauf am eingang
assert(sum(ready_in.data(10:end)-1)==0);


%% ready, valid, flow, last, reset
figure();

subplot(5,1,1);
db=debug_0;
plot(db.signal1.time, db.signal1.data, db.signal2.time, db.signal2.data+1.5, db.signal3.time, db.signal3.data+3, db.signal4.time, db.signal4.data+4.5, db.signal5.time, db.signal5.data+6);
axis([min(db.signal1.time), max(db.signal1.time), -0.25, 7.25]);
title('debug_0');

subplot(5,1,2);
db=debug_1;
plot(db.signal1.time, db.signal1.data, db.signal2.time, db.signal2.data+1.5, db.signal3.time, db.signal3.data+3, db.signal4.time, db.signal4.data+4.5, db.signal5.time, db.signal5.data+6);
axis([min(db.signal1.time), max(db.signal1.time), -0.25, 7.25]);
title('debug_1');

subplot(5,1,3);
db=debug_2;
plot(db.signal1.time, db.signal1.data, db.signal2.time, db.signal2.data+1.5, db.signal3.time, db.signal3.data+3, db.signal4.time, db.signal4.data+4.5, db.signal5.time, db.signal5.data+6);
axis([min(db.signal1.time), max(db.signal1.time), -0.25, 7.25]);
title('debug_2');

subplot(5,1,4);
db=debug_3;
plot(db.signal1.time, db.signal1.data, db.signal2.time, db.signal2.data+1.5, db.signal3.time, db.signal3.data+3, db.signal4.time, db.signal4.data+4.5, db.signal5.time, db.signal5.data+6);
axis([min(db.signal1.time), max(db.signal1.time), -0.25, 7.25]);
title('debug_3');

subplot(5,1,5);
db=debug_4;
plot(db.signal1.time, db.signal1.data, db.signal2.time, db.signal2.data+1.5, db.signal3.time, db.signal3.data+3, db.signal4.time, db.signal4.data+4.5, db.signal5.time, db.signal5.data+6);
axis([min(db.signal1.time), max(db.signal1.time), -0.25, 7.25]);
title('debug_4');





legend('ready', 'valid', 'flow', 'last', 'reset');
suptitle('ready, valid, flow, last, reset');

%% last on flow
figure();

subplot(5,1,1);
db=debug_0;
plot( db.signal4.data(db.signal3.data==1));
axis([1 , numel(db.signal4.data(db.signal3.data==1)), -0.25, 1.25]);
title('debug_0');

subplot(5,1,2);
db=debug_1;
plot( db.signal4.data(db.signal3.data==1));
axis([1 , numel(db.signal4.data(db.signal3.data==1)), -0.25, 1.25]);
title('debug_1');

subplot(5,1,3);
db=debug_2;
plot( db.signal4.data(db.signal3.data==1));
axis([1 , numel(db.signal4.data(db.signal3.data==1)), -0.25, 1.25]);
title('debug_2');

subplot(5,1,4);
db=debug_3;
plot( db.signal4.data(db.signal3.data==1));
axis([1 , numel(db.signal4.data(db.signal3.data==1)), -0.25, 1.25]);
title('debug_3');

subplot(5,1,5);
db=debug_4;
plot( db.signal4.data(db.signal3.data==1));
axis([1 , numel(db.signal4.data(db.signal3.data==1)), -0.25, 1.25]);
title('debug_4');






suptitle('last on sample transfers (=flow)');

%% signals
figure();

subplot(5,1,1);
db=debug_0;
stem(db.signal6.data(db.signal3.data==1));
hold on;
stem(db.signal7.data(db.signal3.data==1),'red');
stem( db.signal4.data(db.signal3.data==1),'gd');
title('debug_0');

subplot(5,1,2);
db=debug_1;
stem(db.signal6.data(db.signal3.data==1));
hold on;
stem(db.signal7.data(db.signal3.data==1),'red');
stem( db.signal4.data(db.signal3.data==1),'gd');
title('debug_1');

subplot(5,1,3);
db=debug_2;
stem(db.signal6.data(db.signal3.data==1));
hold on;
stem(db.signal7.data(db.signal3.data==1),'red');
stem( db.signal4.data(db.signal3.data==1),'gd');
title('debug_2');

subplot(5,1,4);
db=debug_3;
stem(db.signal6.data(db.signal3.data==1));
hold on;
stem(db.signal7.data(db.signal3.data==1),'red');
stem( db.signal4.data(db.signal3.data==1),'gd');
title('debug_3');

subplot(5,1,5);
db=debug_4;
stem(db.signal6.data(db.signal3.data==1));
hold on;
stem(db.signal7.data(db.signal3.data==1),'red');
stem( db.signal4.data(db.signal3.data==1),'gd');
title('debug_4');







legend('real', 'imag');
suptitle('signals');


%% spec ausgangssignal

figure()

db=debug_4;

time_sig=db.signal6.data(db.signal3.data==1)+1i*db.signal7.data(db.signal3.data==1);
spec=20*log10(abs(fftshift(fft(time_sig(500:end)))));

plot(spec);

save('output_from_syntheses','time_sig');












