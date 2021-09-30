function lambda = lambda_at_r(solidity, theta,r)
helicopter_specs;
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
lambda = (solidity*Cl_alpha/16)*(sqrt(1 + ((32*theta*r)/(solidity*Cl_alpha))) - 1);
end