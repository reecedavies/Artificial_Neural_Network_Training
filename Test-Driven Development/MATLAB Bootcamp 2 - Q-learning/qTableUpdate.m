function [ M ] = qTableUpdate( M, s, a, r, newS)
% QTABLEUPDATE: Updates the given Q-table, according to the Q-table
% update, and returns the updated table.

    % Q-table update function, using parameters as values
    M(s,a) = M(s,a) + 0.2 * (r + 0.9 * M(newS,qTableMaxAction(M,newS)) - M(s,a));

end