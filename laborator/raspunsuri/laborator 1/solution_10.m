A = [1 2 3; 4 5 6; 7 8 9];
B = [1 1 1; 2 2 2; 3 3 3];

matrix_operations_elementwise(A, B);

function results = matrix_operations_elementwise(A, B)
    if ~isequal(size(A), size(B))
        error('Dimensiunile matricilor A și B trebuie să fie identice pentru operațiile element-wise.');
    end
    
    results = struct();
    results.product = A .* B;
    results.quotient = A ./ B;
    results.square = A .^ 2;
    
    fprintf('A .* B:\n');
    disp(results.product);
    
    fprintf('A ./ B:\n');
    disp(results.quotient);
    
    fprintf('A.^2:\n');
    disp(results.square);
end
