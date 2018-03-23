function [wt,f] = con_wavelet_t(x, figure_on)
    if nargin == 1
        figure_on = 1;
    end
    t = (0:length(x)-1)/1000;
    Fs = 1000;
    [wt,f] = cwt(x,'amor',Fs);
    if figure_on == 1
        figure;
        imagesc(t,log2(f),abs(wt));
        Yticks = 2.^(round(log2(min(f))):round(log2(max(f))));
        ax = gca;
        ax.YLim = log2([min(f), max(f)]);
        ax.YTick = log2(Yticks);
        ax.YDir = 'normal';
        set(ax,'YLim',log2([min(f),max(f)]), ...
            'layer','top', ...
            'YTick',log2(Yticks(:)), ...
            'YTickLabel',num2str(sprintf('%g\n',Yticks)), ...
            'layer','top')
        xlabel('Time/s','Fontsize',15);
        ylabel('Frequency/Hz','Fontsize',15);
        title('Time-frequency diagram','Fontsize',18);
    end
end

