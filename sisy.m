% clc
% t=-5:0.01:5;
% u=1:1:1001
% for c=(1:1:1001)
%     if(c>=600)&&(c<=700)
%         x(1,find(u==c))=c-500;
%         find(u==c)
%     elseif(c>700)&&(c<=800)
%         x(1,find(u==c))=-c+800;
%     else
%         x(1,find(u==c))=0;
%     end
% 
%     if (c==400)
%         h(1,find(u==c))=1;
%     elseif(c==500)
%         h(1,find(u==c))=2;
%     else
%         h(1,find(u==c))=0;
% 
%     end
% end
% 
% y=conv(x,h,'same');
% 
% subplot(3,1,1); plot(t,x);
% 
% subplot(3,1,2); plot(t,h);
% 
% subplot(3,1,3); plot(t,y);
% 

%Discrete-time convolution

%u_t=u[n]
dt=1;
n=-6:dt:6;
if find(n<0)<0
    u_t(n<0)=0;
elseif find(n>=0)>=0
    u_t(n>=0)=1;
end

%u_t1=u[n-1]
if find(n<1)<1
    u_t1(n<1)=0;
elseif find(n>=1)>=1
    u_t1(n>=1)=1;
end

%u_t_1=u[n+1]
if find(n<-1)<-1
    u_t_1(n<-1)=0;
elseif find(n>=1)>=1
    u_t_1(n>=-1)=1;
end

%u_t2=u[n-2]
if find(n<2)<2
    u_t2(n<2)=0;
elseif find(n>=2)>=2
    u_t2(n>=2)=1;
end

x_n=u_t_1-u_t1;
h_n=(-n+2).*(u_t-u_t2);
flip_h_n=flip(h_n);
flip_h_n0=circshift(flip_h_n,find(n==0));
for c=1:length(n)
    y_t(1,c)=sum(x_n.*circshift(flip_h_n0,c-1))*dt;
end
subplot(3,1,1); plot(n,x_n);
axis([-6 6 0 5]);
grid;
xlabel('Time(t)');
ylabel('x(t)');
title('Input Signal')
subplot(3,1,2); plot(n,h_n);
axis([-6 6 0 5]);
grid;
xlabel('Time(t)');
ylabel('h(t)');
title('Impulse Response Signal')
subplot(3,1,3); plot(n,y_t);
axis([-6 6 0 5]);
grid;
xlabel('Time(t)');
ylabel('y(t)');
title('Output Signal')
