pkg load image;
close all;
clear all;
img = imread('F:\BhagyasriMSC-IT-1st_YEAR_SEM-I\MSC-IT_Practicals\IVP\PracImages\leenanew.tif');#Reading the image
#original_img = rgb2gray(img); #Converting RGB image to gray-level
org_img = im2double(img); #Converting image into double data type
#x = org_img;
cc = 1; #Initialising constant value as 1 which adjusts the kind of enhancement you are looking for.
[row col] = size(org_img); #taking image size into matrix form
for i = 1:row #reading row value from starting to end and storing in (i) variable
  for j = 1:col #reading row value from starting to end and storing in (j) variable
    x(i,j)=cc*log(1+org_img(i,j)); #log transformations can be defined by this formula s = c log(r + 1).
  endfor
endfor
subplot(1,2,1); imshow(org_img); title("Original Image");
subplot(1,2,2); imshow(x); title("Log Transformation Filtered Image");