
function P1=simu
    
    pm=50;
    mu=5;    
    delta=6;%p_ii and p_ij values
    
    X(1)=mu+rand*(pm-mu);
    X(2)=mu+rand*(pm-mu);
    NN=25;
    lambda=25.5;
    Gen=125;
    MaxGen=10;
    
    x1=mu+(pm-mu).*rand(1,NN);
    x2=mu+(pm-mu).*rand(1,NN);    
    
    for I=1:MaxGen
        for ij=1:Gen
            for i=1:NN
                xN1(i)=x1(i)+lambda*(rand-0.5);
                if xN1(i)>=mu && xN1(i)<=pm && pr1([xN1(i), X(2)])>=pr1([x1(i), X(2)])
                    x1(i)=xN1(i);
                end
            end            
            for i=1:NN
                F1(i)=pr1([x1(i), X(2)]);
            end
            [FF1,Index1]=sort(F1);
            y(ij)=FF1(NN);
            X(1)=x1(Index1(NN));
        end
        
        for ji=1:Gen
            for i=1:NN
                xN2(i)=x2(i)+lambda*(rand-0.5);
                if xN2(i)>=mu && xN2(i)<=pm && pr2([X(1), xN2(i)])>=pr2([X(1), x2(i)])
                    x2(i)=xN2(i);
                end
            end
            for i=1:NN
                F2(i)=pr2([X(1), x2(i)]);
            end
            [FF2,Index2]=sort(F2);
            y(ji)=FF2(NN);
            X(2)=x2(Index2(NN));
        end
        z1(I)=pr1(X);
        z2(I)=pr2(X);
    end
    plot(1:MaxGen,z1,1:MaxGen,z2)
    grid
  
end