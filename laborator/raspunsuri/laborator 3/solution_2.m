% Parametrii de intrare
a = 10;
b = 20;
N = 1000;

% 1. Generare de numere aleatoare ce urmează distribuția uniformă
x = a + (b - a) * rand(N, 1);

% 2. Sortare
x = sort(x);

% 3. Calcul xmin și xmax
xmin = min(x);
xmax = max(x);

% 4. Calcul număr de clase folosind regula lui Sturges
n = fix(1 + 10/3 * log10(N));

% 5. Lungimea claselor
d = (xmax - xmin) / n;

% 6. Extremitățile claselor
class_limits = xmin + (0:n) * d;

% 7a. Frecvențele absolute și mijloacele claselor
[f, middle] = hist(x, n);

% 7b. Calculul frecvențelor relative
relative_frequencies = f / N;

% 8. Afisare tabel sistematizat
fprintf('Nr.   Clasa             Frecventa absoluta   Mijlocul clasei   Frecventa relativa\n');
for i = 1:n
    fprintf('%d    [%.2f, %.2f)      %d                     %.2f              %.4f\n', i, class_limits(i), class_limits(i+1), f(i), middle(i), relative_frequencies(i));
end

% 9. Reprezentare grafică
figure;
hist(x, n); % Histograma frecvențelor absolute
hold on;
plot(middle, f, '-o', 'LineWidth', 2); % Poligonul frecvențelor absolute
title('b) Histograma și c) Poligonul frecvențelor absolute');
xlabel('Valoare');
ylabel('Frecvență');
legend('Histograma', 'Poligonul frecvențelor absolute');

% 10. Media aritmetică, geometrică și armonică
mean_arithmetic = mean(x);
mean_geometric = geomean(x);
mean_harmonic = harmmean(x);

fprintf('\nd1) Media aritmetică: %.2f\n', mean_arithmetic);
fprintf('d2) Media geometrică: %.2f\n', mean_geometric);
fprintf('d3) Media armonică: %.2f\n', mean_harmonic);

% 11. Mediana
median_value = median(x);
fprintf('e) Mediana: %.2f\n', median_value);

% 12. Modul
[~, i] = max(f);
mod_value = middle(i);
fprintf('f) Modul: %.2f\n', mod_value);

% 13. Cuartilele
quartiles = prctile(x, [25 50 75]);
fprintf('g1) Cuartila inferioară (Q1): %.2f\n', quartiles(1));
fprintf('g2) Mediana (Q2): %.2f\n', quartiles(2));
fprintf('g3) Cuartila superioară (Q3): %.2f\n', quartiles(3));

% 14. Dispersia și abaterea standard
variance_value = var(x);
std_dev = std(x);

fprintf('h1) Dispersia: %.2f\n', variance_value);
fprintf('h2) Abaterea standard: %.2f\n', std_dev);

% 15. Momentele centrate de ordin 1, 2, 3 și 4
for k = 1:4
    fprintf("i%d) Momentul de ordin %d: %.2f\n", k, k, moment(x, k));
end
