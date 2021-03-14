pkg load image;
close all;
clear all;

orginal_img=imread('F:\BhagyasriMSC-IT-1st_YEAR_SEM-I\MSC-IT_Practicals\IVP\PracImages\happy_dog.jpg');
ad=im2double(orginal_img);
y=ad;
cc=1;
gamma_val = 0.6;
[r,c]=size(ad);
for i=1:r
  for j=1:c
    y(i,j)=cc*ad(i,j)^gamma_val;
  endfor
 endfor
subplot(1,2,1); imshow(ad); title("Original Image");
subplot(1,2,2); imshow(y); title("Image After Power Law Transformation");