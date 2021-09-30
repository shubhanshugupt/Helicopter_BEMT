function theta = find_theta()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

helicopter_specs;
global theta_ref
global theta_tw
global method

n = 10;
lower_limit = 0.2;
upper_limit = 1;
element = (upper_limit-lower_limit)/n;

theta_75 = 0.03*pi;
theta_tip = 0.5*pi;

if method == 1
    theta_ref = theta_tip;
elseif method == 2
    theta_ref = theta_75;
    theta_tw = 0;
elseif method == 3
    theta_ref = theta_75;
    theta_tw = deg2rad(-15);
elseif method == 4
    theta_ref = theta_tip;
else
    fprintf('select proper method\n');
    return;
end


result = 0;
while(abs(Ct-result)>1e-06)
    result = 0;
    for i = 1:n
        a = lower_limit + element*(i-1);
        b = lower_limit + element*(i);
        result = result + Guassian_Quad(a,b); 
    end
%     result
    theta_ref = theta_ref + (Ct-result);
end

theta = rad2deg(theta_ref);
fprintf('theta_ref = %f degrees\n',theta);
end