clc
t=-5:0.01:5;
u=1:1:1001
for c=(1:1:1001)
    if(c>=600)&&(c<=700)
        x(1,find(u==c))=c-500;
        find(u==c)
    elseif(c>700)&&(c<=800)
        x(1,find(u==c))=-c+800;
    else
        x(1,find(u==c))=0;
    end

    if (c==400)
        h(1,find(u==c))=1;
    elseif(c==500)
        h(1,find(u==c))=2;
    else
        h(1,find(u==c))=0;

    end
end

y=conv(x,h,'same');

subplot(3,1,1); plot(t,x);

subplot(3,1,2); plot(t,h);

subplot(3,1,3); plot(t,y);

