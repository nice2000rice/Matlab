# Matlab

# 9/27(수) 02:22 AM 
--- 
1. 최신제어공학 14판 P 2.15 문제 MATLAB 이용하여 라플라스 변환  
* **CS_p2.m** 파일 확인
* **subs()** 함수 사용법 확인 -> 변수대체
* 구해진 전달함수를 이용하여 num-분자.den-분모로 배열 지정해준뒤 G = tf(num,den) ->impulse(G)를 이용해
  그래프 확인가능
2. 제어공학 4주차 1차시 solve 함수 사용
---  
# 9/28(목) 03:11 AM
1. P2.26 / P2.37 풀이 작성
* **CS_p2.m** 파일 확인
2. MATLAB에서 커밋후 푸쉬 오류 발생
* GIT bash 에서 **git status** 확인하니 **git push** 하라고 나와서 다시 push함 
---  
# 10/07(토) 02:44 PM
1. 5주차 1차시 강의 예제 3.1 문제 풀이
* 상태공간방정식 ss 사용
* 배열선언
2. MATLAB 2023b 버전에서는 initial(상태공간방정식,초기치,시간) 함수를 사용할때 시간축을 [ $x_0$ $x$ ] 로 선언하지만 이전버전은 그냥 끝나는 시간을 입력
---  
# 10/10 (화) 10:19 PM
1.6주차 1차시 강의 Phase variable Canonical form 실습
* num과 den의 항 개수를 일치시켜주어야 함.
* state 함수의 배열을 만들어주는 tf2ss(num,den) 사용
* [A B C D] = tf2ss(num,den)
* MATLAB은 state 변수설정을 역순으로

$$\textbf{x}(t)=\begin{pmatrix}
x_1(t) \\
x_2(t) \\
x_3(t) \\
x_4(t) 
\end{pmatrix}=\begin{pmatrix}
\dot{x}_2(t) \\
\dot{x}_3(t) \\
\dot{x}_4(t) \\
z(t) 
\end{pmatrix}=\begin{pmatrix}
\dddot{z}(t) \\
\ddot{z}(t) \\
\dot{z}(t) \\
z(t) 
\end{pmatrix}$$

$$
\begin{aligned}
\dot{x}_1(t)&=\ddddot{z}(t)\\
&=-a_3\dddot{z}(t)-a_2\ddot{z}(t)-a_1\dot{z}(t)+u(t)\\
&=-a_3x_1(t)-a_2x_2(t)-a_1x_3(t)-a_0x_4(t)+u(t)
\end{aligned}$$

---
# 10/16(월) 09:10 PM
1.신호및시스템 2.8 컨볼루션 문제풀이

---
# 10/22(일) 01:11 AM 
1. 제어공학 3장 과제 풀이
* State Variable에서 ss2tf 함수사용법 익힘
* State transition matrix 를 이용하여 전달함수 구하는 법 익힘
* tf2ss 한번 사용
2. 제어공학 7주차 1차시 강의
3. 신호 및 시스템 합성곱 예제 풀이
4. **04:46 AM**제어공학 2장 상태 변수 풀이 추가

---
# 11/02(목) 05:37 AM
1. 제어공학 8주차 1차시 강의 
2. 라플라스변환 실습
* syms를 통해 매트랩에서 운동방정식 정의
* subs로 보기 쉽게 변환
* heaviside 함수 사용 -> 단위계단함수와 유사
* 전달함수를 문자로 만들고 step 그래프를 그리기 위해서는 구조체를 만들어주어야함
* T(s)를 numden함수를 이용하여 분자와 분모를 쪼갠후 sym2poly를 이용하여 각각의 계수를 벡터로 만듬
* tf함수를 이용하여 연속시간 모델링
* step 그래프 이용

