// NOTE: Лекция 6.
#let eqcircle = circle(height: 1em, stroke: 0.5pt, [#v(-0.3cm) #align(center + horizon, $eq$)])

== Пример (построения Э.Ф.Р)

Пусть $xi$ --- температура воздуха $xi tilde cal(L)(x, theta)$


$
(x_1, dots, x_10) = (5;6;10;9;6;6;3;2;3,3) #[--- выборка] // Why the heck are there semicolons and a comma at the end?
$

Вариационный ряд:
$
  (2, 3, 3, 3, 5, 6, 6, 6, 9, 10)
$

Точечный вариационный ряд
#table(
  columns: 7,
  $x_i$, $2$, $3$, $5$, $6$, $9$, $10$,
  $n_i$, $1$, $3$, $1$, $3$, $1$, $1$,
  $w_i$, $0.1$, $0.3$, $0.1$, $0.3$, $0.1$, $0.1$
)
// FIX: Здесь должен быть график на фотке 1

Интервальный вариационный ряд:
$
R = x_(max) - x_(min) = 10 - 2 = 8 #[--- размах выборки]\
m = 3\
h = 2.5
$

// FIX: Здесь должна быть числовая прямая на фотке 2
$
F_xi (x) = P{ xi < x }
$
#table(
  columns: 5,
  $x_i ; x_(i + 1)$, $[1, 3, 5]$, $(3, 5, 6]$, $(6, 8, 5]$, $[8.5, 11]$,
  $n_i$, $4$, $4$, $0$, $2$ 
)

// FIX: Здесь должна быть гистограмма частот на фотке/скрине 3

$
limits(F_n)^(~) = cases(
  space space 0\; quad x lt.eq 2,
  0.1\; space 2 lt.eq x lt.eq 3,
  0.4\; space 3 lt.eq x lt.eq 5,
  0.5\; space 5 lt.eq x lt.eq 6,
  0.8\; space 6 lt.eq x lt.eq 9,
  0.9\; space 9 lt.eq x lt.eq 10,
  space space 1\; quad x gt.eq 10
)\
limits(F_n)^(~) = F_xi (x)
$
// FIX: Здесь должна быть фотка 4

== Точечные оценки параметра наблюдения
Пусть $xi$ --- наблюдаемая случайная величина

$
xi ~ cal(L) (x, theta)
$
$theta$ --- параметр неизветсности

По выборке $overline(X)_n = (X_1, X_2, dots, X_n)$ требуется оценить параметр $theta$

$X_i #[--- нор случайная величина] X_i ~ cal(L) (x, theta)$

/ Опр.: Статистикой назывется случайная величина $T$
  $ T(overline(X)_n) = f (X_1, dots, X_n) $

Например, порядковая статистика

$
theta_([1]) = T_([1]) = min {X_1, dots, X_n} #[--- первая поядковая статистика]\
theta_([n]) = T_([n]) = max {X_1, dots, X_n} #[--- n-ая поядковая статистика]\
theta_([(n + 1)/2]) = M e #[--- медиана, n - нечетная]\
M e = 1/2 (theta_([n/2]) + theta_([(n + 1)/2])) #[если четное]
$

/ Опр.: Оценкой параметра $theta$ называется случайная величина
  $ limits(theta_n)^~ = f (X_1, dots, X_n) $

$f$ --- измеримая функция

/ Оценка $limits(theta_n)^~$ параметра $theta$ называется не смещенной: если
  $ M limits(theta_n)^~ = theta $

/ Оценка $limits(theta_n)^~$ параметра $theta$ называется состоятельной: если
  $ limits(theta_n)^~ ->^p theta $
  $ forall epsilon > 0 P{|overline(X)_n : limits(theta)^~ (X_n) - theta| gt.eq epsilon} ->_(n -> infinity) 0 $

// NOTE: у вас из государственного только экзамен))

/ Оценка $limits(theta_n)^~$ параметра $theta$ называется эффективной: если
  $ D limits(theta_n)^~ = limits(i n f)_(limits(theta_n)^~) space D(limits(theta_n)^~) $

Эффективная оценка не всегда существует, но оценки можно сравнивать

Говорят, что оценка $limits(theta_1)^~$ лучше оценки $limits(theta_2)^~$, если
$
  D(limits(theta_1)^~) < D(limits(theta_2)^~)
$

/ Опр. Выборочным средним: называется
  $ overline(x) = 1/n limits(sum)_(i = 1)^n X_i $

/ Опр. Выборочной дисперсией(смещенной): называется
  $ s^2 = 1/n limits(sum)_(i = 1)^n (X_i - overline(x))^2 $

/ Опр. Выборочной дисперсией(несмещенной): называется
  $ limits(sigma^2)^~ = 1/(n - 1) limits(sum)_(i = 1)^n (X_i - overline(x))^2 $

Заметим, что $s^2 < limits(sigma^2)^~$, т.к. $limits(sigma^2)^~ = n/(n - 1) s^2$
при этом $s^2 ->_(n -> infinity) limits(sigma^2)^~$

/ Теорема (несмещеннаяи состоятельная оценка математического ожидания):
  Пусть $X_1, dots, X_n$ --- выборка из распределения $cal(L)$ с $M xi = a < + infinity$
  Тогда несмещенной и состоятельной оценкой $M xi$ является выборочная средняя
  $overline(x)$

*Доказательство:*

*Несмещенность:* $M overline(x) = a$; ($M overline(x) = M xi$)

$
M overline(x) = M (1/n limits(sum)_(i = 1)^n X_i) = 1/n limits(sum)_(i = 1)^n M X_i eqcircle\
mat(delim: "[",
  X_i ~ xi;
  M X_i = M xi;
)= 1/n limits(sum)_(i = 1)^n M xi = 1/n dot n dot a = a
$

*Состоятельность:* $overline(X)_n ->^p a$

По неравенству Чебышёва

$
  forall epsilon > 0 space P{|overline(X)_n - a| gt.eq epsilon} lt.eq
  (D overline(X))/epsilon^2 = 1/epsilon^2 D (1/n limits(sum)_(i = 1)^n X_i) =\
  = 1/epsilon^2 dot 1/n^2 limits(sum)_(i = 1)^n D (X_i) = 1/epsilon^2 dot 1/n^2 limits(sum)_(i = 1)^n D xi =\
  = 1/epsilon^2 dot 1/n^2 dot n dot sigma^2 = sigma^2 / (n epsilon^2) ->_(n -> infinity) 0
$

Т.к. $P(A) gt.eq 0$, то $exists limits(lim)_(n -> infinity) P{|overline(X) - a| gt.eq epsilon} = 0 => overline(X) ->^p a$

т.е. состоятельная оценка

