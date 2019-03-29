function [ outputValue ] = reward( stateValue, actionValue )
% REWARD: Takes a state value and an action value as parameters and
% returns 10.0 if the given state is 5 and the given action is 3. 
% In all other cases, it should return 0.0.


    % Checks if the state value is 5 or 3, the function returns 10.0
    if (stateValue == 5 && actionValue == 3)
        
        outputValue = 10.0;
        
    else
        % If the state value is anything else, the function returns 0
        outputValue = 0;
        
    end
end

