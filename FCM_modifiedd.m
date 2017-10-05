function [v, U] = FCM_modifiedd(image,n_cluster)
    %n_cluster = 5;
    max_iter = 100;
    m = 2;
    error = 1e-4;
    %path = 'D:\Программирование\МАОСЗ\images\HT\ht_im1.tif';
    imageOriginal = mat2gray(double(image));
    [dy, dx, di] = size(imageOriginal);
    X = reshape(imageOriginal,[dy.*dx, di]);%(1,n)
    
    %v0 - matrix of centers of fuzzy clusters
    v0 = FCM_begining_centres(X,n_cluster);

    v_previous = v0;

    for k = 1:max_iter
        D = distfcm(v_previous,X);
        tmp = D.^(-2/(m-1));
        U = tmp./(ones(n_cluster,1)*sum(tmp));
        [n_U,m_U] = size(U);

        for i = 1:n_U
            for j = 1:m_U
                if isnan(U(i,j))
                    U(i,j) = 0;
                end
            end
        end

        mf = U.^m;
        v = mf*X./((ones(size(X, 2), 1)*sum(mf'))');
        delta = (sum(sqrt(sum((v - v_previous).^2,2))))/n_cluster;
        
        if i > 1 && delta < error
            break;
        end
        
        fprintf('k = %d, delta = %f\n',k,delta);

        v_previous = v;
    end
end