% Example on k-means clustering algorithm

clc; % Clear the work space
clear; % Clear all previously stored data

% Initialize the data sample
A = zeros(100,2); 

% Initialize for columns X and Y
for i = 1:50
    A(i,1) = random('Normal', 0, 1);
    A(i,2) = random('Normal', 1, 1);
end

% Initialize for columns Z and W
for i = 51:100
	A(i,1) = random('Normal', 2, 1);
    A(i,2) = random('Normal', 0, 1); 
end

% Plot the points
figure;
scatter(A(:,1),A(:,2));
title 'Original Points';

% Run k-means clusting on data set A when k = 2
clusters = K_MEANS_CLUSTERING(A,2);

figure;
plot(A(clusters==1,1),A(clusters==1,2),'r.','MarkerSize',12);
hold on
plot(A(clusters==2,1),A(clusters==2,2),'b.','MarkerSize',12);
title 'Clustered Points when k = 2';

% Run k-means clusting on data set A when k = 3
clusters = K_MEANS_CLUSTERING(A,3);

figure;
plot(A(clusters==1,1),A(clusters==1,2),'r.','MarkerSize',12);
hold on
plot(A(clusters==2,1),A(clusters==2,2),'b.','MarkerSize',12);
hold on
plot(A(clusters==3,1),A(clusters==3,2),'g.','MarkerSize',12);
title 'Clustered Points when k = 3';

% Run k-means clusting on data set A when k = 4
clusters = K_MEANS_CLUSTERING(A,4);

figure;
plot(A(clusters==1,1),A(clusters==1,2),'r.','MarkerSize',12);
hold on
plot(A(clusters==2,1),A(clusters==2,2),'b.','MarkerSize',12);
hold on
plot(A(clusters==3,1),A(clusters==3,2),'g.','MarkerSize',12);
hold on
plot(A(clusters==4,1),A(clusters==4,2),'c.','MarkerSize',12);
title 'Clustered Points when k = 4';

% Run k-means clusting on data set A when k = 5
clusters = K_MEANS_CLUSTERING(A,5);

figure;
plot(A(clusters==1,1),A(clusters==1,2),'r.','MarkerSize',12);
hold on
plot(A(clusters==2,1),A(clusters==2,2),'b.','MarkerSize',12);
hold on
plot(A(clusters==3,1),A(clusters==3,2),'g.','MarkerSize',12);
hold on
plot(A(clusters==4,1),A(clusters==4,2),'c.','MarkerSize',12);
hold on
plot(A(clusters==5,1),A(clusters==5,2),'black.','MarkerSize',12);
title 'Clustered Points when k = 5';