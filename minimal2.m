%a
v=0;
subplot(2,2,1);
a=0;
b=1;
t=['x^v*ln(x)'];
x=linspace(a,b,200);
for i=1:4
    v=2*i;
    f=@(x) (x.^v).*log(x);
plot(x,f(x));
hold on;
end
grid on;
xlabel('x'); ylabel('y'); title(t);
xr=ginput(2);
for i=1:4
     f=@(x) (x.^v).*log(x);
    v=2*i;
[x_m,y_m]=fminbnd(f,xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
end
%b
v=0;
subplot(2,2,2);
a=0;
b=1;
t=['x^c*e^(-v*x)'];
x=linspace(a,b,200);
for i=1:4
    v=2*i;
    c=3*i;
    f=@(x) (x.^c).*exp(-v.*x);
plot(x,f(x));
hold on;
end
grid on;
xlabel('x'); ylabel('y'); title(t);
xr=ginput(2);
for i=1:4
     f=@(x) (x.^c).*exp(-v.*x);
    v=2*i;
    c=3*i;
[x_m,y_m]=fminbnd(f,xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
end
%ñ
v=0;
subplot(2,2,3);
a=0;
b=1;
t=['x^c*(1-x)^v'];
x=linspace(a,b,200);
for i=1:4
    v=2*i;
    c=3*i;
    f=@(x) (x.^c).*(1.-x).^v;
plot(x,f(x));
hold on;
end
grid on;
xlabel('x'); ylabel('y'); title(t);
xr=ginput(2);
for i=1:4
     f=@(x)  (x.^c).*(1.-x).^v;
    v=2*i;
    c=3*i;
[x_m,y_m]=fminbnd(f,xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
end

