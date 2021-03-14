pkg load image;
close all;
clear all;
img = imread('barbara.png');#Reading the image
original_img = im2double(img); #Converting image into double data type
img_Neg = imcomplement(original_img);
subplot(1,2,1); imshow(original_img); title("Original Image");
subplot(1,2,2); imshow(img_Neg); title("Negative Transformation Filtered Image");