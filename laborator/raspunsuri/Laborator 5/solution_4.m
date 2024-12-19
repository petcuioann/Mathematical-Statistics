% Problema 4: Interval de incredere pentru raportul dispersiilor si diferenta mediilor

% Datele problemei
X1 = [1010, 993, 992, 1008, 1006, 998, 1008, 994, 996, 1006, 1005, 1002, ...
      997, 1004, 1002, 1010, 1003]; % Datele pentru primul aparat
X2 = [1002, 985, 996, 1010, 1004, 1003, 1010, 993, 1002, 1006, 988, 995]; % Datele pentru al doilea aparat
alpha = 0.05; % Nivel de risc

% Calcularea statisticilor pentru X1
n1 = length(X1);
mean_X1 = mean(X1);
var_X1 = var(X1, 1); % Varianța cu 1/n

% Calcularea statisticilor pentru X2
n2 = length(X2);
mean_X2 = mean(X2);
var_X2 = var(X2, 1); % Varianța cu 1/n

% a) Intervalul de incredere pentru raportul dispersiilor
F_lower = finv(alpha / 2, n1 - 1, n2 - 1);    % Cuantila inferioară
F_upper = finv(1 - alpha / 2, n1 - 1, n2 - 1);% Cuantila superioară

lower_ratio = (1 / F_upper) * (var_X1 / var_X2);
upper_ratio = (1 / F_lower) * (var_X1 / var_X2);
fprintf('a) Intervalul de incredere pentru raportul dispersiilor este: (%.3f, %.3f)\n', lower_ratio, upper_ratio);

% b) Intervalul de incredere pentru diferenta mediilor (σ1 = σ2)
sp = sqrt(((n1 - 1) * var(X1) + (n2 - 1) * var(X2)) / (n1 + n2 - 2)); % Deviația combinată
t_equal = tinv(1 - alpha / 2, n1 + n2 - 2); % Cuantila t pentru σ1 = σ2
lower_diff_equal = (mean_X1 - mean_X2) - t_equal * sp * sqrt(1/n1 + 1/n2);
upper_diff_equal = (mean_X1 - mean_X2) + t_equal * sp * sqrt(1/n1 + 1/n2);
fprintf('b) Intervalul de incredere pentru diferenta mediilor (σ1 = σ2) este: (%.3f, %.3f)\n', lower_diff_equal, upper_diff_equal);

% c) Intervalul de incredere pentru diferenta mediilor (σ1 ≠ σ2)
se_diff = sqrt(var(X1)/n1 + var(X2)/n2); % Deviația standard a diferenței mediilor
df = (se_diff^4) / (((var(X1)/n1)^2 / (n1 - 1)) + ((var(X2)/n2)^2 / (n2 - 1))); % Gradele de libertate
t_unequal = tinv(1 - alpha / 2, floor(df)); % Cuantila t pentru σ1 ≠ σ2
lower_diff_unequal = (mean_X1 - mean_X2) - t_unequal * se_diff;
upper_diff_unequal = (mean_X1 - mean_X2) + t_unequal * se_diff;
fprintf('c) Intervalul de incredere pentru diferenta mediilor (σ1 ≠ σ2) este: (%.3f, %.3f)\n', lower_diff_unequal, upper_diff_unequal);
