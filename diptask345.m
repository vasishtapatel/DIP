clc;
clear ;
close all;
Image = imread('C:\Users\vasishta patel\Downloads\lenna.png');
figure(1)
subplot(2,2,1)
Image_bw = rgb2gray(Image);
imshow(Image_bw);
title('Black and White')

subplot(2,2,2)
image_r = Image;
image_r(:,:,2) = 0;
image_r(:,:,3) = 0;
imshow(image_r)
title('Red')

subplot(2,2,3)
image_g = Image(:,:,:);
image_g(:,:,3) = 0;
image_g(:,:,1) = 0;
imshow(image_g)
title('Green')

subplot(2,2,4)
image_b = Image;
image_b(:,:,2) = 0;
image_b(:,:,1) = 0;
imshow(image_b)
title('Blue')

figure(2)

[a,b] = size(Image);
I = zeros(a,b,8);
for i=1:a
    for  j = 1:b
        I(i,j,:) = de2bi(Image(i,j),8,'left-msb');
    end
end

Image_comp = uint8(bi2de(I(:,:,1)+I(:,:,2)+I(:,:,3)+I(:,:,4)+I(:,:,5)+I(:,:,6)+I(:,:,7),8));

