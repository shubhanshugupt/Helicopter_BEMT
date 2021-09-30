clear; clc;

global method

theta_final = zeros(1,4);

for i = 1:4
    method = i;
    theta_final(i) = find_theta();
end

r = 0.2:0.01:1;
theta_1 = theta_final(1)./r;
theta_2 = theta_final(2)*ones(length(r));
theta_3 = theta_final(3) + (-15)*(r-0.75);
theta_4 = theta_final(4)./r;
plot(r,theta_1, r, theta_2, r, theta_3, r, theta_4);