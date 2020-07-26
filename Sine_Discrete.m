function [ output_args ] = Untitled( input_args )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
clc;
f=2000;
T=1/f;
tmin=0;
tmax=3*T;
dt=T/100;
t=(tmin:dt:tmax);
x=sin(2*3.14*f*t);
plot(t,x);
xlabel('time');
ylabel('x(t)');
TITLE('SINE FUNCTION');
dt1=1/10000;
dt2=1/3000;
t1=tmin:dt1:tmax;
t2=tmin:dt2:tmax;
x1=sin(2*3.14*f*t1);
x2=sin(2*3.14*f*t2);
subplot(211);
plot(t1,x1,'r');
xlabel('time');
ylabel('x(t)');
stem(t1,x1,'r');
hold on;
plot(t1,x1,'b');
TITLE('Sampled Sine f=10000');
subplot(212);
plot(t2,x2,'r');
xlabel('time');
ylabel('x(t)');
stem(t2,x2,'r');
hold on;
plot(t2,x2,'b');
TITLE('Samples Sine f=3000');
end