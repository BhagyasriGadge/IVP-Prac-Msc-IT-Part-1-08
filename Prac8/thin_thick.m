pkg load image;
org_im=imread('F:\BhagyasriMSC-IT-1st_YEAR_SEM-I\MSC-IT_Practicals\IVP\PracImages\coins.png');
subplot(2,2,1),
imshow(org_im);title("Original image");
binary=im2bw(org_im);
subplot(2,2,2),
imshow(binary);title("Binary image");

thin=bwmorph(binary,'thin');
subplot(2,2,3),
imshow(thin);title("Thinning ");
thick=bwmorph(binary,'thicken');
subplot(2,2,4),
imshow(thick);title("Thicking");


