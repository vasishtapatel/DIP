   clc;
close all;
clear all;

image = imread('C:\Users\vasishta patel\Downloads\histeq.jpg');
figure(1)
histogram(image)

image1 = histeq(image);
figure(2)
subplot(1,2,1)
imshow(image)

subplot(1,2,2)
imshow(image1)