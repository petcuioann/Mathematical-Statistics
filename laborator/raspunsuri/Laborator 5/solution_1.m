% Problema 1: Interval de incredere pentru medie (dispersie cunoscuta)

% Datele problemei
X = [22.7, 22.8, 22.9, 23.0, 23.1, 23.2, 23.3, 23.4]; % Valorile
f = [1, 3, 7, 4, 6, 7, 5, 2];                        % Frecventele
sigma2 = 0.35;                                       % Dispersia cunoscuta
sigma = sqrt(sigma2);                                % Abaterea standard
alpha = 0.05;                                        % Nivel de risc

% Calcularea statisticilor
n = sum(f);                                          % Numărul total de observații
mean_X = sum(X .* f) / n;                            % Media selecției
z = norminv(1 - alpha / 2);                          % Cuantila pentru N(0,1)

% Calcularea intervalului de încredere
lower_bound = mean_X - z * sigma / sqrt(n);
upper_bound = mean_X + z * sigma / sqrt(n);

% Afișarea rezultatului
fprintf('Intervalul de incredere pentru medie este: (%.3f, %.3f)\n', lower_bound, upper_bound);