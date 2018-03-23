% This script is used to calculate the average area of each rice grains.
% The variety of rice samples was japonica rice.

clear;clc;close all;
img1=imread('img_get_area1.jpg');
img_blue1 = img1(:,:,3);
img_bina1 = 1 - imbinarize(img_blue1);
area_1 = bwarea(img_bina1(:)); % obtain the area of the image

img2=imread('img_get_area2.jpg');
img_blue2 = img2(:,:,3);
img_bina2 = 1 - imbinarize(img_blue2); 
area_2 = bwarea(img_bina2(:)); % obtain the area of the image
% There are 175 rice grains in the pictures.
average_area2 = (area_1 + area_2) / 175;

disp('The average area of rice grains is:');
display(average_area2);





