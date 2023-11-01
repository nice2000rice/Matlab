t=-5:0.01:5;
t_idx=find(t==0)
for c=1:length(t)
    if(c>=find(t==0)&&c<=find(t==1))
        x(1,c)=(c-find(t==0))/100;
    elseif(c>find(t==1)&&c<=find(t==2))
        x(1,c)=(-c+find(t==2))/100;
    else
        x(1,c)=0;

    end
end

h=zeros(1,1001)
h(1,501)=1;
h(1,601)=-1;

y=conv(x,h,"same");

subplot(3,1,1); plot(t,x);

subplot(3,1,2); plot(t,h);

subplot(3,1,3); plot(t,y);
