A = [2 -1 -4;
    1 1 2;
    6 3 -1];
b = [5 0 -2.5]';

U = A;
r = b;

for row = 1:2
    for i = row + 1:3
        pivot = U(i, row)/U(row, row);
        U(i, :) = U(i, :) - pivot * U(row, :);
        r(i) = r(i) - pivot * r(row);
    end
end

