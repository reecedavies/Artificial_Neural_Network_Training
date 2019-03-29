function [stepsNumof, qTable] = qLearningEpisode(qTable)
    
    ACTIONS_NUMOF = 4;
    GOAL_STATE = 2;

    % Loop until the goal state is reached
    s = rndStartState();
    stepsNumof = 1;
    while s ~= GOAL_STATE
        a = randi(ACTIONS_NUMOF);
        ns = transition(s,a);
        stepsNumof = stepsNumof + 1;
        s = ns;
    end
    
    
end

