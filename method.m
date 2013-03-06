function [min] = method( f,a,b,delta, eps)
a0= a;
b0= b;
i =1;
while((b-a)/2>eps)
	x1 = (a+b-delta)/2;
	x2 = (a+b + delta)/2;
	z = feval(f,x1);
	n = feval (f,x2);
	if(z < n)
		b = x2;
		
	end
	if(z > n)
			a=x1;
	end
	d(i) = (a+b)/2;
	i++;
end
min = (a+b)/2;
feval(f,min);

x = a0:0.01:b0;
y = feval(f,x);
s = 'm';
s1 = 'ro';
x1 = d
y1 = 0 *feval(f,x1)
plot(x,y,s,x1,y1,s1);
grid;

