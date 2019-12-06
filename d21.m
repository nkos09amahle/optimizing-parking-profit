function [Dd2]=d21(p,D1, delta)
    if p(2)<p(1)-delta
        Dd2=D1;
    elseif p(2) >= p(1) && p(2) <=p(1)-delta 
        Dd2=D1*(p(1)-p(2))/delta;
    else p(1)<p(2);
        Dd2=0;
    end
end
