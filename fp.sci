function y = f(x)
    y = x^2 + log (x)
    endfunction
function [raiz,cont]= fp(a,b,p,N)
    x=a;
    cont = 0;
    e = 1
    while cont < N & e > p 
        xa = x;
        x = a - (f(a)*(b-a)/(f(b)-f(a)))
        if f(x)*f(a) < 0 then
            b = x
        else 
            a = x
        end
        cont = cont + 1;
        e = (abs(x - xa)/abs(x))
    end
    raiz = x
    
endfunction
