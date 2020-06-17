
A=[0 1 0;0 0 1;-35 -27 -9];
B=[0;0;1];
C=[1 0 0 ;0 1 0 ;0 0 1 ];
D=[0;0;0;];
Q=[0 0 0;0 0 0;0 0 0];
R=1;
K=dlqr(A,B,Q,R)
Ac=[(A-B*K)];
Bc=[B];
Cc=[C];
Dc=[D];
t=0:0.005:200;
U=ones(size(t));
x0=[0.05 0.08 0];
[Y,X]=lsim(Ac,Bc,Cc,Dc,U,t,x0);
plot(t,Y);
xlabel('t');
ylabel('Y');
u=-K*X';



