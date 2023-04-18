%Ratio of Geetha's age to Sita's is 3:4. Sum of their ages is 28. Find
%their ages.
%Age of Sita: x
%Age of Geetha: y
%Function1: 3*x-----infinite surface in x-y plane
%Function2: 4*y-------do
%Function3: x------do
%Function4: 28-y---------do
%Function1=Function2------Line1
%Function3=Function4------Line2
%Solution=point where line1 intercepts line2
clc; clear;
i3=1;
i5=1;
for i1=1:25
    for i2=1:25
    f1(i1,i2)=3*i1;
    f2(i1,i2)=4*i2;
    f3(i1,i2)=i1;
    f4(i1,i2)=28-i2;
    if (f1(i1,i2)==f2(i1,i2))
        solution(i3,:)=[i1,i2];
        i3=i3+1;
    end
    if (f3(i1,i2)==f4(i1,i2))
        solution2(i5,:)=[i1,i2];
        i5=i5+1;
    end
    end
end

x=1:1:25;
y=1:1:25;
figure(1)
mesh(x,y,f1);
hold on;
mesh(x,y,f2);

figure(2)
mesh(x,y,f3);
hold on;
mesh(x,y,f4);

figure(3)
for i4=1:i3-1
    plot(solution(i4,1),solution(i4,2),'ro','LineWidth',2);
    hold on;
end
for i6=1:i5-1
    plot(solution2(i6,1),solution2(i6,2),'g*','LineWidth',2);
    hold on;
end
axis([0 30 0 30])
grid on;

