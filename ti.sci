function x=ti(A,b)
  [l,c]=size(A);
  x(l)=b(l)/A(l,l);
  for i=2:c
    x(i)=(b(i)-A(i,:)*x)/A(i,i)
  end
endfunction
