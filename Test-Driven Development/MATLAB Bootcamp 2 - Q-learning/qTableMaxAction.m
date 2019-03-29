function [ action ] = qTableMaxAction( M, s )
% QTABLEMAXACTION: Returns the action with the highest value
% in the Q-table row.

    indexValue = 1;
    value = M(s,1);
    % Array values for Q-table
    % Y-value discarded as we do not need it
    [~,a] = size(M);
    
    % Loop to go through all the rows of a specific column
    for V = 2:+1:a
        
        % Updates index value with biggest value, if larger than the
        % previous value
        if (M(s,V) > value)
            
            value = M(s,V);
            indexValue = V;
            
        end
    end
    
    % Return the index value
    action = indexValue;

end

