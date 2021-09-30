function theta_r = theta_for_linear_twist(r)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
global theta_ref
global theta_tw
%fprintf('using linear twist with theta_tw = %f ', rad2deg(theta_tw));
theta_r = theta_ref + (theta_tw)*(r-0.75);
end

