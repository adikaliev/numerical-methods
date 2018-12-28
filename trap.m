function[defintegral] = trap(x,f,n)
    A = sum(f)-(f(1)+f(n))/2;
    defintegral=A*(x(2)-x(1));
end