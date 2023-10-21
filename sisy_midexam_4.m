t=-5:0.01:5
for c=1:1:1001
    if(c>=501&&c<=601)
        x(1,c)=(c-501)/100;
    elseif(c>601&&c<=701)
        x(1,c)=(-c+701)/100;
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
