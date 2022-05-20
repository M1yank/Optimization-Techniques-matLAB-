format short
clc
clear all
f=@(x) x.^2

a=-5
b=15
n=7

F(1)=1;
F(2)=1;

for i=3:n+1
    F(i)=F(i-1)+F(i-2);
end
F

table=[]

for k=1:n
    ratio = F(n+1-k)./F(n+2-k); 
    x2= a + (ratio).*(b-a);
    x1= a + b - x2;
    fx1=f(x1);
    fx2=f(x2);
    table=[table; a b x1 x2 fx1 fx2];
    
    if(fx1<fx2)
        b=x2;
    else
        a=x1;
    end
end

opt=(a+b)/2
optval=f(opt)
disp(table)