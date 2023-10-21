%State Space Equation - Phase variable canonical form

syms b3 b2 b1 b0 a3 a2 a1 a0 s

num = [0 b3 b2 b1 b0];
den = [1 a3 a2 a1 a0];

[A B C D]=tf2ss(num,den)
%tf2ss는 x'(t)=Ax(t)+Bu(t) ,y(t) = Cx(t)+Du(t) 를 만들어주는 함수
   