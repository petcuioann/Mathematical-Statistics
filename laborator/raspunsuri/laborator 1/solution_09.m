A = [1 2 3; 4 5 6; 7 8 9];
B = [3 2 1; 6 5 4; 9 8 7];

fprintf("Problema 9:\n");
results = matrix_operations(A, B);

function results = matrix_operations(A, B)
    if size(A, 2) ~= size(B, 1)
        error('Numărul de coloane din A trebuie să fie egal cu numărul de rânduri din B pentru înmulțire.');
    end
    
    results = struct();
    results.sum = A + B;
    results.difference = A - B;
    results.product = A * B;
    results.cube = A * A * A;
    
    fprintf('A + B:\n');
    disp(results.sum);
    
    fprintf('A - B:\n');
    disp(results.difference);
    
    fprintf('A * B:\n');
    disp(results.product);
    
    fprintf('A * A * A:\n');
    disp(results.cube);
end
