pkg load image;
clear all;
img = imread('F:\BhagyasriMSC-IT-1st_YEAR_SEM-I\MSC-IT_Practicals\IVP\PracImages\hawk1.png'); % Read image
figure,imshow(img);title("original channel");
red = img; 
green=0.66*img;
blue = 0.15*img;  
pseudo_img = cat(3, red, green, blue);
figure, imshow(pseudo_img);title('pseudo');
