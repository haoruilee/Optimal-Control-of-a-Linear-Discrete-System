function y = fitness(u)
[rows,cols]=size(u);
x= [0.05; 0.08; 0]
A=[100 0 0;0 100 0;0 0 100];
B=[2;1;1];
sum=0;
L = 2
for k=1:1:cols
    x=A*x+B*u(k);
end
for k=2:1:cols
    sum=sum+u(k) * u(k);
end
y= sum + L * (x'*x);
end