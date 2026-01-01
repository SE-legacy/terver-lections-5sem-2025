
Условное математическое ожидание (УМО):

$
M(eta | xi) = limits(integral)_(-infinity)^(infinity) y d F(eta | xi) (x, y)
$
--- случайная величина

Свойства математического ожидания
+ $M(xi | xi) = M xi$
+ $M(g(xi) | xi) = (g(xi)$
+ $M(xi eta | xi) = xi M(eta | xi)$
+ $M(M(eta | xi)) = M(eta)$

/ Определение: Функцией регрессиии называется функция $g(xi) = M eta |xi $

Ф. регрессии используется для оценки $limits(eta)^(\^) = g (xi)$

$
limits(eta)^(\^) #[--- прогнозное значение (оценка)]\
eta #[--- наблюдаемое значение]
$

$(xi, eta)$ Предполагаем $exists f(x): n = f(xi)$. $f(x)$ --- измеримая

/ Теорема о наилучшей оценке: Пусть $(xi, eta)$ --- двумераная случайная 
	величина; при этом $xi, eta$ --- зависимое

Наилучшей (МНК) оценкой связи $xi, eta$ является функция регрессии
$g(xi) = M eta| xi$

$
M(eta - g(xi))^2 = min_(f(x)) M(eta - f(xi))^2
$

*Док-во*:

$
M (eta - f(xi))^2 = M (underbracket(eta - g(xi)) + underbracket(g(xi) - f(xi)))=\
= M(eta - g(xi))^2 + M(g(xi) - f(xi))^2  + 2 M underbracket(((eta - g(xi))(g(xi) - f(xi))), I) 
#circle(height: 1em, stroke: 0.5pt, [#v(-0.3cm) #align(center + horizon, $eq$)])\
$

$
I = M(g(xi) -f(xi))M(eta - g(xi))| xi) = M((g(xi) - f(xi))[underbracket(M eta | xi, g(xi)) - underbracket(M g(xi) | xi, g(xi))]) = 0
$

$

#circle(height: 1em, stroke: 0.5pt, [#v(-0.3cm) #align(center + horizon, $eq$)])

underbracket(M(eta - g(xi))^2, gt.eq 0) + underbracket(M(g(xi) - f(xi))^2, gt.eq 0) gt.eq M(eta - g(xi))^2
$

// FIX: Темин рисунок g(xi)

// HACK: - ты часовой)
// - ну хоть не водолаз)))

== Уравнение линейной регрессии
Пусть $eta = a xi + b = M eta | xi$

Оценить коэффициенты $a$ и $b$  метод наименьших квадратов (МНК) // HACK: mouse and keyboard (mnk)

$
M(eta - limits(eta)^(\^))^2 -> min_(a, b)\

M(eta - a xi - b)^2 = L(a, b)\

(diff L(a, b))/(diff a) = diff/(diff a) M(eta - a xi - b)^2 = (-2) M(eta - a xi - b) - xi =\ 
= (-2) dot M(xi eta - a xi^2 - b xi) = (-2) [M xi eta - a M xi^2 - b M xi] = 0
$

$
(diff L(a, b))/(diff b) = diff/(diff b) M(eta - a xi - b)^2 = (-2) M(eta - a xi - b) =\
= (-2) (M eta - a M xi - b) = 0
$

Выразим $a$ и $b$

$
cases(
	M eta - a M xi - b = 0,
	M xi eta - a M xi^2 - b M xi = 0
)\

b = M eta - a M xi\

M xi eta - a M xi^2 - (M eta - a M xi) M xi = 0\

M xi eta - a M xi^2 - M xi M eta + a (M xi)^2 = 0\

a(underbrace(M xi^2 - (M xi)^2, D xi\ #[дисперсия])) = underbrace(M xi eta - M xi M eta, c o v (xi, eta)\ #[ковариация])\

a = (c o v (xi , eta ))/(D xi) dot (sqrt(D eta))/(sqrt(D eta)) =\
= (c o v(xi, eta))/(sqrt(D xi) sqrt(D eta)) dot (sqrt(D eta))/(sqrt(D eta)) = r (sigma_eta)/(sigma_xi)\

b = M eta - r (sigma_eta)/(sigma_xi) dot M xi
$

Доказательство $min$ --- самостаятельно, следуя теореме

Уравнение регрессии ($eta$ на $xi$ (как откликается изменение $eta$ на изменение $xi$)):
$
eta = r (sigma_eta)/(sigma_xi) dot xi + M eta - r (sigma_eta)/(sigma_xi) M xi
$

Уравнение регрессии в отклонениях:
$
eta - M eta = r (sigma_eta)/(sigma_xi) (xi - M xi)
$

График:
$(M xi, M eta)$
