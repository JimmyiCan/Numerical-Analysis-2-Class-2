function ret = fr(r, k)
  % Returns the r dependence of the ColdRoom problem.
  % Inputs are r position and power k.

  global LD;

  ret = r.^k;

end
