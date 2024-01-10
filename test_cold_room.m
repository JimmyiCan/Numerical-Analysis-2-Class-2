function test_cold_room()
  % Test fcn for circular room demo.
  % This is not really a test -- it just makes plots.  A real
  % test would verify the solution.
    
  global phiD;
  global R0;

  global Twall;
  global Tdoor;
  
  global Nr;
  global Nphi;

  Nr = 31;  % No of r points to sample
  Nphi = 151;  % No of phi points to sample

  R0 = 1;         % Radius of circular room
  phiD = pi/6;   % Angular width of door.

  Tdoor = 1;

  Twall = 0;   % Temp of wall

  r =   linspace(0, R0, Nr);
  phi = linspace(-pi, pi, Nphi);

  [rm, phim] = meshgrid(r, phi);

  % Call my impl to do the computation.
  u = cold_room(r, phi);
  
  % Make nice plot
  [x, y] = pol2cart(phim, rm);
  surf(y, x, u')

  
end
