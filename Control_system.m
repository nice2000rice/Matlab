% syms 로 변수선언
% stepfun(t,0) 2023 버전에서 사용하려면 애드온에서 control system tool box 설치
syms t s a f(tau)

eqn_t1 = stepfun(t,0); 
%;은 출력 무시가능, Matlab은 t>=0 always 그러므로 1 출력

eqn_s1 = laplace(eqn_t,s);
%라플라스변환


pretty(eqn_s1);
%가독성 좋게 식 변경

eqn_t2= exp(-a*t)
%exp() => e^(-at) 함수 표현

eqn_s2=laplace(eqn_t2,s);

eqn_t21=ilaplace(eqn_s2,t);
%라플라스 역변환

eqn_t3 = int(f(tau),tau,-inf,t)
%적분 표현 f(t) 사용안하고 f(tau) 쓴 이유는 적분구간에서 t가 중복되기 때문

eqn_s3= laplace(eqn_t3);

pretty(eqn_s3);