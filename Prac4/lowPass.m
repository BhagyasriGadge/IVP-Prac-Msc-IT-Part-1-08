clear all;
close all;

pkg load image;
a=imread('F:\BhagyasriMSC-IT-1st_YEAR_SEM-I\MSC-IT_Practicals\IVP\PracImages\hawk1.png');
a=im2double(a);
r=imnoise(a,'salt & pepper' );


f=ones(3,3)/9;
af=filter2(f,r);
figure
subplot(1,2,1);imshow(r); title('noised image');
subplot(1,2,2);imshow(af); title('After applying average filter');

 