%b
a=0;
b=2*pi/3;
a1= 1; b1=2;
f=@(x) 1./(a1.*cos(x)+b1.*sin(x));
subplot(2,2,1);
var1=num2str(a1);
var2=num2str(b1);
t=['1/(a1*cos(x)+b1*sin(x)), \a1= ',var1,' \b1= ',var2];
x=linspace(a,b,200);
plot(x,f(x));
grid on;
xlabel('x'); ylabel('y'); title(t);
xr=ginput(2);
[x_m,y_m]=fminbnd(f,xr(1,1),xr(2,1));
hold on;
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
%c
f=@(x) 2-abs(x).*exp(-abs(x-1));
subplot(2,2,2);
a=0;
b=4;
t=['2-abs(x)*exp(-abs(x-1)) '];
x=linspace(a,b,200);
plot(x,f(x));
grid on;
xlabel('x'); ylabel('y'); title(t);
xr=ginput(2);
[x_m,y_m]=fminbnd(f,xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
%d
f=@(x,i)(cos(i.*x)-sin(i.*x)).^2;
m=3;
subplot(2,2,3);
a=0;
b=2*pi;
t=['sum(cos(k.*x)-sin(k.*x)^2)'];
x=linspace(a,b,200);
z=0;
for i=1:m
    z=z+f(x,i);
end
plot(x,z);
s=@(x) z(round(x/(b-a)*200));
grid on;
xlabel('x'); ylabel('y'); title(t);
xr=ginput(2);
[x_m,y_m]=fminbnd(s,xr(1,1),xr(2,1));
hold on;
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
%e
d=[3,5,2,-1];
f=@(x)(d(i)-sin(i.*x)).^2;
m=3;
subplot(2,2,4);
a=0;
b=2*pi;
t=['sum((d(i)-sin(i*x))^2)'];
x=linspace(a,b,200);
z=0;
for i=1:m
    f=@(x)(d(i)-sin(i.*x)).^2;
    z=z+f(x);
end
plot(x,z);
s=@(x) z(round(x/(b-a)*200));
grid on;
xlabel('x'); ylabel('y'); title(t);
xr=ginput(2);
[x_m,y_m]=fminbnd(s,xr(1,1),xr(2,1));
hold on;
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
