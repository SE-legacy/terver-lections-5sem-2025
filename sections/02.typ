//Пропустил 15 минут пары

*Теорема.* Пусть $(xi, eta)$ --- дв. сл. вел, $xi, eta$ --- зависимые.

Наилучшей (МНК) оценкой связи $xi, eta$ является функция регрессии $g(xi) = M eta | xi$

$ M(eta - g (xi))^2 = limits("min")_(f (x)) M (eta - f(xi))^2 $

Д-во: 
$ M (eta - f(xi))^2 = M (underbracket(eta - g(xi)) + underbracket(g(xi) - f(xi)))^2 = \ = M(eta - g(xi))^2 + M(g(xi) - f(xi))^2 + 2 underbracket(M((eta - g(xi)) (g(xi) - f(xi))), I) $

$ I = M((g(xi) - f(xi)) M(eta - g(xi)) | xi) = M((g(xi) - f(xi))[underbrace(M_(eta | xi), g(xi)) - underbrace(M_(g(xi) | xi), g(xi))] = 0 $

Тогда из первого равенства получим:

$ M (eta - f(xi))^2 = M (underbracket(eta - g(xi)))^2 + underbracket(g(xi) - f(xi)))^2 $

????

= Уравнение линейной регрессии

Пусть $eta = a xi + b = M_(eta | xi)$. Оценить коэфициенты $a, b$ методом наименьших квадратов (МНК).

$M (eta - limits(eta)^\^)^2 => limits(min)_(a, b)\
M(eta - a xi - b)^2 = cal(L)(a, b)$ 
$ (diff L(a, b)) / (diff a) = diff / (diff a) M (eta - a xi - b)^2 = -2 M (eta - a xi - b) dot xi = \ = (-2) M(xi eta - a xi^2 - b xi) = (-2)[M xi eta - a M xi^2 - b M xi] = 0
$

$
(diff L(a, b)) / (diff b) = diff / (diff b) M (eta - a xi - b)^2 = (-2) M(eta - a xi - b) = (-2) (M eta - a M xi - b) = 0
$

Получим два уравнения:

$
cases(
  M eta - a M xi - b = 0,
  M xi eta - a M xi^2 - b M xi = 0
)\
b = M eta - a M xi \
M xi eta - a M xi^2 - (M eta - a M xi) M xi = 0 \
M xi eta - a M xi^2 - M xi M eta + a (M xi)^2 = 0 \
a underbrace((M xi^2 - (M xi)^2), cal(D) xi) = underbrace(M xi eta - M xi M eta, "cov"(xi, eta)) 
$

$ a = "cov"(xi, eta) / (cal(D) xi) dot (sqrt(cal(D)) eta) / (sqrt(cal(D) eta)) = "cov"(xi, eta) / (sqrt(cal(D) xi) sqrt(cal(D)) eta) dot (sqrt(cal(D)) eta) / (sqrt(cal(D)) xi) = r sigma(n)/ sigma(xi)\

b = M eta - r sigma(n)/ sigma(xi) dot M xi
$

Уравнение регрессии $(eta "на" xi)$ имеет вид:
$ eta = r sigma(n)/ sigma(xi)dot xi + M eta - r sigma(n)/ sigma(xi) M xi\
eta = M eta + r sigma(n)/ sigma(xi) (xi - M eta) 

\
abs(r) <= 1
$

Уравнение регрессии в отклонениях:
$
eta - M eta = r sigma(n)/ sigma(xi) (xi - M xi) \

"График" (M xi, M eta)
$