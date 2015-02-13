x = csvread('price.csv');
d = csvread('trade.csv');
%plot(x);
%plot(d);
T = size(x, 1);

wk = 0;
betak = 0;

while 