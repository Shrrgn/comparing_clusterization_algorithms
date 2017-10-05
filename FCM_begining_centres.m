function v0 = FCM_begining_centres(X,n_cluster)
    %v0 - matrix of centers of fuzzy clusters
    [n_X,m_X] = size(X);
    v0 = zeros(n_cluster,m_X);
    steps = round(n_X/n_cluster);
    j = 1;
    for i = 1:n_cluster
        if j > n_X 
            break;
        end
        v0(i) = X(j);
        j = steps + j;
    end
end