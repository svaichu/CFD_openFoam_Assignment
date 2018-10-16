x = zeros(6400,3);

x(:, 1) = x_upwind; %replace with your scheme's result
x(:, 2) = x_sfcd;
x(:, 3) = x_cubic;

for j = 1:3	
	y1 = zeros(80,80);
	a = 1;
	s = 1;
	for i = 1:1:6400
	    y1(a,s) = x(i,j);
	    if mod(i,80) == 0
		s = s+1;
		a=1;
	    else
		a=a+1;
	    end
	end
	a = 1;
	for i = 80:-1:1
	    y(a) = y1(a,i);
	    a = a+1;
	end
	X_axis = 1:1:80;
	Y_axis = y;
	plot(X_axis, Y_axis)
    hold on
end
