#let thetaKr = $limits(theta)^\^$
#let thetaLn = $limits(theta)^\~$
#let TLN = $limits(theta_n)^\~$
= Теорема о единственности эффективной оценки

Пусть $limits(theta)^\^ "и" limits(theta)^~$ --- две эффективные оценки параметра распределения $L_xi (x, theta)$. Тогда 
$ limits(theta)^\^ equiv limits(theta)^~ space (P{overline(x_n) : limits(theta)^\^ (x_n) != limits(theta)^\~ (x_n)} = 0) $

Д-во:
Т.к. оценки эффективные, то 
$ 
M thetaKr = theta; M thetaLn = theta \
D thetaKr = D thetaLn = inf D thetaLn^* $

Введем $theta^* = (thetaKr + thetaLn) / 2$

$M theta^* = M ( (thetaKr + thetaLn) / 2) = 1/2 (M thetaKr + M thetaLn) = 1/2 (theta + theta) = theta$
Т.е. $theta^*$ --- несмещённая

$D theta^* = D ( (thetaKr + thetaLn) / 2)  = 1/4 (D thetaKr + D thetaLn + 2 "cov" (thetaKr, thetaLn)) = 1/2 D thetaLn + 1/2 "cov" (thetaKr, thetaLn)$

Оценим ковариацию:
$abs("cov" (thetaKr, thetaLn)) = abs(M (thetaKr - M thetaKr) (thetaLn - M thetaLn)) <= M abs(thetaKr - theta) (thetaLn - theta) limits(<=)^"нер-во"_"К-Б" sqrt(M abs(thetaKr - theta)^2) sqrt(M abs(thetaLn - theta)^2) = D thetaLn$

Таким образом:

$ 
D theta^* = abs(D theta^*) = 1/2 abs(D thetaLn + "cov"(thetaKr, thetaLn)) <= 1/2 (abs(D thetaLn) + abs("cov"(thetaKr, thetaLn))) = 1/2 (D thetaLn + D thetaKr) = D thetaLn = \ = inf D(.) => D theta^* = D thetaLn $

Тогда получаем:

$ 
D thetaLn = 1/2 D thetaLn + 1/2 "cov"(thetaKr, thetaLn) => "cov" (thetaKr, thetaLn) = D thetaLn 
$

Наконец:
$ 
r = "cov"(thetaKr, thetaLn) / (sqrt(D thetaKr) sqrt(D thetaLn)) = 1
=> thetaKr = a thetaLn + b 
$

Найдём эти a, b:
$ 
M thetaKr = a M thetaLn + b \
theta = a theta + b \
a = 1, space b = 0 
$ => $thetaKr = 1 * thetaLn \ thetaKr = thetaLn$. Таким образом эффективная оценка единственна.

= Неравенство Рао-Крамера
*ОПР.* Пераметрической статистической моделью называется ${XX_n, F_xi (x, theta) : theta in Theta}, Theta$ --- параметрическое множество.

$XX_n = {overline(X_n) = (x_1, dots, x_n)} $--- выборочное произвольное множество выбороке объёма n из распределения $xi$. Распределение при этом заранее известно.

*Опр.* Параметрическая модель называется регулярной, если 
+ Параметрическое множество $Theta$ --- открытое
+ Носитель распределения, т.е $A = {x : f_xi (x, theta) > 0}$ не зависит от параметра $theta$
+ Существует конечная производная
  $ (diff f (x, theta)) / (diff theta). space integral (diff f (x, theta)) / (diff theta) d x < + infinity $
+ Возможно дифф. по парам $theta$ дважды.
+ $ M ((theta ln f (x, theta) ) /(diff theta)) = 0, space M ((theta ln f (x, theta) ) /(diff theta))^2 < + infinity $

_Пример:_ ${XX_100; cal(N) (a, sigma^2) : a in (-infinity, infinity), sigma^2 in (0, + infinity)}$ --- нормальная параметрическая модель регуляр.

_Пример:_ ${XX_100, R[a,b] : a, b in (-infinity, infinity)}$ ---- равномерное параметрическое нерегулярное распределение.

*Теор.* Неравенство Рао-Крамера.

Пусть дана регулярная параметрическая модель ${XX_n, F_xi (x, theta) : theta in Theta}$, пусть $limits(theta_n)^~$ --- несмещенная оценка параметра $theta$, тогда
$ 
D limits(theta_n)^~ >= 1 / (n I (theta)), space "где" \
I(theta) = M ( (diff ln - f (xi, theta)) / (diff theta) )^2 - "информация по Фишеру в одном наблюдении."
$

Д-во: \
Рассмотрим наблюдение $overline(X_n) = (X_1, dots, X_n)$, где $X_i$ --- независимые одинаково распределенные случайные величины $f_(X_i) (x, theta) = f_xi (x, theta)$ функцию плотности.

$A$ --- носитель распределения, т.е. $A = {x : f_xi (x, theta) > 0}$. Тогда $overline(X)_n$ имеет 
$ f_(overline(X)_n) (t_1, dots, t_n) = limits(inter.sq.big)^n_(i = 1) f_(X_i) (t_i) $

$ limits(integral)_A f_(overline(X)_n) (overline(t)_n) d overline(t)_n = limits(integral)_(A crossmark A) f(x_1) (t_1) dots f_(x_n) (t_n) d t_1 dots d t_n = 1 $

$ 
diff / (diff theta) limits(integral)_(A^n) f_(x_1) (t_1, theta) dots f_(x_n) (t_n, theta) d t_1 dots d t_n = diff / (diff theta) = 1 
$

$
limits(inter.sq.big)^n_(i=1) limits(integral)_A (diff f_(x_i) (t_i, theta)) / (diff theta) d t_i = 0
$

$
limits(inter.sq.big)^n_(i=1) limits(integral)_A (diff ln f_(x_i) (t_i, theta)) / (diff theta) f_(x_i) (t_i, theta) d t_i = 0
$

$
limits(inter.sq.big)^n_(i=1) limits(integral)_A (diff ln f_(x_i) (t_i, theta)) / (diff theta) f_(x_i) (t_i, theta) d t_i equiv 0
$

Решим несмещенное $TLN$, т.е. $M TLN = theta$\
$TLN$ --- случайная величина с $f_(overline(X)_n) (overline(t)_n) = limits(inter.sq.big)^n_(i = 1) f_(X_i) (t_i)$

$M TLN = limits(integral)_(A^n) TLN (overline(t)_n f_(overline(X)_n)) (t_i, ) ... $

$ limits(integral)_(A^n) TLN overline(t)_n (diff ln f_(overline(X)_n) (overline(t_n), theta)) / (diff theta) $ = ...

$ 1 = limits(integral_(A^n)) (TLN - theta) (diff ln f_(overline(x)_n) (overline(t)_n), theta) / (diff theta) f_(overline(x)_n) (overline(t)_n, theta) d overline(t)_n $

$ 
1^2 <= underbrace(limits(integral)_(A^n) (TLN - theta)^2 f_(overline(x)_n) (overline(t)_n, theta) d overline(t)_n, D TLN) dot underbrace(limits(integral)_(A_n) ((diff ln f_(x_n) (overline(t)_n, theta)) / (diff theta))^2 f_(overline(x)_n) (overline(t)_n, theta) d overline(t)_n, I)
$

$ 
I = limits(integral)_(A_n) (diff / (diff theta) ln f_(overline(x)_n) (overline(t)_n))^2 f_(overline(x)_n) d overline(t)_n = limits(integral)_(A_n) (diff / (diff theta) ln limits(inter.sq.big)^n_(i = 1) f_(x_i) (t_i, theta) )^2 f_(overline(x)_n) d overline(t)_n = limits(integral)_(A_n) (limits(sum)^n_(i=1) (diff ln f_(x_i) (t_i, theta)) / (diff theta))^2 f_(x_1, dots x_n) (t_1, dots, t_n) d t_1 dots d t_n \

= limits(sum)^n_(i = 1) limits(integral)_(A_i) ( (diff ln f_(x_i) (t_i, theta)) / (diff theta))^2 f_(x_i) (t_i) d t_i + limits(sum)^n_(i = 1) limits(sum)^n_(j = 1) integral dots limits(integral)_(A_i) (diff ln f_(x_i)) / (diff theta) dot (diff ln f_(x_j)) / (diff theta) f_(x_i) f_(x_j) d t_i d t_j \ = limits(sum)^n_(i = 1) M ( (diff ln f_(x_i) (t_i, theta)) / (diff theta))^2 + limits(sum)^n_i limits(sum)^n_(j, i != j) M ( (diff ln f_(x_i)) / (diff theta) ) M( (diff ln f_(x_j)) / (diff theta) )
$

Т.о. $I = limits(sum)^n_(i = 1) M ( (diff ln f(xi, theta)) / (diff theta) )$ ...

Замечание: величина $e (TLN) = n D TLN I (theta)$ называется _показатель эффективности по Р-К_ $0 < e(TLN) <= 1$

Оценка TLN, для которой $e(TLN) = 1$ называется эффективной по Р-К.

По Т. о единственности эффективной оценки, эфф. Р-К является эфф.

Пример: на след паре.