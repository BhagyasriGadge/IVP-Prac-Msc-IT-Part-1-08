
pkg load image;
A=imread('F:\BhagyasriMSC-IT-1st_YEAR_SEM-I\MSC-IT_Practicals\IVP\PracImages\coins.png');
B=im2bw(A);
subplot(2,2,1)
imshow(B);title("original image");
hole=bwfill(B,'holes');
subplot(2,2,2),
imshow(hole);title("Binary image");
skel=bwmorph(B,'skel',8);
subplot(2,2,3),
imshow(skel);title("Skeleton");
