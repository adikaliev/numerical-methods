clc
T = [0:100:600] ;
Y = [ 200 190 185 178 170 160 150] ;
% loop to find first differences
for i = 1 : 6
diff1(i) = (Y(i+1) - Y(i))/100; % store the first differences in diff1
end
% loop to find the second differences
for i = 1 : 5
diff2(i) = (diff1(i+1) - diff1(i))/100; % store the second differences in diff2
end
diff1;
diff2;
% Y = a + bT
A = [numel(T) sum(T);
    sum(T) sum(T.^2)];
b = [sum(Y) sum(T.*Y)]';

x = A\b;

for i = 1 : 7
   LSq(i) = x(1) + x(2)*T(i);
end

polyfit(T, Y, 1);

% 2nd

