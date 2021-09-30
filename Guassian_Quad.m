function integration = Guassian_Quad(lower_limit, higher_limit)

t = [-0.932469514 -0.661209386 -0.238619186 0.238619186 0.661209386 0.932469514];
w = [ 0.171324492 .360761573 0.467913935 0.467913935 0.360761573 0.171324492];

sum = 0;
for i = 1:6
    r = 0.5*(higher_limit - lower_limit)*t(i) + 0.5*(higher_limit + lower_limit);
    dr_dt = 0.5*(higher_limit - lower_limit);
    sum = sum + w(i)*func(r)*dr_dt;
end
integration = sum;

