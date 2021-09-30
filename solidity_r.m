function solidity = solidity_r(r)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
helicopter_specs;
global method;
%fprintf('using solidity function\n');
if method == 4
    %fprintf('using parabolic solidity\n');
    c_tip = 0.5*c;
    solidity_tip = (Nb*c_tip)/(pi*R);
    solidity = solidity_tip/r;
else
    %fprintf('using fixed solidity\n');
    solidity = (Nb*c)/(pi*R);
end
end

