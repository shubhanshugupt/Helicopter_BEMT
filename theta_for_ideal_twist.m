function theta_r = theta_for_ideal_twist(r)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
global theta_ref
%fprintf('using ideal twist ');
theta_r = theta_ref/r;
end