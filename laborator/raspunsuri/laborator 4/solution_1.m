% Datele statistice
X = [-2 -1 0 1 2];
Y = [0 0 1 1 3];

% a) Mediile
mean_X = mean(X);
mean_Y = mean(Y);

% b) Dispersiile
var_X = var(X, 1); % Folosim parametrul 1 pentru populație
var_Y = var(Y, 1);

% c) Covarianța
cov_XY = cov(X, Y);
cov_XY_value = cov_XY(1, 2);

% d) Coeficientul de corelație
correlation = corrcoef(X, Y);
r_XY = correlation(1, 2);

% e) Dreapta de regresie și norul de puncte
p = polyfit(X, Y, 1); % Determinarea coeficienților dreptei de regresie
regression_line = polyval(p, X); % Valori pentru dreapta de regresie

% Reprezentarea grafică
figure;
scatter(X, Y, 'o', 'filled'); % Norul de puncte
hold on;
plot(X, regression_line, 'r-', 'LineWidth', 1.5); % Dreapta de regresie
title('Norul de puncte și dreapta de regresie');
xlabel('X');
ylabel('Y');
grid on;
hold off;

% f) Prognozarea valorilor pentru x = 2.5 și x = 3
x_values = [2.5, 3];
y_predicted = polyval(p, x_values);

% Afișarea rezultatelor
fprintf('Mediile: mean_X = %.2f, mean_Y = %.2f\n', mean_X, mean_Y);
fprintf('Dispersiile: var_X = %.2f, var_Y = %.2f\n', var_X, var_Y);
fprintf('Covarianța: cov(X, Y) = %.2f\n', cov_XY_value);
fprintf('Coeficientul de corelație: r(X, Y) = %.2f\n', r_XY);
fprintf('Ecuația dreptei de regresie: y = %.2fx + %.2f\n', p(1), p(2));
fprintf('Valori prognozate: y(2.5) = %.2f, y(3) = %.2f\n', y_predicted(1), y_predicted(2));
