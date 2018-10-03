% generate the sinusoid patches
A=1;
sz=[16 16];
numimg=1e6; % to compromise the running time with the results, about 5e4 is suggested. 
omeganorm=1;% high frequency for 1e3, low frequency for 1
patchsin=zeros(sz(1)*sz(2),numimg);

for ii=1:numimg
    theta = pi*rand;
    omega =omeganorm* [cos(theta),sin(theta)]*(0.4*rand+0.8);%
    % omenorm*(0.8:1.2)
    rho=pi/2*rand;
    im=GenSinusoid(sz, A, omega, rho);
%     imshow(im,[]);
    patchsin(:,ii)=reshape(im,sz(1)*sz(2),1);
end
save('patchsin_lowfre.mat','patchsin');
% save('patchsin_highfre.mat','patchsin'); % for low freqency patches
