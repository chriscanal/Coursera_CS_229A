function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
    %GRADIENTDESCENT Performs gradient descent to learn theta
    %   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by
    %   taking num_iters gradient steps with learning rate alpha

    % Initialize some useful values
    m = length(y); % number of training examples
    J_history = zeros(num_iters, 1);
    holder = theta(1,1);

    for iter = 1:num_iters
        % Save the cost J in every iteration
        holder(1,1) = theta(1,1) - alpha*(1/m)*( (X*theta - y)' * X(:,1));
        theta(2,1) = theta(2,1) - alpha*(1/m)*( (X*theta - y)' * X(:,2));
        theta(1,1) = holder(1,1);

        % ====================== YOUR CODE HERE ======================
        % Instructions: Perform a single gradient step on the parameter vector
        %               theta.
        %
        % Hint: While debugging, it can be useful to print out the values
        %       of the cost function (computeCost) and gradient here.
        %


        J_history(iter,1) = computeCost(X, y, theta);




        % ============================================================




    end
end
