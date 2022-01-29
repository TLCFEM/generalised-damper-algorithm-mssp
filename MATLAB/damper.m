clear all;clc;close all;

global number;
number = 0;
opts = odeset('RelTol',1e-11,'AbsTol',1e-11,'Stats','on');

[T,Y]=ode45(@get_ds,0:0.01:20,0,opts);
% [T,Y]=ode15s(@get_ds,0:0.01:20,0,opts);

U=get_u(T);
figure;
plot(U,Y)
% figure;
% plot(get_v(T),Y)

number/(numel(T)-1)







