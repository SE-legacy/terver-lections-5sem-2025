// NOTE: Лекция 12. 26.11.2025

$
  phi(overline(X)_n)
    = e^((n (a_1 - a_0) overline(x))/sigma^2
          - (n (a_1^2 - a_0^2) overline(x))/sigma^2 )
$
// TODO: микро формула с P{}

Пусть верна гипотеза $H_0: a = a_0$.

Решим неравенство

$
  phi (overline(x))_n >= C_y
$

$
  phi(overline(X)_n)
    = e^((n (a_1 - a_0) overline(x))/sigma^2
          - (n (a_1^2 - a_0^2) overline(x))/sigma^2 )
$

$
  ((a_1 - a_0) n overline(x))/sigma^2 - ( (a_1^2 - a_0^2)n overline(x))/sigma^2
    gt.eq ln C_phi\
  n overline(x) gt.eq [ln C_phi + (n (a_1^2 - a_0^2))/(2 sigma^2)]
    dot sigma^2 / (a_1 - a_0)\
  sum_(i=1)^n x_i >= (sigma^2 ln C_phi) / (a_1 - a_0) + (n (a_1 + a_0)) / 2 = C
$

Рассмотрим случайную величину $Y = sum_(i=1)^n X_i; quad X_i ~ cal(N) (a, sigma^2)$, где
$X_i$ --- незваис случайная величана

Тогда

$
cases(reverse: #true,
  M Y = M (limits(sum)_(i = 1)^n X_i) = limits(sum)_(i = 1)^n M X_i = n a,
  D Y = D (sum_(i=1)^n) = n sigma^2
) Y ~ N (n a; n sigma^2)
$


$(Y - n a) / (sigma sqrt(n)) ~ cal(N) (0; 1)$

Заметим, что если верно $H_0: a = a_0$, то $(sum X_i - n a_0) / (sigma sqrt(n)) ~ cal(N) (0; 1)$.
Но если $H_0$ ложно, то есть \ $H_1: a = a_1$, то верно это:

Тогда $(limits(sum) X_i = n a_1)/(sigma sqrt(n)) ~ N (0, 1)$

// FIX: Рисунок 1

Найдем границу критической области $C$

$
  P { phi(X_n) >= C_phi | H_0 }
    = P { limits(sum)_(i = 1)^n x_i >= C_phi | H_0: a = a_0 } = \
    = P { (limits(sum)_(i=1)^n X_i - n a_0) / (sigma sqrt(n))
    >= (C - n a_0) / (sigma sqrt(n)) } = alpha
  = 1 - F_(xi_0) (C - n a_0) / (sigma sqrt(n))\

  P{xi_0 gt.eq t } = 1 - P{ xi_0 < t} = 1 - F_xi_0 (t)
$

$
  1 - (0.5 + Phi (C - n a_0) / (sigma sqrt(n))) = alpha quad
  Phi (C - n a_0) / (sigma sqrt(n)) = 0.5 - alpha
$

Назовём величину $u_(0.5 - alpha)$ --- квантиль распределения, то есть
$Phi_xi_0 (u_(0.5 - alpha)) = 0.5 - alpha$

В общем случае $Phi (u_alpha) = alpha => u_alpha$ --- квантиль уровня $alpha$
распределения $F(x)$

// FIX: рисунок 2

Отсюда $(c - n a_0) / (sigma sqrt(n)) = u_(0.5 - alpha); quad c = n a_0 + u_(0.5 - alpha) sigma sqrt(n)$

Если сумма больше чем по $P{ limits(sum)_(i = 1)^n X_i gt.eq n a_0
+ u_(0.5 - alpha) sigma sqrt(n) } = alpha$ --- истина, но отвергли

Если же $sum_(i=1)^n X_i < n a_0 + u_(0.5 - alpha) sigma sqrt(n)$, то
$H_0$ принимаем.

Определим вероятность ошибки второго рода:

$
  P { sum_(i=1)^n X_i < n a_0 + u_(0.5 - alpha) sigma sqrt(n) | H_1: \" a = a_1 \"} = \
  = P { (sum_(i=1)^n X_i - n a_1) / (sqrt(n) sigma)
    < (n a_0 - n a_1) / (sigma sqrt(n))
    + (u_(0.5 - alpha) sigma sqrt(n)) / (sigma sqrt(n))} = \
  = P { xi_0 < u_(0.5 - alpha) - ((sqrt(n) (a_1 - a_0)) / sigma) } = beta = \
  = 0.5 + Phi (u_(0.5 - alpha) - (sqrt(n) (a_1 - a_0))/(sigma))
$
, где $1 - beta$ --- мощность критерия.

== Пример
Рассмотрим пример. Пусть по выборке объёма $n = 25$ $overline(x) = 52.5$.
Проверить гипотезу $H_0: \" a = 52 \", H_1: \" a = 53 \", #[при] alpha = 0.1,
sigma^2 = 9$

Тогда $C = 25 dot 52 + u_(0.4) dot 3.5 = 25 dot 52 + 1.28 dot 15 = 1319.2$

$
limits(sum) X_i = 25 dot 52.5 = 1312.5
$

$
  { limits(sum) X_i < C } = { underbrace(1312.5, #[наблюдаемое]) < underbrace(1319.2, #[критическое значение]) } => \
  => H_0: \" a = 52 \" #[--- принять за рабочую]
$

$
  P { sum X_i < u_(0.5 - alpha) - (sqrt(n) (a_i - a_0))/sigma } =\
    = 0.5 + Phi (u_(0.5 - alpha) - (sqrt(n) (a_1 - a_0)) / sigma) =\
    = 0.5 + Phi (1.28 - (5 (53 - 52))/3) = 0.5 + Phi (-0.39) =\
    = 0.5 - Phi (0.39) = 0.5 - 0.1517 = 0.3483
$

// FIX: рисунок

== Вторая задача (Проверка двух простых гипотез для параметра $lambda$ на показательном распределении)
$
  H_0: \" lambda = lambda_0 \"\
  H_1: \" lambda = lambda_1 \"\
  lambda_0 < lambda_1\
  lambda #[--- задана]\
  X_1, X_2, dots, X_n ~ inter.sq.big (lambda)
$

Построить оптимальный критерий Неймана Пирсона (Н-П), то есть
$
  P { phi (overline(X)_n) gt.eq C_phi | H_0 } = alpha
$

$
  L(overline(X)_n, lambda)
    = limits(inter.sq.big)_(i = 1)^n lambda e^(- lambda X_i)
    = lambda^n e^(- lambda limits(sum)_(i = 1)^n X_i)
    = lambda^n e^(- lambda n overline(x))
$

Тогда:

$
  phi (overline(x)_n) = (L (overline(x)_n, lambda_1)) / (L (overline(x)_n, lambda_0))
    = lambda_1^n / lambda_0^n
      dot (e^(-lambda_1 n overline(x))) / (e^(-lambda_0 n overline(x)))
    = (lambda_1 / lambda_0)^n e^(-n overline(x) (lambda_1 - lambda_0))
$

Решим неравенство:
$phi (overline(x)_n) >= C_phi: (lambda_1 / lambda_0)^n e^(-n overline(x)
(lambda_1 - lambda_0)) >= C_phi$

$
  n overline(x) lt.eq 1 / (- lambda_1 - lambda_0) ln (lambda_0^n C_phi) / (lambda^n_1)
    = underbrace(1 / (lambda_1 - lambda_0) ln (lambda_1^n ) / (lambda^n_0 C_phi), C)
$

В качестве критерия $K = limits(sum)_(i=1)^n X_i = n overline(x)$

$
  X_i ~ inter.sq.big (lambda)
$

из т.в. известно $2 lambda (X_1 + dots + X_n) ~ X^2 (2 n)$
, если $X_i ~ inter.sq.big (lambda)$

Тогда
$
  P {phi (x_n) >= C_phi | H_0}
    = P {limits(sum)_(i=1)^n X_i <= C | H_0: \" lambda = lambda_0 \"} =\
    = P {2 lambda_0 limits(sum)_(i = 1)^n X_i < 2 lambda_0 C} = alpha
    = F_(chi^2_(2 n)) (q_alpha)
$

// FIX: рисунок 4

Обозначим: $2 lambda_0 C = q_alpha => C = q_alpha / (2 lambda_0)$

$
  beta = P {limits(sum)_(i=1)^n X_i > C | H_1 \" lambda = lambda_1 \"} =\
    = P {2 lambda_1 limits(sum)_(i=1)^n X_i
      > (q_alpha) / (2 lambda_0) 2 lambda_1} =\
    = P {2 lambda_1 limits(sum)_(i=1)^n X_i > (q_alpha lambda_1) / lambda_0} =\
    = 1 - F_(chi^2) ((q_alpha lambda_1)/lambda_0)
$

== Проверка сложных гипотез про параметр $a$ нормального распределения
