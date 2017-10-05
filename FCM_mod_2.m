function [imageOut,imageOut2,imageOut3] = FCM_mod_2(image,n_cluster)
    %read image
    %image = mat2gray(double(imread(path, 'TIFF')));
    %size of image
    [dy, dx, di] = size(image);
    
    
    [V, U] = FCM_modifiedd(image, n_cluster);

    imageOut = histeq(mat2gray(reshape(max(U),[dy, dx])));
    imageOut2 = lambda_sum(U.',[dy,dx,di]);
    
    im1 = reshape(image, [dy .* dx, di]);
    imageOut3 = data_compare(im1, U, V, [dy,dx]);
    
%     figure(1);imshow(imageOut);
%     figure(2);imshow(imageOut2);
%     figure(3);imshow(imageOut3);
    
end