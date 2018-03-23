function [means_point] = plot_main_con_line(x,p)
    % plot the main axis 
    if nargin == 1
        p = 'b--';
    end
    direc = cal_main_direction(x);
    means_point = mean(x);
    plot(means_point(1),means_point(2),'wo','MarkerFaceColor','w');
    fplot(@(t) direc(2)/direc(1)*(t-means_point(1)) + means_point(2),...
        [min(x(:,1)),max(x(:,1))],p,'linewidth',1, 'color', 'b');
end

