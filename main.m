clear; clc;

global method

theta_final = zeros(1,4);

for i = 1:4
    method = i;
    theta_final(i) = find_theta();
end
