% Problema 1
a = [1 2; 3 4; 5 6];
a([1, 3], :) = a([3, 1], :);
fprintf("Problema 1:\n");
disp(a);

% Problema 2
a = [1 2 3; 4 5 6];
a(:, [2, 3]) = a(:, [3, 2]);
fprintf("Problema 2:\n");
disp(a);

% Problema 3
v = [1 2 3 5 7 11 13];
sub_v = v(3:6);
fprintf("Problema 3:\n");
disp(sub_v);

% Problema 4
a = [1 2 3; 4 5 6; 7 8 9];
sub_a = a(2:3, 1:2);
fprintf("Problema 4:\n");
disp(sub_a);

% Problema 5
Z = zeros(2, 4); % Matrice zero de 3x4
O = ones(2, 4); % Matrice de 1 de 2x5
I = eye(3); % Matrice identitate 4x4
fprintf("Problema 5:\n");
disp(Z);
disp(O);
disp(I);

% Problema 6
u = [1 2 3];
v = [4 5 6];
equal = (u == v);
inequal = (u ~= v);
less_than = (u < v);
greater_than = (u > v);
less_equal_than = (u <= v);
greater_equal_than = (u >= v);
fprintf("Problema 6:\n");
disp(equal);
disp(inequal);
disp(less_than);
disp(greater_than);
disp(less_equal_than);
disp(greater_equal_than);

% Problema 7
concat = [2 * u, -3 * v];
fprintf("Problema 7:\n");
disp(concat);

% Problema 8
% Exemplu: 
%   x +  y + 2z = 1
%   x + 2y + 2z = 2
%  2x + 2y + 3z = 3
A_sys = [1 1 2; 1 2 2; 2 2 3];
b_sys = [1; 2; 3];
sol = A_sys \ b_sys;
fprintf("Problema 8:\n");
disp(sol);