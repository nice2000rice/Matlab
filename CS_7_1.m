% %ss2tf 연습 
% % State Space Equation - Phase variable canonical form
% 
% syms b3 b2 b1 b0 a3 a2 a1 a0 s
% 
% num = [0 b3 b2 b1 b0];
% den = [1 a3 a2 a1 a0];
% 
% [A B C D]=tf2ss(num,den)
% 
% %tf2ss는 x'(t)=Ax(t)+Bu(t) ,y(t) = Cx(t)+Du(t) 를 만들어주는 함수
% 
% Phi = inv(s*eye(4)-A);
% %역함수 정의 eye 함수는 주대각성분이 1이고 나머지는 0인 행렬
% %A행렬과 사이즈를 맞추기위해 eye(4)선언
% G = C*Phi*B+D;
% %G는 ss2tf를 사용하지 못하여 정의를 이용하여 
% % 전달함수를 구한 변수
% pretty(G)
% 
% % 예제
% syms s
% A=[-3, 6 ,0;0, -2, -20;0, 0, -5];
% B=[0;5;1];
% C=[1, 0, 0];
% D=0;
% 
% [num,den]=ss2tf(A,B,C,D)
% sys=ss(A,B,C,D)
% % ss2ft 함수 사용 
% Phi=inv(s*eye(3)-A);
% G=C*Phi*B+D;
% [n d]=numden(G) 
% %(sI-A)BU=X 사용
% %위에서 구한 전달함수를 이용하여 state variable 구해보기
% num=sym2poly(n) %분자의 계수를 s의 고차항으로 나타냄.
% den=sym2poly(d)
% [A B C D]=tf2ss(num,den)

syms k1 k2 b1 b2 m1 m2 s
A=[0 0 1 0;0 0 0 1;-k1/m1 k1/m1 -b1/m1 b1/m1;k1/m2 -(k1+k2)/m2 b1/m2 -(b1+b2)/m2];
B=[0;0;1/m1;0];
C=[1 0 0 0];
D=0;

Phi=inv((s*eye(4)-A));
G=C*Phi*B+D
[n d]=numden(G)


num = flip(coeffs(n,s))
den = flip(coeffs(d,s))
% coeffs 는 sym2poly와 다르게 저차항부터 나타냄 그러므로 flip을 이용해 배열을  
% 뒤집어줌

[A B C D]=tf2ss(num,den)


% syms s t tau;
% 
% A=[0 -2;1 -3];
% B=[2;0];
% C=[0 3];
% D=0;
% 
% Phi(s)=inv((s*eye(2)-A));
% Phi_t=ilaplace(Phi(s));
% Phi_tau=subs(Phi(t),t,t-tau);
% x_0 =[0;0];
% x=Phi_t*x_0 + int(Phi_tau*B, tau,[0,t])
% y=C*x
% t_=0:0.1:10;
% plot(t_,subs(y,t,t_))