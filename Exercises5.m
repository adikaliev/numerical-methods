clc
% 1st

x = linspace( 0, 1, 4 );
y = x;
integ = trap( x, y, 4 )

% 2nd
for ii=2:15
    n=ii;
    x = linspace( 0, 1, n );
    y=x.^2;
    integ = trap( x, y, n );
    e = abs(1/3-integ);
    M(1,ii) = ii;
    M(2,ii) = integ;
    M(3,ii) = e;
end

n=6;
x = linspace( 0, 1, n );
y=x.^2;
integ = Simpson( x, y, n )


% 4th

for ii=2:15
    n=ii;
    x = linspace( 0, 1, n );
    y = 1 ./ sqrt(1 + x.*x);
    integ = trap( x, y, n );
    e = abs(pi/4-integ);
    M(1,ii) = ii;
    M(2,ii) = integ;
    M(3,ii) = e;
end

for ii=3:2:15
    n=ii;
    x = linspace( 0, 1, n );
    y = 1 ./ sqrt(1 + x.*x);
    integ = Simpson( x, y, n );
    e = abs(pi/4-integ);
    M(1,ii) = ii;
    M(2,ii) = integ;
    M(3,ii) = e;
end
M
trapz(x, y)
quad(@f,0,1)


% 5 th

Gmesh(3)