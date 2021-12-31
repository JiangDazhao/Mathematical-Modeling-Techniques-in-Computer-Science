clc,clear
rng('shuffle')
p0=0;n=10^6;tic
for i=1:n
    x=randi([0,99],1,5);
    [f,g]=mengte(x);
    if all(g<=0)
        if p0<f
            x0=x;p0=f;
        end
    end
end
x0,p0,toc


function[f,g]=mengte(x);
f=x(1)^2+x(2)^2+3*x(3)^2+4*x(4)^2+2*x(5)^2-8*x(1)-2*x(2)-3*x(3)-x(4)-2*x(5);
g=[sum(x)-400
    x(1)+2*x(2)+2*x(3)+x(4)+6*x(5)-800
    2*x(1)+x(2)+6*x(3)-200
    x(3)+x(4)+5*x(5)-200];
end
