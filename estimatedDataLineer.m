function EstimatedData = estimatedDataLineer(w, x)
N = size(x,1);
    for i=1: N
        Estimation = w(1)*x(i,1) + w(2)*x(i,2) + w(3)*x(i,3) + w(4)*x(i,4) + w(5);
        EstimatedData(i,1) = round(Estimation,2);
    end
end

