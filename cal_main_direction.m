function [U] = cal_main_direction(X)
    % This function calculate the direction of the main axis.
    [m, ~] = size(X);
    mu = mean(X);
    X_norm = bsxfun(@minus, X, mu);
    [U, ~] = svd( 1 / m * (X_norm' * X_norm) );
    U = U(:, 1);
end

