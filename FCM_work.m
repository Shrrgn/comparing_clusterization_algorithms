
function imageOut = FCM_work(path,clasters_number)   
    %read image
    image = mat2gray(double(imread(path, 'TIFF')));
    %size of image
    [dy, dx, di] = size(image);
    %fcm options: [m, Nstep, error, additional inf(1 - True, 0 - False)]
    options = [2, 100, 1e-5, 1];
    [Center, U, Obj] = fcm(reshape(image, [dy.*dx, di]), clasters_number, options);

    imageOut = histeq(mat2gray(reshape(max(U),[dy, dx])));
end


