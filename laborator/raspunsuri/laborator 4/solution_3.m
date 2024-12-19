% Datele statistice
X = [20,20 21 22,22,22 23,23,23,23,23,23 24,24,24,24,24 25,25,25,25,25,25,25,25,25 26,26 27,27];
Y = [75,75,75 76,76 77,77 78,78,78,78,78 79,79,79,79,79,79,79,79 80,80,80,80,80,80,80,80 81 82];

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

% e) Determinarea dreptei de regresie
p = polyfit(X, Y, 1); % Coeficienții dreptei de regresie
x_values_graph = linspace(min(X) - 1, max(X) + 1, 100); % Interval pentru reprezentare
y_regression = polyval(p, x_values_graph); % Valorile dreptei de regresie

% Reprezentarea grafică
figure;
scatter(X, Y, 'o', 'filled'); % Norul de puncte
hold on;
plot(x_values_graph, y_regression, 'r-', 'LineWidth', 1.5); % Dreapta de regresie
title('Norul de puncte și dreapta de regresie');
xlabel('X');
ylabel('Y');
grid on;
hold off;

% f) Prognozarea valorilor pentru x = 2.5 și x = 3
x_predict = [2.5, 3];
y_predict = polyval(p, x_predict);

% Afișarea rezultatelor
fprintf('Mediile: mean_X = %.4f, mean_Y = %.4f\n', mean_X, mean_Y);
fprintf('Dispersiile: var_X = %.4f, var_Y = %.4f\n', var_X, var_Y);
fprintf('Covarianța: cov(X, Y) = %.4f\n', cov_XY_value);
fprintf('Coeficientul de corelație: r(X, Y) = %.4f\n', r_XY);
fprintf('Ecuația dreptei de regresie: y = %.4fx + %.4f\n', p(1), p(2));
fprintf('Valori prognozate: y(2.5) = %.4f, y(3) = %.4f\n', y_predict(1), y_predict(2));
