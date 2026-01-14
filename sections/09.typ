05.11, пример для Т. Р-К

*Пример:* Показать, что $overline(x)$ является эффективной по Р-К оценкой параметра a распределения $cal(N)(a; sigma^2)$.

*Решение:* $(x_1, dots, x_n) ~ cal(N)(a; sigma^2): M X_i = a, space D X_i = sigma^2$. Вычисмлим $e(overline(x)) = D (overline(x)) dot n space I(a)$

$ D(overline(x)) = D (1/n limits(sum)^n_(i = 1) X_i) = 1 / (n^2) limits(sum)^n_(i = 1) D X_i = 1 / (n^2) dot n sigma^2 = sigma^2/n $
$ 
I(a) = 
M ((partial ln f (xi, a)) / (partial a))^2 = \
M ((partial f_n) / (partial a) (1 / (sqrt(2 pi)) e^(-(xi - a)^2/(2 sigma^2)) ))^2 = \
M ( partial/(partial a) (- 1/2 ln(2 pi) - (xi - a)^2/(2 sigma^2) ) )^2 =\
M ( + (2 (xi - a))/(2 sigma^2) )^2 = \
1 / sigma^4 M (xi - a)^2 = sigma^2 / sigma^4 = 1 / sigma^2 $

$ e(overline(x)) = sigma^2/n dot n dot 1 /sigma^2 = 1 $

Т.к. $e(overline(x)) = 1$, то $overline(x)$ эффективна по Р-К, по теореме о единственности эффективной оценки $overline(x)$ эффект. оценка $M xi$ в $cal(N) (a; sigma^2)$

= Интервальные оценки
Пусть $(X_1, dots, X_n) ~ cal(L)_xi (x, theta), "где" theta$ --- неизвестный параметр.

Пусть $n$ "мало" ($n <= 30 div 50$)

Для несмещенных и состоятельных оценок имеет место $overline(theta)_n approx.not theta$

*Опр.* Доверительным интервалом надежности $gamma$ называется интервал со случайными концами $(overline(theta)_1, overline(theta)_2)$ такой, что $P{theta in (overline(theta)_1, overline(theta)_2)} >= gamma$. $gamma$ --- надежность доверительного интервала = доверительная вероятность.

$ cases(
  reverse: #true,
  overline(theta)_1 = f_1 (X_1, dots, X_n),
  overline(theta)_2 = f_2 (X_1, dots, X_n)
) => overline(theta)_1, overline(theta)_2 - "зависимые случайные величины" $

= Построение доверительных интервалов для параметров $cal(N)(a; sigma^2)$
== Лемма Фишера
Пусть $(X_1, dots, X_n)$ --- выборка из $cal(N)(a, sigma^2)$. Тогда $overline(x)$ и $limits(sigma^2)^~$ --- независимые случайные величины и 

$
(overline(x) - a) / (sigma / sqrt(n)) ~ cal(N) (0, 1); space (overline(x) - a) / (limits(sigma)^~ / sqrt(n)) ~ T(n - 1); sigma^2/(limits(sigma^2)^~ / n) ~ chi^2 (n - 1) \

chi^2 (n) = xi_1^2 + xi_2^2 + dots + xi_n^2; "где" xi_i ~ cal(N) (0, 1); "независимы"
$

// фото 1

== Д. И. для параметра $a$ распределения $cal(N) (a; sigma^2)$ при известном $sigma^2$

Пусть $X_1, dots, X_n ~ cal(N) (a; sigma^2); gamma$ --- задано.\
Требуется построить $(limits(a_1)^~, limits(a_2)^~)$ такой, что $P{a in (limits(a_1)^~, limits(a_2)^~)} >= gamma$

По лемме Фишера:
$
(overline(x) - a) / (sigma / sqrt(n)) ~ cal(N) (0; 1) => forall t "можем вычислить"
$

$
P{-t < (overline(x) - a) / (sigma / sqrt(n)) < t} = F_(xi_0) (t) - F_(xi_0) (-t) limits(=)^(xi_0 ~ cal(N) (0, 1)) 0.5 + Phi(t) - 0.5 - Phi(t) limits(=)^"нечётн." Phi(t) + Phi(t) = 2 Phi(t)
$

Подберем t такое, чтобы $2 Phi(t) = gamma$. Тогда

$
P{-t < (overline(x) - a) / (sigma / sqrt(n)) < t} = P {overline(x) - t sigma / sqrt(n) < a < overline(x) + t sigma/sqrt(n)} = P {limits(a_1)^~ < a < limits(a_2)^~} >= gamma
$

== Д. И. для параметра $a$ распределения $cal(N) (a; sigma^2)$ при неизвестном $sigma^2$

// фото 2

$
P {-t_gamma < (overline(x) - a) / (sigma / sqrt(n)) < t_gamma} = F_T (t_gamma) - F_T(-gamma) = limits(integral)_(-t_gamma)^(t_gamma) f_T (x) d x
$

Выберем $t_gamma$ так, чтобы интеграл был равен $gamma$

Тогда для найденного $t_gamma$ д. и. 
$
(limits(a_1)^~, limits(a_2)^~) = (overline(x) - t_gamma limits(sigma)^~/sqrt(n); overline(x) + t_gamma limits(sigma)^~/sqrt(n))
$

== Д. И. для параметра $sigma^2$ распределения $cal(N) (a; sigma^2)$
Пусть $X_1, dots, X_n ~ cal(N) (a; sigma^2); gamma - "задан"$\
Требуется построить $(limits(sigma_1)^~, limits(sigma_2)^~)$, т.ч. $P {sigma in (limits(sigma_1)^~, limits(sigma_2)^~)} >= gamma$

*Решение:* По лемме Фишера 
$
sigma^2/(limits(sigma^2)^~/n) ~ chi^2 (n - 1)
$

Пусть $f_(chi^2)$ --- функция плотности случайной величины $chi^2(n - 1)$. Подберем $q_1, q_2$ такие, что 

$
limits(integral)_0^(q_1) f_(chi^2) x d x = (1 - gamma) / 2 \
limits(integral)_(q_2)^(+infinity) f_(chi^2) x d x = (1 - gamma) / 2 \
$

Тогда $limits(integral)_(q_1)^(q_2) f_(chi^2) x d x = gamma $

$
P {q_1 < sigma^2 / (limits(sigma^2)^~ / n) < q_2} = limits(integral)_(q_1)^(q_2) f_(chi^2) x d x = gamma 
$

Следовательно, 

$
P {q_1 limits(sigma^2)^~ / n < sigma^2 < q_2 limits(sigma^2)^~ / n} = P {limits(sigma)^~ sqrt(q_1 / n) < sigma < limits(sigma)^~ sqrt(q_2 / n)} >= gamma
$

Таким образом доверительный интервал имеет вид:

$
(limits(sigma_1)^~, limits(sigma_2)^~) = (limits(sigma)^~ sqrt(q_1 / n); limits(sigma)^~ sqrt(q_2 / n)) 
$