function[result] = largeEig(A, ee) % Find the largest (in abs value) eigenvalue
    x = A(1,:)'; %initial eigenvector - first row
    xp = 0; %previous eigenvector
    n=0; % counter
    
    while abs(norm(x-xp)) > ee 
        B = A*x;
        [maxB, index] = max(abs(B(:)));
        maxB = maxB * sign(B(index)); % eigenvalue
        xp = x;
        x = B/maxB; % corresponding eigenvector
        n=n+1;
    end
result = maxB; 
end