// NOTE: Лекция 15. 17.12.2025
#set math.equation(numbering: "(1)")
#let numering(n) = $#[(#n)] quad $
#let eqcircle = circle(height: 1em, stroke: 0.5pt, [#v(-0.3cm) #align(center + horizon, $eq$)])
#let climits(main, top, bottom) = $limits(main)_(bottom)^(top)$
#let cov(n) = $c o v (#n)$
#let umo = "условное математическое ожидание"
#let mnk = "методом наименьших квадратов"
== Корелиационный анализ
Пусть $(xi, eta)$ --- наблюдаемая пара случайной величины. $(X_1, Y_1), dots,
(X_n, Y_n)$ --- двумерная выборка объма $n$

$
  r = r(xi, eta) = (M(xi - M xi) (eta - M eta)) / (sqrt(D xi) sqrt(D eta))
    = cov(xi\, eta)\
  -1 lt.eq r lt.eq 1
$

Если $eta, xi$ независ., то $r = 0$ (...) // TODO:
если $eta = a xi + b$, $a eq.not 0$, то $|r| = 1$ и наоборот

=== Коррелииииииационное отношение (коэффициент дитерминици)
$
  R^2 = sigma^2_g / sigma^2_eta = 1 - overline(sigma)^2_eta / sigma^2_eta,
    space #[где] space sigma^2_eta
    = underbrace(sigma^2_g, #[объясненная\ часть\ дисперсии\ ] g = M eta / xi)
      + underbrace(overline(sigma)^2_eta, #[необъясненная\ часть регр.\ за счет\ отклонения\ ] eta #[от] M eta / xi)
$
// FIX: рисунок 1

=== Свойства $R^2$
+ $0 lt.eq R^2 lt.eq 1 $
+ $0 lt.eq r^2 lt.eq R^2 lt.eq 1$
  - $R^2 = 0 arrow.r.double_arrow.l.double.not xi, eta #[независ]$
  - $R^2 = r^2 = 1 <=> eta, xi$ --- функции $eta = a xi + b$
  - $r^2 lt.eq R^2 = 1 <=>$ функция, но нелинейная связь
  - $r^2 lt.eq R^2 lt 1$, связь $approx$ линейная
  - $r^2 lt R^2 lt 1$

Если построенна выборка $(X_i, Y_i)$, то для оценки $r^2$ использует

Выборочный коэффициент кореляции
$
  r = (overline(x y) - overline(x) overline(y)) / (S_x dot S_y)
$

$S_x, S_y$ --- смещенные оценки СКО

Оценка качества $r =$ проверка гипотезы

Гипотеза: $H_0: \"r = 0\"$, $H_1: \"r eq.not 0 \"$

$alpha$ --- задано (уровень значимости критерия = вероятность ошибки первого
рода ($H_0$ --- верна, но её отвергли))

$r_#[выбор]$ имеет распределение Стьюдента $T (n - 2)$

$t_#[набл] = (r sqrt(n - 2)) / (1 - r^2), quad t_#[кр] = T(alpha / 2; n - 2)$

Если $|t_#[набл]| < t_#[кр]$, то $r$ незначимо отличается от 0 уравнение регрессии нужно ($H_0 + \"$)
