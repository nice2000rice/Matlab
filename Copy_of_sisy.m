% clc
% syms k
% t=-5:0.01:5;
% u=1:1:1001;
% for c=(1:1:1001)
%     if(c>=600)&&(c<=700)
%         x(1,u==c)=c-500;
% 
%     elseif(c>700)&&(c<=800)
%         x(1,u==c)=-c+800
%     else
%         x(1,u==c)=0;
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

clc
syms k
t=-5:0.01:5;
for c=1:length(t)
    if(c>=find(t==0))&&(c<=find(t==1))
        x(1,c)=c-find(t==-1);
        
    elseif(c>find(t==1))&&(c<=find(t==2))
        x(1,c)=-c+find(t==2)
    else
        x(1,c)=0;
    end

    if (c==find(t==-1))
        h(1,c)=1;
    elseif(c==find(t==0))
        h(1,c)=2;
    else
        h(1,c)=0;

    end
end

y=conv(x,h,'same');

subplot(3,1,1); plot(t,x);

subplot(3,1,2); plot(t,h);

subplot(3,1,3); plot(t,y);



