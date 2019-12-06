function [Dd3]=d13(p,D3)
    if p(1)<p(2)-1
        Dd3=D3;
    elseif p(1) >= p(2)-1 && p(1) <=p(2)+1
        Dd3=D3*(p(2)-p(1)+1)/2;
    else p(1)>=p(2)+1;
        Dd3=0;
    end
end
