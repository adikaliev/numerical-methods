clc
% 1st
A = [2 1 -1;
    4 -3 8;
    1 0 2];
p = poly(A);
ev = roots(p);

% 2nd
B = A - ev(2)*eye(3);
[L, U] = lu(B);
U;
U(3,3)=1;
x = U\[0 0 1]';

% 3rd
ee = 0.000001;

% 4th

A = [4 -1 2 1;
    1 1 6 3;
    0 0 -3 4;
    0 0 0 7];
while abs(A(2, 1)) > 1.0e-6;
    % solve -A(1, 1)?s + A(2, 1)?c = 0; s? 2 + c?2 = 1;
    s = 1/sqrt(1 + (A(1, 1)/A(2, 1))^2);
    c = s *( A(1, 1)/A(2, 1));
    Q = [ c s 0 0; -s c 0 0; 0 0 1 0; 0 0 0 1];
    A = Q*A*Q'; % inverse Q = Q'
end;

roots(poly(A));
[Q R] = qr(A);



%
A = [3 5 -4 4;
    -1 -3 1 -4;
    4 -2 3 5;
    3 -5 5 4];

[m,n] = size(A)
jjj =2;
for col = 1:n-1
    
   for row = m:-1:jjj
       while abs(A(row, col)) > 1.0e-6
            % solve -A(1, 1)?s + A(2, 1)?c = 0; s? 2 + c?2 = 1;
            s = 1/sqrt(1 + (A(row-1, row-1)/A(row, row-1))^2);
            c = s *(A(row-1, row-1)/A(row, row-1));

            Q = eye(m);
            Q(row-1, row-1) = c;
            Q(row, row) = c;
            Q(row-1, row) = s;
            Q(row, row-1) = -s;
            
            A = Q*A*Q'; % inverse Q = Q'
       end
   end
   jjj = jjj+1;
end