pkg load image;
clear all;
r = imread('F:\BhagyasriMSC-IT-1st_YEAR_SEM-I\MSC-IT_Practicals\IVP\PracImages\fields.jpg');
#r=rgb2gray(r);
r = im2double(r);
[m n] = size(r); % Getting the dimensions of the image.
#here we are taking 4 input from user
r1=input("Enter R1: ");
r2=input("Enter R2: ");
s1=input("Enter S1: ");
s2=input("Enter S2: ");
#Calculation of contrast stretching
a = s1/r1;
b = (s2-s1)/(r2-r1);
c = (255-s2)/(255-r2);
for i=1:m
  for j=1:n
    if r(i,j) < r1
      s(i,j) = a*r(i,j);
    elseif r(i,j) < r2
      s(i,j) = b*(r(i,j)-r1)+s1;
    else
      s(i,j) = c*(r(i,j)-r2)+s2;
    endif
  endfor
endfor
#Displaying the Original and Contrast Images
subplot(2,2,1);imshow(r);title("Original Image");
subplot(2,2,2);imhist(r);title("Original Histogram");

subplot(2,2,3);imshow(s);title("Contrast Streched Image");
subplot(2,2,4);imhist(s);title("Histogtram Of Contrast Streched Image");