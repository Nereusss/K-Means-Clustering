function [clustering] = K_MEANS_CLUSTERING(X, k)
    
    % Get the dimension of data matrix
    [num, n] = size(X);
    
    % Set default runs to 5
    run = 5;
    
    % Initialize the clustering vetor of points
    clustering = zeros(k,1);
    
    % Initialize the partition vector y Gaussian randomly
    Y = zeros(k, n);

    for i = 1:k
        for j = 1:n
            Y(i, j) = random('Normal', 0, 1);
        end
    end
    
    % Run the following steps a given times to make it converge 
    for r = 1:run
        
        % Compute minumum distance and output to clustering
        for z = 1:num
            distance = zeros(k,1);
            minimum = norm(X(z,:) - Y(1,:));
            symbol = 1;
        
            for i = 1:k
                distance(i) = norm(X(z,:) - Y(i,:));
            
                if distance(i)  < minimum
                    minimum = distance(i);
                    symbol = i;
                end
            
            end
        
            clustering(z) = symbol;
        
        end
        
        % Refine the partition vector Y in terms of the mean of certain
        % data points in the same clustering
        for i = 1:k
              Y(i, :) = mean(X(clustering == i, :));
        end
        
    end
    
end
    
  
