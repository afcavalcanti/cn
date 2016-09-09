function y=f(x)
    y=x^2+log(x)
endfunction
function [rn,it]=secante(x0,x1,e,N)
    it=0;
    erro=1;
    ra1=x0;
    rn=x1;
    while erro>e & it<N
        ra2=ra1;
        ra1=rn;
        rn=ra1-f(ra1)*(ra2-ra1)/(f(ra2)-f(ra1));
        erro=abs((rn-ra1)/rn);
        it=it+1;
    end
endfunction
