function [U, r] = uppering(A, b)
    U = A;
    r = b;
    [sr sc] = size(U) % for large matrices

    for row = 1:sr-1
%         row interchange if leading coeff == 0
        leader = U(row, row);
        rowrow = row;
        while leader == 0
            rowrow = rowrow + 1;
            leader = U(rowrow, row);

            if leader ~= 0                 % row interchange is here
                temp = U(row, :);
                U(row, :) = U(rowrow, :);
                U(rowrow, :) = temp;
            end
        end    
            
            
        for i = row + 1:sr
            pivot = U(i, row)/U(row, row);
            U(i, :) = U(i, :) - pivot * U(row, :);
            r(i) = r(i) - pivot * r(row);
        end
    end
    
end

% add