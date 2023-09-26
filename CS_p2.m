
% % % P2.15 문제
% syms x(t) m k s  b
% Dx=diff(x,t);
% D2x=diff(x,t,2);
% %각각 1계 2계 미분 표시
% 
% ode = D2x+k*x/m+b*Dx/m==0;
% %기계시스템 모델링
% 
% % %그냥 미분 방정식으로 풀었음
% % cond1=x(0)==1;
% % cond2=Dx(0)==0;
% % conds=[cond1 cond2];
% % d_ode=dsolve(ode,conds)
% 
% 
% ode_s=laplace(ode,s);
% % 모델링한 미분방정식을 라플라스 변환
% syms X
% %라플라스 변환된 입력함수를 X로 쓰기위한 변수 선언
% ode_s=subs(ode_s,[laplace(x(t),t,s),subs(diff(x(t), t), t, 0),x(0)],[X,0,1])
% % solve는 기호 변수에 대해서만 방정식을 풉니다. 따라서 solve를 사용하려면 먼저 laplace(x(t),t,s)와
% % subs(diff(x(t), t), t, 0)와 x(0)에 변수X와 초기치 0과 1을 대입
% X=solve(ode_s,X)
% %X에대하여 식 정리
% 
% pretty(ilaplace(X))
% plot(t,ilaplace(X))
% 
% % k=1; b=1; m=1;
% % t=0:0.2:30;
% % num=[b m];
% % den=[m b k];
% % G = tf(num,den)
% % 
% % impulse(G)