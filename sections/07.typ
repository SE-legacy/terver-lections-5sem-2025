// NOTE: Лекция 7. 15.10.2025

#let eqcircle = circle(height: 1em, stroke: 0.5pt, [#v(-0.3cm) #align(center + horizon, $eq$)])
== Теорема (эффективность оценки мат. ождания) 
Пусть $(X_1, X_2 , dots, X_n) = overline(X)_n ~ cal(L)_xi (x, theta)$, $M xi = a
< + infinity$ Выб. среднее $overline(x)$ является эффективной оценкой $M xi$

*Доказательство:*

Доказано, что $M overline(x) = a$ (несмещенное). Покажем, что $D overline(x) = 
i n f D limits(theta_n)^~$ $limits(theta_n)^~$ --- несмещенная линейная оценка

Рассмотрим

$
limits(theta_n)^~ = limits(sum)^n_(i = 1) alpha_i X_i

D limits(theta_n)^~ = D limits(sum)_(i = 1)^n  alpha_i X_i = 
limits(sum)_(i = 1)^n alpha_i^2 overbrace(D X_i, = sigma^2) = sigma^2 alpha_i^2
$

Заметим, что $limits(sum)_(i = 1)^n alpha_i = 1$; $sigma^2$ --- характеристика
$xi => $ $min$ может быть достигнут только как $min g(overline(alpha)) = 
limits(sum)_(i = 1)^n alpha_i^2$

Применим метод поиска условного $min$ составим функцию Лагранжа

$
cal(L) (alpha_1, dots, alpha_n) = limits(sum)_(i = 1)^n alpha_i^2 + lambda (
limits(sum)_(i = 1)^n alpha_i - 1
)
$

$
cases(
  (nu alpha)/(nu alpha_i) = 2 alpha_i + lambda = 0\; quad forall i = overline(1\, n),
  (nu alpha)/(nu lambda) = limits(sum)_(i = 1)^n alpha_i - 1 = 0
)
$
$
limits(sum)_(i = 1)^n (- lambda / 2) = 1\
lambda = - 2/n 
  alpha_i = lambda / 2,
$

Получили , что $alpha_i = - lambda / 2 = (- 1/2) dot (- 2/n) = 1/n$

$
=> g(overline(alpha)) = limits(sum)_(i = 1)^n alpha_i^2 #[--- достигает минимума при] alpha_i = 1/n
$

$=>$ эффективность является $limits(theta_n)^~ = limits(sum)_(i = 1)^n 1/n 
overline(X) = 1/n limits(sum)_(i = 1)^n X_i = overline(x)$

== Теорема (о несмещенной и состоятельной оценке дисперсии)
Пусть $overline(X)_n = (X_1, X_2, dots, X_n) ~ cal(L)_xi (x, theta)$, с $M xi =
a < + infinity$, $D xi = sigma^2$.

Несмещенной состоятельной оценкой дисперсии является 

$
limits(sigma^2)^~ = 1/(n - 1) dot limits(sum)_(i = 1)^n (X_i - overline(X))^2
$

Несмещенность $M limits(sigma^2)^~ = sigma^2$

$
M limits(sigma^2)^~ = M (1/(n - 1) dot limits(sum)_(i = 1)^n (X_i - overline(X))^2)
= 1/(n - 1) limits(sum)_(i = 1)^n (M X_i^2 - 2 M X_i overline(X) + M overline(X)^2)
eqcircle
$

Рассмотрим

$
checkmark quad M X_i^2 = M xi^2 = D xi + (M xi)^2 = sigma^2 + a^2
$

$
checkmark checkmark quad M X_i^2 overline(X) = M ( X_i dot 1/n limits(sum)_(j = 1)^n
X_j) = 1/n ( M (X_i X_1) + (X_i X_2) + dots + (X_i X_j) + dots + (X_i X_n)) =\
= 1/n ( M X_i M X_1 + M X_i M X_2 + dots + M X_i M X_j + dots + M X_i X_n) =\
= 1 / n (a^2 + dots a^2 sigma^2 + a^2) = (n a^2 + sigma^2) / n = a^2 + sigma^2/n
$

$
checkmark checkmark checkmark quad M overline(X)^2 = M (1/n limits(sum)_(i = 1)^n
X_i overline(X)) = 1/n limits(sum)_(i = 1)^n (M X_i overline(X) = 1/n dot n (a^2 + sigma^2/n)
= a^2 + sigma^2/n
$

$
eqcircle 1/(n - 1) limits(sum)_(i = 1)^n (alpha^2 + sigma^2 - 2 (alpha^2 
+ sigma^2/n) + alpha^2 + sigma^2/n) = n/(n - 1) (a^2 + sigma^2 - a^2 - sigma^2/n)
= (sigma^2 (n - 1))/n dot n/(n - 1) = sigma^2
$

== Теорема (о несмещенной и состоятельной оценке функции распределения $F_xi (x))$

Пусть $overline(X)_n = (X_1, X_2, dots, X_n) ~ cal(L)_xi (x, theta)$,
с функцией распределения $F_xi (x) = P {xi < x}$
#let efr = "эмперической функцией распределения"
Несмещёнными состоятельной оценкой этой функции распределения является
эмпирическая функция распределения (ЭФР) 
$ 
  limits(F_n)^~ (x) = 1/n limits(sum)_(i=1)^n e (x - X_i), quad
  #[где] 
  e(x) = cases(
    1\, x > 0,
    0\, x <= 0
  )
$

Покажем, что она несмещенная и состоятельная

_Доказательство:_ Найдём характеристики величины $e (x - X_i)$.
Эта величина дискретная:
// TODO: таблица

#table(
  columns: (auto, auto, auto),
  $e (x - X_i)$, $0$, $1$,
  $P$, $P{ x - X_i <=0}$, $P{x - X_i > 0 }$,
  $ $, $P{X_i >= x}$, $P{X_i < x}$
)


$ M e (x-X_i) = 0 * P {X_i >= x} + 1 * P {X_i < x} = P {X_i < x} 
  = F_(x_i) (x) = F_xi (x) $

$ 
  M e^2 (x-X_i) = P {X_i < x} = F_(x_i) (x) = F_xi (x)\
  => D_e (x-X_i) = F_xi (x) - F_xi^2 (x) = 
  // Меня Миронов покусал
  underbrace( F_xi (x) (1 - F_xi (x))
            , #[ограничено, так как] 0 <= F_xi(x) <= 1 )

$

Несмещенное $M limits(F_n)^~ (x) = M (1/n limits(sum)_(i = 1)^n e (x - X_i)) 
= 1/n limits(sum)_(i = 1)^n M e (x - X_i) = 1/n limits(sum)_(i = 1)^n F_xi (x) 
= F_xi (x)$

Теперь покажем состоятельность. Воспользуемся неравенством Чебышёва.

$
  forall epsilon > 0 P {abs(limits(F_n)^~ - F_xi (x)) >= epsilon} <= 
  (D limits(F_n)^~) / epsilon^2 
  = 1 / epsilon^2 1/n^2 limits(sum)_(i = 1)^n D e (x - X_i) =\

  = n/(n^2 epsilon^2) F_xi (x) (1 - F_xi (x)) <= 1/(4 n epsilon^2)
  -> 0 #[при] n -> +infinity => exists limits(lim)_(n -> +infinity) 
  P {abs(limits(F_n)^~ - F_xi (x)) >= epsilon} = 0
$

То есть $limits(F_n)^~ ->^P F_xi (x)$ --- // TODO: дописать






