function [ action ] = qLearningSelectAction( M, s )
% QLEARINGSELECTACTION: Chooses a random action 20% of the time,
% and the action with the highest Q-value for the given state 80% of
% the time.

    % Create random variable between 1 and 20
    ran = randi (20);

    % If random is below or equal to 4, the action will be random
    if (ran <= 4)
        action = ran;
    else
        % If random is great than 4, action is declared from
        % qTableMaxAction
        action = qTableMaxAction(M, s);
    end


end

