function [lb,ub,dim,fobj] = Get_Model_details(model)

switch model
    case 'linear'
        fobj = @linear;
        lb=-100;
        ub=100;
        dim=5;
        
    case 'quadratic'
        fobj = @quadratic;
        lb=-100;
        ub=100;
        dim=15;                  
end
end

% linear
function ERROR = linear(w, x, Targets)
N = size(x,1);
    for i=1: N
    %EstimatedData(i) = w(1)*x(i,1) + w(2)*x(i,2) + w(3)*x(i,3) + w(4)*x(i,4) + w(5); 
        EstimatedData(i) = w(2)*x(i,1) + w(3)*x(i,2) + w(4)*x(i,3) + w(5)*x(i,4)+ w(1); 
    end

    ERROR = sum((EstimatedData - Targets).^2);
end


% quadratic
function ERROR = quadratic(w, x, Targets)
N = size(x,1);
    for i=1: N
        EstimatedData(i) = w(1)*x(i,1) + w(2)*x(i,2) + w(3)*x(i,3) + w(4)*x(i,4)+ ...    
                           w(5)*x(i,1)*x(i,2) + w(6)*x(i,1)*x(i,3) + w(7)*x(i,1)*x(i,4) +...
                           w(8)*x(i,2)*x(i,3) + w(9)*x(i,2)*x(i,4) + w(10)*x(i,3)*x(i,4) +... 
                           w(11)*x(i,1)^2 + w(12)*x(i,2)^2 + w(13)*x(i,3)^2 + w(14)*x(i,4)^2 + w(15); 
    end

    ERROR = sum((EstimatedData - Targets).^2);
end



