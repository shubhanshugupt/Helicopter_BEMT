function result = func(r)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

%result = r^2;

helicopter_specs;
global method

if method == 1
    theta = theta_for_ideal_twist(r);
elseif method == 2
    theta = theta_for_linear_twist(r);
elseif method == 3
    theta= theta_for_linear_twist(r);
elseif method == 4
    theta = theta_for_ideal_twist(r);
end
solidity = solidity_r(r);
lambda = lambda_at_r(solidity, theta, r);

result = 0.5*solidity*Cl_alpha*(theta*r^2 - lambda*r);
end