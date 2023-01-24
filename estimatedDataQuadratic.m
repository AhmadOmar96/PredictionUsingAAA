function EstimatedData = estimatedDataQuadratic(w, x)
N = size(x,1);
    for i=1: N
        Estimation = w(1)*x(i,1) + w(2)*x(i,2) + w(3)*x(i,3) + w(4)*x(i,4)+ ...    
                           w(5)*x(i,1)*x(i,2) + w(6)*x(i,1)*x(i,3) + w(7)*x(i,1)*x(i,4) +...
                           w(8)*x(i,2)*x(i,3) + w(9)*x(i,2)*x(i,4) + w(10)*x(i,3)*x(i,4) +... 
                           w(11)*x(i,1)^2 + w(12)*x(i,2)^2 + w(13)*x(i,3)^2 + w(14)*x(i,4)^2 + w(15); 
        EstimatedData(i,1) = round(Estimation,2);
    end
end

