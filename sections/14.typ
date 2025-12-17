// NOTE: Лекция 14. 10.12.2025
#set math.equation(numbering: "(1)")
#let numering(n) = $#[(#n)] quad $
#let eqcircle = circle(height: 1em, stroke: 0.5pt, [#v(-0.3cm) #align(center + horizon, $eq$)])
#let climits(main, top, bottom) = $limits(main)_(bottom)^(top)$
#let umo = "условное математическое ожидание"
#let mnk = "методом наименьших квадратов"
= Регрессинный анализ
Пусть $(xi, eta)$ --- наблюдаемый случайный вектор. Обозначим $(X_1, Y_1);
(X_2, Y_2) dots (X_n, Y_n)$ --- выборка из двумерного распределения.

в т.в. определено #umo (УМО) $g(xi) = M eta | xi$

Цель: по ... оценить условное математическое ожидание

$eta = g(xi)$

Парная линейная регрессия

Пусть $Y_i = a X_i + b$

Оценим коэффициенты $a$ и $b$ пользуясь #mnk т.е.
$
  L(a, b) = climits(sum, n, i = 1) (underbrace(Y_i, #[наблюдаемое])
      - underbrace(limits(Y_i)^\^ , #[теоретич.\ прогноз.]))^2
    = climits(sum, n, i = 1) (Y_i - a X_i - b)^2 ->_(a, b) m n
$
$
  (nu L(a, b)) / (nu a) = (- 2) climits(sum, n, i = 1) (Y_i - a X_i - b) X_i =\
    = (- 2) (climits(sum, n, i = 1) X_i Y_i
      - a climits(sum, n, i = 1) X_i^2
      - b climits(sum, n, i = 1) X_i) dot n / n =\
    = (- 2) n (overline(x y)
      - a (1 / n climits(sum, n, i = 1)) - b overline(x)) =\
    = (- 2n) (overline(x y) - a(S^2 + overline(x)^2) - b overline(x))
$

$
  S^2 = 1 / n climits(sum, n, i = 1) (X_i - overline(x))^2
    = (1 / n climits(sum, n, i = 1) X_i^2) - (overline(x))^2
$

$
  (nu L(a, b)) / (nu b) = (- 2) climits(sum, n, i = 1) (Y_i - a X_i - b) X_i =\
    = (- 2) (climits(sum, n, i = 1) Y_i - a climits(sum, n, i = 1) X_i
      - climits(sum, n, i = 1) b) = (- 2 n) (overline(Y) - a overline(x) - b)
$

Получено:

$
  cases(
    overline(x y) - a (S_x^2 + overline(x)^2) - b overline(x) = 0 quad numering(1),
    overline(y) - a overline(x) = 0 quad numering(2),
  )
$

подставим
$
  b = overline(y) - a overline(x) -> #[в (1)]
$

$
  overline(x y) - a S_x^2 - a overline(x)^2 - overline(x) dot overline(y)
  + a overline(x) = 0\
  a S_x^2 = overline(x y) - overline(x) dot overline(y)\
  a = (overline(x y) - overline(x) dot overline(y)) / S_x^2
$

Рассмотрим
$
  a = (overline(x y) - overline(x) dot overline(y)) / S_x^2
    = (overline(x y) - overline(x) dot overline(y)) / (S_x dot S_y)
      dot S_y / S_x
    = r_(#[выбр]) S_y / S_x
$

Уравнение регрессии:
$
  y_i = a x_i + b = r dot S_y / S_x dot X_i + overline(y)
      - r dot S_y / S_x overline(x)\
  y_i = overline(y) + r S_y / S_x (x_i - overline(x))
    #[или]
  y_i - overline(y) = r S_y / S_x (x_i - overline(x))
$

$

  limits(y_i)^\^ = overline(y) + r S_y / S_x (x_i - overline(x))
    #[или]
  limits(y_i)^\^ - overline(y) = r S_y / S_x (x_i - overline(x))
$

Покажем, что на найденных $a$ и $b$ достигается минимум

$
  L(a, b) = climits(sum, n, i = 1) ((Y_i - overline(y))
      - r S_x / S_x (x_i - overline(x)))^2 =\
    = n / n [sum (Y_i - overline(y))^2
      - 2 sum r S_y / S_x (x_i - overline(x)) (y_i - overline(y))
      + (r^2 S_y^2) / S_x^2 sum (x_i - overline(x))^2] =\
    = n (S_y^2 - 2 r S_y / S_x 1 / n sum (x_i - overline(x))
      dot (Y_i - overline(y)) + (r^2 S_y^2) / S_x^2 dot S_x^2) eqcircle
$

$
  r_B = (c o v_B (x_i, Y_i)) / (S_x S_y)
$

$
  eqcircle n (S_y^2 - 2 r S_y^2 dot r + r^2 S_y^2) = n (S_y^2 - r^2 S_y^2)
$

$
  L(a, b) = n dot S_y^2 (1 - r^2) #[--- объем выборки]
$

Рассмотрим

$
  S_y^2 (1 - r^2)
    = min_(a, b) 1 / n climits(sum, n, i = 1) (Y_i - limits(Y_i)^\^)^2
$

$r = r_(#[выборки])$ зависит от выборки $(X_i, Y_i)$

// TODO: пропустил начало предложения
в какую часть дисперсии процесса не удалось оценить, с помощью уравнения регрессии

$
  | r | <= 1\
  (1 - r^2)
$
// FIX: рисунок 1


$
  climits(sum, n, i = 1) (Y_i - limits(Y_i)^\^)^2
    = climits(sum, n, i = 1)(Y_i - overline(Y) - (limits(Y_i)^\^ - overline(Y))^2) =\
    = climits(sum, n, i = 1) (Y_i - overline(Y))^2
      + climits(sum, n, i = 1)(limits(Y_i)^\^ - overline(Y))^2
      - underbrace(2 climits(sum, n, i = 1)
        (Y_i - overline(Y) (limits(Y_i)^\^ - overline(Y))), = 0)
$

$
  climits(sum, n, i = 1) (Y_i - limits(Y_i)^\^)^2
    = climits(sum, n, i = 1) (Y_i - overline(Y))^2
      + climits(sum, n, i = 1)(limits(Y_i)^\^ - overline(Y))^2
$

TSS = RSS + ESS

TSS --- total sum of squares
RSS --- Regression sum of squares
ESS --- error sum of squares

$
  R^2 = #[RSS]/#[TSS] space 0 lt.eq R^2 lt.eq 1
$
