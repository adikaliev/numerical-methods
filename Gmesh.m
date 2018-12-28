% function[points] = Gmesh(n)
%    
%     
%     p(1) = {[1]};
% p(2) ={[1 0]};
%     
%     for i = 1:n-2
%         p(i + 2) = {((2 * i + 1)/(i + 1)) * [p{i + 1} 0] - (i/(i + 1)) * [0 0 p{i}]};
%     end
%     points = roots(p(n));
% end


function [points] = Gmesh(n)
    p(1) = {[1]};
    p(2) = {[1 0]};
    for i=1:n - 2;
        p(i+2) = { ((2*i+1)/(i+1))* [p{i+1} 0] - (i/(i+1))*[0 0 p{i}]};
    end;
points = roots(p{n});