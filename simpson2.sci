function y=f(x)
    y=x^2
endfunction
function i=simpson2(a,b,n)
    h=(b-a)/n;
    x=a:h:b;
    y=f(x);
    i=y(1);
    for i=2:n
        if modulo(i,3)==1
            i=i+2*y(i)
        else
            i=i+3*y(i)
        end
    end
    i=3*h/*(i+y(n+1))
endfunction
