function x=ts(A,b)
  [l,c]=size(A);
  x(c)=b(c)/A(c,c);
  for i=c-1:-1:1;
    x(i)=(b(i)-A(i,:)*x)/A(i,i)
  end
endfunction
