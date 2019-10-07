function  stimuli=GenSinusoid(sz, A, omega, rho)
% to generate the sinusoid images
    % Generate Sinusoid grating
    % sz: size of generated image (width, height)
    radius = [sz(1)/2, sz(2)/2];
    [x, y] = meshgrid(-radius(1):radius(1)-1, -radius(2):radius(2)-1) ;
    % a BUG is fixed in this line
    stimuli = A * cos(omega(1) * x  + omega(2) * y + rho);
