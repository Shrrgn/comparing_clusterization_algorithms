
%FCM_main
n1 = 5;
n2 = 10;
path1 = 'D:\\ZProgramming\\МАОСЗ\\images\\HT\\ht_im2.tif';
path2 = 'D:\\ZProgramming\\МАОСЗ\\images\\RGB\\rgb_im2.tif';

imageOriginal = mat2gray(double(imread(path1, 'TIFF')));
figure(1);imshow(imageOriginal);
title('Мамограмма');

imageOriginal2 = mat2gray(double(imread(path2, 'TIFF')));
figure(2);imshow(imageOriginal2);
title('Какая-то бяка');

% im1 = K_means_work(path1, n1);
% figure(3);imshow(im1);
% im1 = K_means_work(path1, n1);
% figure(3);imshow(im1);
% title('k-means, n = 5');
% 
% im2 = K_means_work(path1, n2);
% figure(4);imshow(im2);
% title('k-means, n = 10');
% 
% im3 = K_means_work(path2, n1);
% figure(5);imshow(im3);
% title('k-means, n = 5');
% 
% im4 = K_means_work(path2, n2);
% figure(6);imshow(im4);
% title('k-means, n = 10');

im5 = FCM_work(path1, n1);
figure(7);imshow(im5);
title('FCM, n = 5');

im6 = FCM_work(path1, n2);
figure(8);imshow(im6);
title('FCM, n = 10');

im7 = FCM_work(path2, n1);
figure(9);imshow(im7);
title('FCM, n = 5');

im8 = FCM_work(path2, n2);
figure(10);imshow(im8);
title('FCM, n = 10');

im9 = FCM_mod(path1, n1);
figure(11);imshow(im9);
title('FCM-mod, n = 5');

im10 = FCM_mod(path1, n2);
figure(12);imshow(im10);
title('FCM-mod, n = 10');

im11 = FCM_mod(path2, n1);
figure(13);imshow(im11);
title('FCM-mod, n = 5');

im12 = FCM_mod(path2, n2);
figure(14);imshow(im12);
title('FCM-mod, n = 10');

