function y=f(x)
    y=x^2+log(x)
endfunction
function [x,it]=bissecao(a,b,e,N)
    it=0;
    erro=1;
    x=a;
    while erro>e & it<N
        xa = x;
        x=(a+b)/2;
        if f(x)*f(a)<0
            b=x;
        else 
            a=x;
        end
        it=it+1;
        erro=(abs((x-xa)/(x)));
    end
endfunction
