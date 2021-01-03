# Particle Swarm Optimization for Feature Selection

![Wheel](https://www.mathworks.com/matlabcentral/mlc-downloads/downloads/149c8b02-a35c-4c8d-85e4-f156ee3b9404/f18c8f23-7f53-45f8-b833-1891b718dc9e/images/1596418985.JPG)

## Introduction
* This toolbox offers a Particle Swarm Optimization (PSO) method
* The < Main.m file > illustrates the example of how PSO can solve the feature selection problem using benchmark data-set.

## Input
* *feat*     : feature vector ( Instances *x* Features )
* *label*    : label vector ( Instances *x* 1 )
* *N*        : number of particles
* *max_Iter* : maximum number of iterations
* *c1*       : Cognitive factor
* *c2*       : Social factor
* *w*        : Inertia weight


## Output
* *sFeat*    : selected features
* *Sf*       : selected feature index
* *Nf*       : number of selected features
* *curve*    : convergence curve

### Example
```code
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
```

## Requirement
* MATLAB 2014 or above
* Statistics and Machine Learning Toolbox

