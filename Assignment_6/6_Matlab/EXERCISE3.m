function EXERCISE3
clc, clear
hold off;

n=7;

for r=n:-1:0
    d=r;
    [O,A,B,C,D,E,F,G,J,K,L,M,R,S] = findPoints(d,r);
    plotMech(O,A,B,C,D,E,F,G,J,K,L,M,R,S);
    hold off;
end

for d=0:1:n
    r=d;  
    [O,A,B,C,D,E,F,G,J,K,L,M,R,S] = findPoints(d,r);
    plotMech(O,A,B,C,D,E,F,G,J,K,L,M,R,S);
    hold off;
end

for r=n:-1:0
    d=n;  
    [O,A,B,C,D,E,F,G,J,K,L,M,R,S] = findPoints(d,r);
    plotMech(O,A,B,C,D,E,F,G,J,K,L,M,R,S);
    hold off;
end

for d=n:-1:0
    r=0;  
    [O,A,B,C,D,E,F,G,J,K,L,M,R,S] = findPoints(d,r);
    plotMech(O,A,B,C,D,E,F,G,J,K,L,M,R,S);
    hold off;
end

for d=0:1:n
    r=0;
    [O,A,B,C,D,E,F,G,J,K,L,M,R,S] = findPoints(d,r);
    plotMech(O,A,B,C,D,E,F,G,J,K,L,M,R,S);
    hold off;
end

for d=n:-1:0
    r=0;  
    [O,A,B,C,D,E,F,G,J,K,L,M,R,S] = findPoints(d,r);
    plotMech(O,A,B,C,D,E,F,G,J,K,L,M,R,S);
    hold off;
end

for d=0:1:n
    r=0;
    [O,A,B,C,D,E,F,G,J,K,L,M,R,S] = findPoints(d,r);
    plotMech(O,A,B,C,D,E,F,G,J,K,L,M,R,S);
    hold off;
end

for d=n:-1:0
    r=0;  
    [O,A,B,C,D,E,F,G,J,K,L,M,R,S] = findPoints(d,r);
    plotMech(O,A,B,C,D,E,F,G,J,K,L,M,R,S);
    hold off;
end


end