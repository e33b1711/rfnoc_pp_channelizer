clear all;
close all;

debugging=0;
sim_len=1e5;

synthese_params();



data_r_in=timeseries;
data_i_in=timeseries;
last_in=timeseries;
valid_in=timeseries;
ready_out=timeseries;
reset_in=timeseries;


data_r_in.time=(0:sim_len-1);
data_i_in.time=(0:sim_len-1);
last_in.time=(0:sim_len-1);
valid_in.time=(0:sim_len-1);
ready_out.time=(0:sim_len-1);
reset_in.time=(0:sim_len-1);

set_stb=timeseries;
set_addr=timeseries;
set_data=timeseries;

set_stb.time=(0:sim_len-1);
set_addr.time=(0:sim_len-1);
set_data.time=(0:sim_len-1);

%%

set_stb.data=zeros(sim_len,1);
set_addr.data=zeros(sim_len,1);
set_data.data=zeros(sim_len,1);



%%

reset_in.data=zeros(sim_len,1);


%%
valid=zeros(sim_len,1);
counter=ones(sim_len,1);


for i=10:(sim_len-500)
    integer=randi(100,1,1);
    if valid(i-1)==1
        if integer>3
            valid(i)=1;
            counter(i+1)=counter(i)+1;
        else
            valid(i)=0;
            counter(i+1)=counter(i);
        end
    else
        if integer>93
            valid(i)=1;
            counter(i+1)=counter(i)+1;
        else
            valid(i)=0;
            counter(i+1)=counter(i);
        end
    end
end

input_signal;
data_r=real(input_tdm(counter));
data_i=imag(input_tdm(counter));


%%
packet_size=16;
last=zeros(sim_len,1);

last=(mod(counter,packet_size)==0);

% stem(valid)
% hold on
% stem(last*(-1))

%%
ready=ones(sim_len,1);

for i=1:4
integer=randi(sim_len-500,1,1);
ready(integer+(1:16))=zeros(16,1);
end


%%
data_r_in.data=data_r;
data_i_in.data=data_i;
last_in.data=last;
valid_in.data=valid;
ready_out.data=ready;

% clear data_q;
% clear data_i;
% clear last;
% clear valid;
% clear ready;
% clear i;
% clear integer;
