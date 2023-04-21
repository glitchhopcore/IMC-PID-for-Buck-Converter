clc;
clear;
close all;
x = zeros(100, 1);
y = zeros(100, 1);
k = 0;
for i= 0.01:0.01:1
    k = k + 1;
    dc = i;
    sim('buckconverter.slx', 0.5);
    x(k) = inputDATA;
    y(k) = mean(outputDATA(length(outputDATA) - 10: length(outputDATA)));
end