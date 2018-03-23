function [output] = cal_wavelet_fre(wt,f)
    % According to the Time-frequency matrix of wavelet transform to
    % calculate the average frequency using our method.
    wt = abs(wt);
    [wt_max, index] = max(wt);
    output = wt_max * f(index) / sum(wt_max);
end

