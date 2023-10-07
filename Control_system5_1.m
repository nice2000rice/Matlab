% Example 3.1 수레

k1 = 150; %N/m
k2 = 700; %N/m
b1 = 15; %Ns/m
b2 = 30; %Ns/m
M1 = 5; %kg
M2 = 20; %kg

A=[0 0 1 0;
   0 0 0 1;
   -k1/M1 k1/M1 -b1/M1 b1/M1;
   k1/M2 -(k1+k2)/M2 b1/M2 -(b1+b2)/M2];
B=[0 0 1/M1 0]';
C=[1 0 0 0]; % y(t) = p(t)
% C = [0 1 0 0]; % y(t) = q(t)
D= 0;

sys=ss(A, B, C, D)
x0=[0.1 0 0 0]
initial(sys,x0,5)