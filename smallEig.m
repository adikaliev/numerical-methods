function[result] = smallEig(A, ee) % Find the smallest (in abs value) eigenvalue
    x = A(1,:)'; %initial eigenvector - first row
    xp = 0; %previous eigenvector
    n=0; % counter
    
    while abs(norm(x-xp))>ee
        %finding Largest
        [maxB, index] = max(abs(x(:)));
        maxB = maxB * sign(x(index)); % Largest eigenvalue
        
        xp = x;
        x = A\(x/maxB); 
        n=n+1;
    end
result = 1/maxB;
end
% How to use LU decomposition?