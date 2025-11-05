// NOTE: Лекция 9. 05.11.2025

Пример: (Показать, что $overline(x)$ является эфф. по Р-к оценкой параметра $a$
р-л $N(a; sigma^2)$)

Решение: $(X_1, dots, X_n) ~ N(a; sigma^2) : M X_i = a; quad D X_i = sigma^2$

Вычислим $e(overline(x)) = D (overline(x)) dot n space I(a)$

$
D (overline(x)) = D (1/n limits(sum)_(i = 1)^n X_i) = 1/n^2
  limits(sum)_(i = 1)^n D X_i = 1/n^2 dot n sigma^2 = sigma^2/n
$

$
I(a) = M ((nu ln f (xi, a))/(nu a))^2 = M ( (nu ln)/(nu a)
  dot (1/sqrt(2 pi) e^(- (xi - a)^2/(2 sigma^2))))^2 =\
  = M (nu/(nu a) (- 1/2 ln 2 pi - (xi - a)^2/(2 sigma^2)))^2
  = M ((2 (xi - a))/(2 sigma^2))^2 =\
  = 1/(sigma^4) M (xi - a)^2a = sigma^2/sigma^4 = 1/sigma^2
$

$
e(overline(x)) = sigma^2/n dot n dot 1/sigma^2 = 1
$

Так как $e(overline(x)) = 1$, то $overline(x)$ эффективен по Р-к, по
о единственности эффективности оценки.

$overline(x)$ эффективная оценка $M xi$ в $N(a; sigma^2)$

== Интервальные оценки.

Пусть $(X_1, dots, X_n) ~ cal(L)_xi (x, theta);$ $theta$ --- неизвестный параметр

Пусть $n$ "мало" $n lt.eq 30 div 50$

Тогда для несмещенных и состоятельных оценок не выполнена имеет место
$limits(theta_n)^~ approx.not theta$

т.е. точечная оценка становится "плохой"

/ Опр: Доверительным интервалом надежности $gamma$ называется интервал со случайными
концами $(limits(theta_1)^~, limits(theta_2)^~)$ т. что
$P{theta in (limits(theta_1)^~, limits(theta_2)^~)} gt.eq gamma$

$gamma$ --- надежность Д.И. = доверительная вероятность
$gamma = 0.9; 0.95; 0.99; 0.999$

$
cases(reverse: #true,
  limits(theta_1)^~ = f_1 (X_1, dots, X_n),
  limits(theta_2)^~ = f_2 (X_1, dots, X_n)
) => limits(theta_1)^~ , limits(theta_2)^~ #[--- зависимая случайная величина]
$

// HACK:
// - Как нам построить ...?
// - Тремя таджиками

Построение д.и. для параметров $N(a; sigma^2)$

/ Лемма (Фишера): Пусть $X_1, dots, X_n ~ N(a; sigma^2)$. Тогда $overline(x)$ и
  $limits(sigma^2)^~$ --- независимые случайные величины и

$
(overline(x) - a)/(sigma/sqrt(n)) ~ N(0; 1); (overline(x) - a)/(sigma/sqrt(n))
  ~ T(n - 1);\ (sigma^2/(limits(sigma^2)^~)/n) ~ chi^2 (n - 1)
$

$
chi^2 (n) = xi^2_1 + xi^2_2 + dots + xi^2_n
  #[--- где] xi_i ~ N(0; 1) #[независимые]
$

$
t(n) = eta/(sqrt((chi^2 (n))/n))
$

$eta, xi_1, dots, xi_n$ --- н.о.р
// FIX: картинка 1

=== Доверительный интервал для параметра $a$ р-я $N(a; sigma^2)$; $sigma^2$ --- известно

Пусть $X_1, dots, X_n ~ N(a; sigma^2)$; $gamma$ --- задано.

Требуется построить $(limits(a_1)^~, limits(a_2)^~)$ т. что
$P{a in (limits(a_1)^~, limits(a_2)^~)} gt.eq gamma$

Решение: по лемме (Фишера)

$
(overline(x) - a) / (sigma/sqrt(n)) ~ N(0; 1)
$

Тогда для любого $t$ можем вычислить
$
P{-t lt (overline(x) - a)/(sigma/(sqrt(n))) lt t} = F_(xi_0) (t) - F_(xi_0) (-t)
  =^(xi_0 ~ N(0;1)) 0.5 + Phi(t) - 0.5 - Phi(-t) =\
  =^#[нечет] Phi(t) + Phi(t) = 2 Phi(t)
$

Подберем $t$ так чтобы
$
2 Phi(t) = gamma
$

тогда
$
P {-t lt (overline(x) - a) / (sigma/(sqrt(n))) lt t}
  = P {underbrace(overline(x) - t sigma/(sqrt(n)), limits(a_1)^~)
    < a < underbrace(overline(x) + t sigma/(sqrt(n)), limits(a_2)^~)}
  = P{limits(a_1)^~ < a < limits(a_2)^~} = gamma
$

$
P {-t_gamma lt (overline(x) - a) / (sigma/(sqrt(n))) lt t_gamma}
  = F_T (t_gamma) - F_T (-t_gamma) = limits(integral)^(t_gamma)_(-t_gamma)
    f_T (x) d x = I
$

$t_gamma$ выберем так, чтобы $I = gamma$. Тогда для найденного $t_gamma$ д.и.

$
(limits(a_1)^~, limits(a_2)^~)
  = (overline(x) - t_gamma limits(sigma)^~/(sqrt(n));
    overline(x) + t_gamma limits(sigma)^~/(sqrt(n)))
$


=== Доверительный интервал для параметра $a$ р-я $N(a; sigma^2)$

Пусть $X_1, dots, X_n ~ N(a; sigma^2)$; $gamma$ --- задано.

Требуется построить $(limits(a_1)^~, limits(a_2)^~)$ т. что
$P{a in (limits(a_1)^~, limits(a_2)^~)} gt.eq gamma$

Решение: по лемме (Фишера)

$
(sigma^2/(limits(sigma^2)^~)/n) ~ chi^2 (n - 1)
$

Пусть $f_(chi^2) (x)$ --- функция плотности случайной величины $chi^2 (n - 1)$

Подберем $q_1$ и $q_2$ такие, чтобы

$
limits(integral)^(q_1)_0 f_(chi^2) (x) d x = (1 - gamma)/2\
limits(integral)^infinity_(q_2) f_(chi^2) (x) d x = (1 - gamma)/2\
$

Тогда

$
limits(integral)^(q_2)_(q_1) f_(chi^2) (x) d x = gamma
$

$
P{q_1 lt (sigma^2/(limits(sigma^2)^~)/n) lt q_2}
  = limits(integral)^(q_2)_(q_1) f_(chi^2) (x) d x = gamma
$

Следовательно,

$
P {q_1 limits(sigma^2)^~ / n < sigma^2 < q_2 limits(sigma^2)^~ / n}
  = P {limits(sigma)^~ sqrt(q_1 / n) < sigma < limits(sigma)^~ sqrt(q_2 / n)} >= gamma
$

Таким образом доверительный интервал имеет вид:

$
(limits(sigma_1)^~, limits(sigma_2)^~)
  = (limits(sigma)^~ sqrt(q_1 / n); limits(sigma)^~ sqrt(q_2 / n))
$



