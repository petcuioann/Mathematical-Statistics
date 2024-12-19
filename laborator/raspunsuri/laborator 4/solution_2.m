% Datele statistice
X = [-1 0 1 2];
Y = [2 1 2 11];

% a) Mediile
mean_X = mean(X);
mean_Y = mean(Y);

% b) Dispersiile
var_X = var(X, 1); % Dispersia pentru populație
var_Y = var(Y, 1);

% c) Covarianța
cov_XY = cov(X, Y);
cov_XY_value = cov_XY(1, 2);

% d) Coeficientul de corelație
correlation = corrcoef(X, Y);
r_XY = correlation(1, 2);

% e) Determinarea parabolei de regresie și reprezentarea grafică
p = polyfit(X, Y, 2); % Coeficienții polinomului de gradul 2
x_values_graph = linspace(min(X) - 1, max(X) + 1, 100);
y_parabola = polyval(p, x_values_graph); % Valorile parabolei

% Reprezentarea norului de puncte și parabolei de regresie
figure;
scatter(X, Y, 'o', 'filled'); % Norul de puncte
hold on;
plot(x_values_graph, y_parabola, 'r-', 'LineWidth', 1.5); % Parabola de regresie
title('Norul de puncte și parabola de regresie');
xlabel('X');
ylabel('Y');
grid on;
hold off;

% f) Prognozarea valorilor pentru x = 2.5 și x = 3
x_predict = [2.5, 3];
y_predict = polyval(p, x_predict);

% Afișarea rezultatelor
fprintf('Mediile: mean_X = %.2f, mean_Y = %.2f\n', mean_X, mean_Y);
fprintf('Dispersiile: var_X = %.2f, var_Y = %.2f\n', var_X, var_Y);
fprintf('Covarianța: cov(X, Y) = %.2f\n', cov_XY_value);
fprintf('Coeficientul de corelație: r(X, Y) = %.2f\n', r_XY);
fprintf('Ecuația parabolei de regresie: y = %.2fx^2 + %.2fx + %.2f\n', p(1), p(2), p(3));
fprintf('Valori prognozate: y(2.5) = %.3f, y(3) = %.3f\n', y_predict(1), y_predict(2));
