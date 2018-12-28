function[defintegral] = Simpson(x,f,n)
    % Assume function values for the range of integration are stored in
% equally spaced values x(i), y(i) i=1..n where is an odd number
% if n is even print an error message and return to the calling program
if 2 * floor( n/2 ) == n
    disp('Error:number of grid points must be odd');
    return;
else
    odd = 0;
    even = 0;
    for ii = 1:floor(n/2)
        odd = odd+f(2*ii);
    end
    
    for ii = 1:floor(n/2)-1
        even = even+f(2*ii+1);
    end
    
    defintegral = (x(2)-x(1))/3 * (f(1)+f(n)+4*odd+2*even);
end

end



