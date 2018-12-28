function [root] = NewtonRaphson(estimate, eps, limit)
    x = estimate;
    count = 0;
    differ = abs(eps)*2;
    while differ > eps && count < limit
        if fdash(x) ~= 0
            root = x - f(x)/fdash(x);
            differ = abs(root-x);
            x = root;
            count = count + 1;
        else
            % Print a diagnostic message to show why the procedure has failed
            s = sprintf('Method fails, zero derivative at %8.4f ', x);
            disp(s);
            break;
        end
    end