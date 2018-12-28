% 1st

low = 1; % initial lower bound
high = 2; % initial upper bound
while high - low > 0.00005;
    mid = (high + low)/2; % mid point of current bounds
    if sq2(low) * sq2(mid) < 0 % solution lies to the left
        high = mid;
    else % solution lies to the right
        low = mid;
    end;
    s = sprintf('solution lies in [%8.4f,%8.4f]', low, high);
    disp(s);
end;

% 2nd

% construct 50 x-points equally spaced between 0 and pi/2
x = linspace(0, pi/2, 50);
% use element by element multiplication to form x sin(x)
y = x.*sin(x) - cos(x);
plot(x,y);

low = 0; % initial lower bound
high = pi/2; % initial upper bound
while high - low > 0.00005;
    mid = (high + low)/2; % mid point of current bounds
    if fsincos(low) * fsincos(mid) < 0 % solution lies to the left
        high = mid;
    else % solution lies to the right
        low = mid;
    end;
    s = sprintf('solution lies in [%8.4f,%8.4f]', low, high);
    disp(s);
end;

solution = fzero(@fsincos, 1.0);

% 3rd

low = 1; % initial lower bound
high = 2; % initial upper bound
while high - low > 0.00005;
%     xstar = high - sq2(high)*(low-high)/(sq2(low) - sq2(high)); % xstar point of current bounds
    xstar =(sq2(low)*high - low*sq2(high)) /(sq2(low) - sq2(high)); % xstar point of current bounds
    if sq2(low) * sq2(xstar) < 0 % solution lies to the left
        high = xstar;
    else % solution lies to the right
        low = xstar;
    end;
    s = sprintf('solution lies in [%8.4f,%8.4f]', low, high);
    disp(s);
end;


% 4th

% Secant method for solving f(x)=0
% Assume estimates a and b, the required accuracy eps and function f have
% been defined
f = @sq2;
eps = 0.00005;
a = -1;
b = -2;
xstar = b - f(b) * (a-b)/(f(a)-f(b))
while abs(f(xstar)) > eps
    xstar = b - f(b) * (a-b)/(f(a)-f(b));
    a = b;
    b = xstar;
end;
disp(xstar);


% 5th

f = @tasker;
eps = 0.00005;
a = -1;
b = -2;
xstar = b - f(b) * (a-b)/(f(a)-f(b))
while abs(f(xstar)) > eps
    xstar = b - f(b) * (a-b)/(f(a)-f(b));
    a = b;
    b = xstar;
end;

disp(xstar);

% construct 50 x-points equally spaced between 0 and pi/2
x = linspace(-1.5, 2.5, 50);
% use element by element multiplication to form x sin(x)
y = 4*x.^3-8*x.^2+3*x-10;
plot(x,y);

roots([ 4 -8 3 -10]);

% 6th Newton Raphson

a = 1;
f = @sq2;
ff = 2*a;
eps = 0.00005;

while abs(f(a)) > eps
   a = a - f(a) / (2*a); 
end

% general form - not working

x = 8;
p = 3;
a = x/2;
eps = 0.00005;

while abs(a^p - x) > eps
    a = a - a^p / (p*a^(p-1))
end    


% 7th

