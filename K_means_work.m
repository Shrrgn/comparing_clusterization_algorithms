
function imageOut = K_means_work(path,clasters_number)   
    %read image
    image = mat2gray(double(imread(path, 'TIFF')));
    %size of image
    [dy, dx, di] = size(image);
    %k-means
    [idx, c] = kmeans(reshape(image, [dy.*dx, di]), clasters_number);
    
    imageOut = histeq(mat2gray(reshape(idx,[dy, dx])));
end
    