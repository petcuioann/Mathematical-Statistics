% Problema 3: Interval de incredere pentru dispersie si abatere standard (corectat)

% Datele problemei
X = [4.21, 4.03, 3.99, 4.05, 3.89, 3.98, 4.01, 3.92, 4.23, 3.85, 4.20]; % Datele de selecție
alpha = 0.05;                                                           % Nivel de risc

% Calcularea statisticilor
n = length(X);                             % Numărul total de observații
mean_X = mean(X);                          % Media selecției
variance = var(X, 0);                      % Varianța selecției (cu 1/(n-1))
std_dev = sqrt(variance);                  % Abaterea standard

% Cuantile pentru distributia chi-patrat
chi2_lower = chi2inv(alpha / 2, n - 1);    % Cuantila inferioară
chi2_upper = chi2inv(1 - alpha / 2, n - 1);% Cuantila superioară

% Calcularea intervalului de încredere pentru varianță
lower_variance = (n - 1) * variance / chi2_upper;
upper_variance = (n - 1) * variance / chi2_lower;

% Calcularea intervalului de încredere pentru abaterea standard
lower_std_dev = sqrt(lower_variance);
upper_std_dev = sqrt(upper_variance);

% Afișarea rezultatului
fprintf('Intervalul de incredere pentru varianta este: (%.3f, %.3f)\n', lower_variance, upper_variance);
fprintf('Intervalul de incredere pentru abaterea standard este: (%.3f, %.3f)\n', lower_std_dev, upper_std_dev);
