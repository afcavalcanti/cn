function y=f(x)
    y=x^2
endfunction
function i=trap(a,b,n)
    h=(b-a)/n;
    x=a:h:b;
    y=f(x);
    i=y(1);
    for i=2:n
            i=i+2*y(i)
        end
    end
    i=h/2*(i+y(n+1))
endfunction
