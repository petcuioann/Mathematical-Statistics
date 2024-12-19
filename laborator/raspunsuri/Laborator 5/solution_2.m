% Problema 2: Interval de incredere pentru medie (dispersie necunoscuta)

% Datele problemei
X = [2.7, 2.8, 2.9, 3.0, 3.1, 3.2, 3.3];        % Valorile
f = [1, 2, 5, 3, 5, 4, 2];                      % Frecventele
alpha = 0.02;                                   % Nivel de risc (1 - probabilitatea de incredere)

% Calcularea statisticilor
n = sum(f);                                     % Numărul total de observații
mean_X = sum(X .* f) / n;                       % Media selecției

% Varianta de selecție
variance = sum(f .* (X - mean_X).^2) / (n - 1); % Varianța selecției
std_dev = sqrt(variance);                       % Abaterea standard

% Cuantila t pentru T(n-1)
t = tinv(1 - alpha / 2, n - 1);

% Calcularea intervalului de încredere
lower_bound = mean_X - t * std_dev / sqrt(n);
upper_bound = mean_X + t * std_dev / sqrt(n);

% Afișarea rezultatului
fprintf('Intervalul de incredere pentru medie este: (%.3f, %.3f)\n', lower_bound, upper_bound);