function [dist] = cal_dist_point_line(x)
    % This function is used to calculate the distance from edge to the main
    % axis.
    % The input is a 2-D coordinate sequence.
    % The output is a 1-D distance sequence.
    direc = cal_main_direction(x);
    point = mean(x);
    dist=...
        (direc(2)/direc(1).*(x(:,1)-point(1))+point(2)-x(:,2))/...
        norm([direc(2)/direc(1),1]);
end

