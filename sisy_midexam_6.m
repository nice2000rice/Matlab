% (a)
% n=-10:1:10;
% 
% x1n=(0.5).^n.*stepfun(n,0);
% x2n=stepfun(n,-3);
% y1n=conv(x1n,x2n,"same")
% 
% subplot(4,1,1); stem(n,x1n);
% subplot(4,1,2); stem(n,x2n,"-r");
% subplot(4,1,3); stem(n,y1n,"-b");

% (b)
% n=-10:1:10;
% 
% x2n=stepfun(n,-3);
% x3n=(stepfun(n,0)-stepfun(n,1))-(stepfun(n,1)-stepfun(n,2));
% 
% y2n=conv(x2n,x3n,"same");
% subplot(3,1,1); stem(n,x2n);
% subplot(3,1,2); stem(n,x3n,"-r");
% subplot(3,1,3); stem(n,y2n,"-b");
