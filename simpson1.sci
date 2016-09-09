function y=f(x)
    y=x^2
endfunction
function i=simpson1(a,b,n)
    h=(b-a)/n;
    x=a:h:b;
    y=f(x);
    i=y(1);
    for i=2:n
        if modulo(i,2)==0
            i=i+4*y(i)
        else
            i=i+2*y(i)
        end
    end
    i=h/3*(i+y(n+1))
endfunction
