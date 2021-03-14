%Image reconstruction by combining 8 bit plane and 7 bit plane
A=imread('F:\BhagyasriMSC-IT-1st_YEAR_SEM-I\MSC-IT_Practicals\IVP\PracImages\coins.png');
B=zeros(size(A));
B=bitset(B,7,bitget(A,7));
B=bitset(B,8,bitget(A,8));
B=uint8(B);
figure,imshow(B);

%Image reconstruction by combining 8,7,6 and 5 bit planes
A=imread('F:\BhagyasriMSC-IT-1st_YEAR_SEM-I\MSC-IT_Practicals\IVP\PracImages\coins.png');
B=zeros(size(A));
B=bitset(B,8,bitget(A,8));
B=bitset(B,7,bitget(A,7));
B=bitset(B,6,bitget(A,6));
B=bitset(B,5,bitget(A,5));
B=uint8(B);
figure,imshow(B);
