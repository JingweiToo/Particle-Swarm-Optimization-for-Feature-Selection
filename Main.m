%-------------------------------------------------------------------%
%  Particle Swarm Optimization (PSO) source codes demo version      %
%-------------------------------------------------------------------%


%---Inputs-----------------------------------------------------------
% feat     : feature vector ( Instances x Features )
% label    : label vector ( Instances x 1 )
% N        : Number of particles
% max_Iter : Maximum number of iterations
% c1       : Cognitive factor
% c2       : Social factor
% w        : Inertia weight

%---Outputs-----------------------------------------------------------
% sFeat    : Selected features
% Sf       : Selected feature index
% Nf       : Number of selected features
% curve    : Convergence curve
%---------------------------------------------------------------------


%% Particle Swarm Optimization
clc, clear, close; 
% Benchmark data set 
load ionosphere.mat; 

% Set 20% data as validation set
ho = 0.2; 
% Hold-out method
HO = cvpartition(label,'HoldOut',ho);

% Parameter setting
N        = 10;
max_Iter = 100;
c1       = 2;     % cognitive factor
c2       = 2;     % social factor
w        = 1;     % inertia weight

% Particle Swarm Optimization
[sFeat,Sf,Nf,curve] = jPSO(feat,label,N,max_Iter,c1,c2,w,HO);

% Plot convergence curve
plot(1:max_Iter,curve);
xlabel('Number of iterations');
ylabel('Fitness Value');
title('PSO'); grid on;






