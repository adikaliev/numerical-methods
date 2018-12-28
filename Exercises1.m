% 1st
A = [ 3 2 4; 4 3 6; 6 5 9 ];
b = [ 250 350 530 ]';
x = A\b;

% 2nd task
A = [2 -1 -4;
    1 1 2;
    6 3 -1];
b = [5 0 -2.5]';

U = A;
r = b;

%{
for row = 1 : 2;
    for i = row + 1 : 3;
        pivot = U(i, row)/U(row, row)
        U(i, :) = U (i, :) - pivot * U(row, :)
        r(i) = r(i) - pivot * r(row)
    end
end
%}

% Allow partial pivoting and deal with 0 pivots

s = size(U, 1);

for row = 1 : s - 1;
    for i = row + 1 : s;
        pivot = U(i, row)/U(row, row);
        U(i, :) = U (i, :) - pivot * U(row, :);
        r(i) = r(i) - pivot * r(row);
    end
end

%{
x(3) = r(3)/U(3, 3);
for i = 2 : -1 : 1
sum = 0;
for j = i+1 : 3 ;
sum = sum + U(i, j)*x(j);
end;
x(i) = (r(i) - sum)/U (i, i);
end;
x
%}

x(s) = r(s)/U(s, s);
for i = s - 1 : - 1 : 1
    sum = 0;
    for j = i+1 : s ;
        sum = sum + U(i, j)*x(j);
    end;
    x(i) = (r(i) - sum)/U (i, i);
end;
x;

A*x;

% 3rd

A = [1 2 3 1;
    2 4 -1 1;
    1 3 -1 2;
    -3 -1 -3 2];
b = [8 1 1 -7]';

[L U] = lu(A);

y = L\b;
x = U\y;
A * x;

[L U P] = lu(A);
y = L\(P*b);
x = U\y;
A * x;

% 4th
format long

A = [-0.621 0.0956 -0.0445 0.8747;
    0.4328 -0.0624 8.8101 -1.0393;
    -.0004 -0.0621 5.3852 -0.3897;
    3.6066 0.6536 0.846 -0.2];
b = [5.3814 -1.0393 -0.3897 -0.0005]';
B = single(A);

x = A\b;
x1 = B\b;
format short

% 5th

A = [4 1 -1 2;
    1 3 -2 -1;
    -1 -2 1 6;
    2 -1 6 1];
x = [0 1 1 0]';
[L U] = lu(A);
x'*A*x;

% 6th

A = [2 3 4;
    1 -2 3;
    3 1 7];
b = [2 5 8]';

[L U] = lu(A);
% LUx = b
Ux = L\b;
x = U\Ux;


% 7th 

A = [0.9740 0.79 0.311;
    -0.631 0.47 0.251;
    0.455 0.975 0.425];

B = [0.9736 0.79 0.311;
    -0.631 0.47 0.2506;
    0.455 0.9746 0.425];

b = [1 0.5 0.75]';

x = A\b;
y = B\b;

% 8th

x = ones(20, 1);
H = hilb(20);

b = H*x;
x = H\b;

%10

A = [1 -1/2 0 0 0;
    -1/2 1 -1/2 0 0;
    0 -1/2 1 -1/2 0;
    0 0 -1/2 1 -1/2;
    0 0 0 -1/2 1;]
C = [0 0 0 0 1/2]';

