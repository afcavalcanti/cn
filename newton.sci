function y=f(x)
    y=x^2+log(x)
endfunction
function y=df(x)
    y=2*x+1/x
endfunction
function [x,it]=newton(x0,e,N)
    it=0;
    x=x0;
    erro=1;
    while erro>e & it<N
        xa=x;
        x=x-f(x)/df(x);
        erro=abs((x-xa)/x);
        it=it+1;
    end
endfunction
