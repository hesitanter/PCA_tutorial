%% Example Title
% Summary of example objective
% A pca turtorial.
% Turtorial links:
% https://wenku.baidu.com/view/8fdc079ac850ad02df804148.html
% https://www.mathworks.com/matlabcentral/answers/259957-how-to-apply-pca-correctly
%% Descritpion
% Description of first code block
% in math, if there is a n*m matrix, n represents the features of the
% original data set, m represents the number of obversations.
% For example, in a 2-d dimension, we have 7 obversations, then to
% calculate PCA in math, we have write it in a 2*7 matrix.

% However if we want to calcualte it in Matlab, we have to write it as 7*2,
% which means we have 7 obversations, each obversation has 2 features.
clear;
a = [-1,-2; -1,0; 0,0; 2,1; 0,1]; % each column has to minus its mean value.
[coeff,score,latent] = pca(a);
% coeff: repersents the principle componments
% score: represnts the projections of the original data on the principle
% component.

% We can also calculate it in a different way:
b = cov(a); % calculate the covariance matrix of a.
[v, d] = eig(b); % by definiation, eigen vectors should be the same as coeff.
% the column of v and coeff represents the principle componments, or
% eigenvectors.

