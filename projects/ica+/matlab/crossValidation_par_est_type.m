% X : data; y: class labels; K = number of cross validation folds
% (usuallly K = 10); Lambda = [0.0625 0.125 0.25 0.5 1 2 4 8 16]; alphav
% = 1:-0.01:0.1;
% type = 'binomial' or 'multinomial'

function [wopt,best_cva,opt_lambda,opt_alpha,fit_opt] = crossValidation_par_est_type(X,y,K,Lambda,alphav,type)

options = glmnetSet;
options.alpha = alphav;


N = length(y);  % Number of Observations
[Indx,leftOver] = splitData(N,K);
I = 1:K;
if ~isempty(Lambda)
   Lambda = fliplr(Lambda);
   opts.lambda = Lambda;
   opts.nlambda = length(Lambda);
   opts.lambda_min = min(Lambda);
   options = glmnetSet(opts);
else
   fit = glmnet(X,y,type,options);
   Lambda = fit.lambda;
   opts.lambda = Lambda;
   opts.nlambda = length(Lambda);
   opts.lambda_min = min(Lambda);
   options = glmnetSet(opts);
end
cum_cva = zeros(length(alphav),length(Lambda));
for fold = 1:K
   ix = find(I ~= fold);
   trIx = Indx(ix,:); %Train Indices
   trIx = trIx(:);
   trIx = [trIx;leftOver'];
   tstIx = Indx(fold,:);
   tstIx = tstIx(:);

   Xtrain = X(trIx,:); % Training X
   ytrain = y(trIx);   % Training y
   for a = 1:length(alphav)   % grid search for alpha
       options.alpha = alphav(a);
       fit = glmnet(Xtrain,ytrain,type,options);
       Xtest = X(tstIx,:);
       ytest = y(tstIx);
       Yest = glmnetPredict(fit, 'class', Xtest); %predict the response
       Ytest = repmat(ytest,1,length(Lambda));
       Indxc = Ytest == Yest;
       cva = sum(Indxc,1)./length(ytest); %cross validation accuracy
       cum_cva(a,:) = cum_cva(a,:) + cva;     % Accumulate sqaured
% error for each fold
   end
end
cum_cva = cum_cva./K;
% Find Optimal Parameters
no_lambda = length(fit.lambda);
best_cva = 0;
for a = 1:length(alphav)
   for l = 1:no_lambda
       CVA = cum_cva(a,l);
       if CVA > best_cva
           opt_alpha = alphav(a);
           opt_lambda = Lambda(l);
           best_cva = CVA;
       end
   end
end
%Train with Optimal Parameters
options.alpha = opt_alpha;
fit_opt = glmnet(X,y,type,options);
wopt = glmnetCoef(fit_opt, opt_lambda);



function [indx,leftOver] = splitData(N,K)

M = floor(N/K);            %No of Samples in each group
Nr = randsample(N,N)';
indx = [];
cnt = 1;
for k = 1:K
   indx = [indx; Nr(cnt:cnt+M-1)];
   cnt = cnt + M;
end
leftOver = Nr(cnt:end);
