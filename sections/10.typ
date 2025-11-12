// NOTE: Лекция 10. 12.11.2025
#set math.equation(numbering: "1.")
#let numering(n) = $#[(#n)] quad $
#let mm = "Метод моментов";
#let mmp = "Метод максимального правдоподобия";

= Империчская функция распредления
Как нам опеделить сколько миниммально нужно полечить больных, чтобы
(таблетка сработала)?

== Минимальной необходимый объем выборки
Пусть $X_1, dots, X_n ~ N(a, sigma^2); space sigma^2$ --- извест

Ошибкой при оценке $M xi = a$ выборки средних $overline(x)$ назовем
$Delta = |overline(x) -a|$

Пусть $epsilon$ --- величина ошибки

$gamma$ --- вероятность

$ numering(1) P {|overline(x) - a| lt epsilon} gt.eq gamma $<l10:eq1>
Определить наименьшее $n$ при котором верно @l10:eq1

Из дов. инитеграла по правилу @l10:eq1 $=>$
$
  P{|overline(x) - a| lt t sigma/(sqrt(n))} gt.eq gamma
    => t sigma/(sqrt(n)) lt epsilon
$
где $Phi(t) = gamma / 2$

= Методы построения оценок параметров распределения
Пусть ${X_n, F_xi (x, theta) : in Theta}$ --- параметрическая модель

== Метод моментов
- Теоретический начальный момент $k$-го порядка
  $
    m_k = M xi^k; quad M |xi^k| <+ infinity
  $
- Теоретический центральный момент $k$-го порядка
  $
    mu_k = M (xi - M xi)^k; quad M |xi| <+ infinity
  $

- Выборочным начальным моментом $k$-го порядка называется:
  $
    limits(m_k)^~ = 1 / n limits(sum)_(i = 1)^n X_i^k
  $

- Выборочным центральным моментом $k$-го порядка называется:
  $
    limits(mu_k)^~ = 1 / n limits(sum)_(i = 1)^n (X_i - overline(x))^k
  $

#mm состоит в том что за оценки параметра распределения принимается
решение системы уравнений:
$
cases(
  limits(m_k)^~ = m_k,
  limits(mu_k)^~ = mu_k,
)
$

=== Задача $(X_1, dots, X_n) ~ B i n (m, p)$
т.е. $F_(X_1) (x)= F_(X_n) (x) = F_xi (x)$
$
  P{X_1 = k} = C^k_m p^k q^(m - k)
$

#mm:
$
  m_1 = M xi = m p\
  limits(m_1)^~ = 1 / n limits(X_i)_(i = 1)^n X_i = overline(x)
$

Составим уравнение: $m p = overline(x) => limits(p_m)^~ = overline(x)/m$

=== Задача: Пусть по выборке $X_1, dots, X_10 ~ R(a, b)$
$overline(x) = 2, 3 quad S^2 = 4.41$
Оценить #mm параметры $a, b$ равном распред.
$
  m_1 = M xi = (a + b) / 2\
  limits(m_1)^~ = overline(x)\
  mu_2 = D xi = (b - a)^2 / 12\
  limits(mu_2)^~ = 1/n limits(sum)_(i = 1)^n (X_i - overline(x))^2 = S^2
$

#mm:

$
cases(
  m_k = limits(m_k)^~,
  mu_k = limits(mu_k)^~,
)\
cases(
  (a + b)/2 = 2.3,
  (b - a)^2/12 = 4.41,
)\
cases(
  b + a = 4.6,
  b - a = 2.1 dot 2 sqrt(3)
)
$

$
  2 b = 4.6 + 4.2 sqrt(3)\
  limits(b)^~ = 2.3 + 2 sqrt(3)
  limits(a)^~ = 2.3 - 2 sqrt(3)
$

== Метод максимального правдоподобия

Пусть $X_1, dots, X_n ~ cal(L)_xi (x, theta)$
$
  f_xi (x, theta) = cases(
    f_xi(x) #[для абсолютно случайной величины],
    P{xi = k} #[--- для дискретной случайной величины]
  )
$

/ Функцией правдоподобия:
  $
    L (overline(X)_n, theta) = limits(inter.sq.big)_(i = 1)^n f_xi (X_i, theta)
      = f(X_1, theta) dot f(X_2, theta) dot dots dot f(X_n, theta)
  $

/ Метод максимального правдоподобия: состоит в том, что за оценку параметра
  распределения принемается точка максимума функции правдоподобия

Алгоритм метода
+ Построить $L (overline(X)_n, theta)$
+ Взять $ln L(overline(X)_n, theta)$
+ $(nu ln L(overline(X)_n, theta))/(nu theta) = 0 => theta^*$
+ $(nu^2 ln L(overline(X)_n, theta))/(nu theta^2) |_(theta^*) < 0 => theta^* #[--- m. max]$

#mmp только к регулярным моделям

Пример: Для параметра $p$ $B i n (m p)$ построить оценку #mmp по выборке
$(X_1, dots X_n)$
+ $L(overline(X)_n, p) = C_m^(X_1) dot p^(X_1) dot p^(m - X_1)
    dot  C_m^(X_2) dot p^(X_2) dot p^(m - X_2) dot dots
    dot  C_m^(X_n) dot p^(X_n) dot p^(m - X_n) =\
    = (limits(inter.sq.big)_(i = 1)^n C_m^(X_i))
    dot p^(limits(sum)_(i = 1)^n X_i) dot q^(n m - limits(sum)_(i = 1)^n X_i)$
+ $ln L (overline(X)_n, p) = limits(sum)^n_(i=1) ln C_n^(x_i)
    + n overline(x) ln p + n (m - overline(x)) ln (1 - p)$
+ $(diff ln L (overline(X)_n, p))/(diff p)
  = (n overline(x))/p - n(m - overline(x))/(1 - p) = 0, 0 < p < 1$
+ $(nu^2 ln L(overline(X)_n, p)/(nu p^2)) = - (n overline(x))/(p^2)
    - (n (m - overline(x)))/(1 - p)^2 |_((overline(x))/(m) = p^*)
  = - (n overline(x) m^2)/(overline(X)^2)
    - (n (m - overline(x)) m^2)/(m - overline(x))^2
  = - n m^2 (1/(overline(x)) - 1/(m - overline(x)))
  = - n m^2 (m - overline(x) + overline(x))/(overline(x) (m - overline(x)))
  = - (n m^3)/(overline(x) (m - overline(x))) < 0 $

  $
    forall X_1, dots, X_n => #[точка максимума]\
    L(overline(X)_n, p) space #[это] space p^* = overline(x)/m
    => limits(p_mmp = overline(x)/m)
  $

=== Задача

+ Составляем функцию $L(overline(x)_n, a, sigma^2)
  = limits(product)_(i = 1)^n 1/(sqrt(2 pi) sigma) e^(-(x_i - a)^2/(2 sigma^2))=\
  = (2 pi)^(-n/2) dot sigma^(-n)
    dot e^(-limits(sum)^n_(i = 1) ((x_i - a)^2)/(2 sigma^2))
  $


+ $ln L(overline(X)_n, a, sigma) = - n/2 ln 2 dot overline(n) - n ln sigma
    - 1/(2 sigma^2) limits(sum)_(i = 1)^n (x_i - a)^2 $

  $
    cases(
      (nu ln L(overline(X)_n, a, sigma))/(nu a)
        = 1/sigma^2 limits(sum)^n_(i = 1) (X_i - a) = 0,
      (nu ln L(overline(X)_n, a, sigma))/(nu a)
        = - n / sigma + 1 / sigma^3 limits(sum)^n_(i = 1) (X_i - a)^2 = 0
    )
  $

  $
    limits(sum)_(i = 1)^n (X_i - a) = 0
    sum
  $ // TODO: есть на ипсилоне

  $
    cases(
      (nu^2 ln L(overline(X)_n, a, sigma))/(nu a^2)
        = - 1 / sigma^2 |_(s^2) < 0,
      (nu^2 ln L(overline(X)_n, a, sigma))/(nu a^2)
        = n / sigma^2 - 3 / sigma^4 limits(sum)_(i = 1)^n (X_i - a)^2
    )
  $ // TODO:

  $
    (nu^2 ln L(overline(X)_n, a, sigma))/(nu a nu sigma)
      = - 2 / sigma^3 limits(sum)^n_(i = 1)
        (X_i - a) |_(a^* = overline(x)\ sigma^2 = s^2)
      = - 2 / sigma^2 (underbrace(sum X_i, n overline(x)) - n overline(x)) = 0\
      => limits(a_mmp)^~
  $// TODO:
