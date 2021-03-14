pkg load image;
close all;
clear all;
img = imread('barbara.png');#Reading the image
#original_img = rgb2gray(img); #Converting RGB image to gray-level
org_img = im2double(img); #Converting image into double data type

[row col] = size(org_img); #taking image size into matrix form
for i = 1:row #reading row value from starting to end and storing in (i) variable
for j = 1:col #reading row value from starting to end and storing in (j) variable
img_Neg(i,j)=1-org_img(i,j); #subtracting input matrix values from 255 and storing in new Matrix(N)
endfor
endfor
subplot(1,2,1); imshow(org_img); title("Original Image");
subplot(1,2,2); imshow(img_Neg); title("Negative Transformation Filtered Image");