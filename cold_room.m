function T = cold_room(r, phi)
  % This function plots the temp derived for a circular room with
  % cold walls and a single warm door at the side.
  % The solution works by expanding the solution to Laplace's eq as
  % sum_k a_k r^k cos(k phi) and choosing the b_k values to match
  % the BCs using Fourier analysis.

  global phiD;
  global R0;
  
  global Nr;
  global Nphi;

  global Twall;
  global Tdoor;


  N = 101;   % Number of Fourier modes to sum

  % Compute temp distribution in room using expansion coefficients an
  % and eigenfunctions in r and phi.
  T = zeros(Nr, Nphi);
%   phi = linspace(-pi, pi, Nphi);
%   Tdoor = Fourier_Polor(phi,N-1);
  for ridx=1:Nr 
  for phiidx=1:Nphi
    % internal sum over modes -- this is the eigenfunction expansion.
    % Starting term is non-zero.  The DC term (k=0) is Tdoor*phiD/pi
    s = 0;
    
    for k = 0:N-1
      s = s + Tdoor*bn(k)*fr(r(ridx),k)*fphi(phi(phiidx),k); 
    end
    T(ridx, phiidx) = s;
  end
  end

end
