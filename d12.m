function [Dd2]=d12(p,D2, delta)
    if p(1)<p(2)+delta
        Dd2=D2;
    elseif p(1) >= p(2)-delta && p(1) <=p(2)
        Dd2=D2*(p(2)-p(1))/delta;
    else p(1)>=p(2);
        Dd2=0;
    end
end
