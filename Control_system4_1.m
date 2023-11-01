syms M1 M2 V1 V2 b1 b2 s k R
%라플라스 변환식에 포함된 변수들 선언

eqn1 = M1*s*V1+V1*(b1+b2)-V2*b2==R;
eqn2 = M2*s*V2+k*V2/s-b1*(V1-V2)==0;

sol = solve([eqn1,eqn2],[V1,V2])
%연립방정식 

pretty(sol.V1/R)
pretty(sol.V2/R)
%출력함수는 V1과 V2지만 transfer function 확인을 위해 입력으로 나누어줌



