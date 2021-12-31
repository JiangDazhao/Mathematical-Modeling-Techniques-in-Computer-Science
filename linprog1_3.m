%f'x 默认x都是列向量，约束条件中也是
clc,clear
f=[-2;-3;5];
A=[-2,5,-1;1,3,1];
b=[-10;12];
Aeq=[1,1,1];
beq=7;
lb=zeros(3,1);
[x,fval]=linprog(f,A,b,Aeq,beq,lb);
x,fval=-fval

