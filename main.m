clc;
clearvars;

Delta = 1.5;
Ap = 0.5;
e = 0.3;

runtime = 1;
N=100;
model='quadratic'; % linear, quadratic 
MaxHesaplama=500; 

Data = cell2mat(struct2cell(load('EnerjiData(1979-2015).mat')));
Inputs = Data(:, 3:6);
Targets = Data(:, 2)';

[LB,UB,D,fobj]=Get_Model_details(model);

for run=1: runtime
    tic
    [ObjMin, BestColony] = AAA(fobj, Inputs, Targets, MaxHesaplama, LB, UB, N, D, Delta, Ap, e);
    toc 
end

%EstimatedData_1979_2011 = estimatedDataLineer(BestColony,Inputs)
EstimatedData_1979_2011 = estimatedDataQuadratic(BestColony,Inputs)




