% This script is used to calculate average wavelet frequency without overlapping

clear;clc;close all;
% Image preprocessing
img=imread('img_get_base_freq.jpg');
img=imrotate(img,90);
img_gray = rgb2gray(img);
img_bina = 1 - imbinarize(img_gray,0.3);
img_bina = imdilate(img_bina,strel('square', 3));
img_bina = imerode(img_bina,strel('square', 3));
% Get the sequence of the edge 
img_bw = bwboundaries(img_bina);
img_bw = img_bw{1};
x = img_bw;
% Plot the image
figure;
imshow(img_bina);
hold on;
plot_main_con_line(flip(x,2), 'b-');
hold off;
% Obtain distance sequence
x = cal_dist_point_line(x);
% Wavelet transform
[wt, f] = con_wavelet_t(x, 1);
% Reconstruction in 8Hz to 16Hz
xrec2 = icwt(wt, 'amor', f, [max(8,min(f)) min(16,max(f))]);
% Apply wavelet transform to reconstructed sequence
[wt2, f2] = con_wavelet_t(xrec2, 1);

% Plot some figure
figure; 
subplot(2,1,1);
hold on;grid on;
plot(x); fplot(0);
title('1-D distance sequence','Fontsize',18);
xlabel('Edge sequence','Fontsize',15);
ylabel('Distance from edge to {\it\fontname{Times new roman} l^a }',...
    'Fontsize',15);
subplot(2,1,2);
hold on;grid on;
plot(xrec2); fplot( 0);
title('Reconstituted sequence(8-16Hz)','Fontsize',18);
xlabel('Edge sequence','Fontsize',15);
ylabel('Fluctuation amplitude','Fontsize',15);
% Calculate average wavelet frequency with our method
fre_without_overlap = cal_wavelet_fre(wt2,f2);
disp('The frequncy without overlap is:');
display(fre_without_overlap);












