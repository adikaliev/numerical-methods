% Ex 1.2: 3

credit = 1000; 
apr = 17.5; % in percents
interest_due = credit * apr / 100 /12; % per month

% ex 1.3: 

a = 12;
b = 5;
c = sqrt(a^2+b^2);

% 3x^2 - 13x + 4 = 0

a = 3;
b = -13;
c = 4;
x1 = (-b + sqrt(b^2 - 4*a*c))/(2*a);
x2 = (-b - sqrt(b^2 - 4*a*c))/(2*a);
answer = roots([a b c]);

a = 5;
b = 7;
alpha = pi/6;
c = sqrt(a^2 + b^2 - 2*a*b*cos(alpha));

% Ex 1.4

x = [4 10 -1 0];
y = [-5.3 -2 0.9 1]';
B = [1 7.3 -5.6 2;
    1.4 8 -3 0;
    -2 6.3 1 -2];

a = B(1,2);
b = B(3,4);

v1 = B(:, 2);
v2 = B(1, :);

A = [2 3 -1;
    4 8 -3;
    -2 3 1];
w = [5 3 2]';
A*w;

v = [3 4 5 -1];
size_of_v = sqrt(v*v');
norm(v);

A = [2 1;
    3 -2];
a = [5 4]';
x = A\a;

B = [3 2 -1;
    2 -2 3;
    1 -1 -1];
b = [3 9 2]';
x = B\b;

% Ex 1.6

add_numbers = 0;
for i = 2:2:10
    add_numbers = add_numbers + i;
end

b = [2.5 5 9 -11];
eltsum = 0;
for i = 1:b
    eltsum = eltsum + b(i);
end

x(1) = 1;
for n = 1:6
    x(n+1) = x(n)/2 + 1/x(n);
end

x = 1;
for i = 1:6
    x = x/2 + 1/x;
end

f(1) = 0;
f(2) = 1;
for n = 2:20
    f(n+1) = f(n) + f(n-1);
    F(n-1) = f(n+1)/f(n);
end
(1+sqrt(5))/2; % golden ration

% Ex 1.7

