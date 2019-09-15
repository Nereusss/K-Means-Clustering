function [partition] = K_MEANS_CLUSTERING(X, k, n, num)

    % Initialize the partition vetor of points
    partition = zeros(k,1);
    % Initialize the partition vector y randomly

    Y = zeros(k, n);

    for i = 1:k
        for j = 1:n
            Y(i, j) = random('Normal', 0, 1);
        end
    end
    
    for r = 1:run
        % Compute minumum distance and output to partition
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
        
            partition(z) = symbol;
        
        end
        
        for i = 1:k
              Y(i, :) = mean(X(partition == i, :));
        end
        
    end
    
  
