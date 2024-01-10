function y = bn(k)
  
  global phiD;
  global R0;
  
  if (k == 0)
    y = pi^2/144;
  else
    y = pi*besselj(1,pi*abs(k)/6)/(6*abs(k));
  end
  
end
