function [Dd1]=d11(p,D1, delta)
    if p(1)<p(2)
        Dd1=D1;
    elseif p(1) >= p(2) && p(1) <p(2)+delta
        Dd1=D1*(delta+p(2)-p(1))/delta;
    else p(1)>=p(2)+delta;
        Dd1=0;
    end
end
