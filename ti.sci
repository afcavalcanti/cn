function x=ti(A,b)
  [l,c]=size(A);
  x(1)=b(1)/A(1,1);
  for i=2:c
    x(i)=(b(i)-A(i,:)*x)/A(i,i)
  end
endfunction
