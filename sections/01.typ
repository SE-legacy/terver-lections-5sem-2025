= Условные распределения
$(Omega, cal(F), PP)$: $Omega$ --- множество элементарных исходов эксперимента. $A subset Omega$ --- случайное событие. $cal(F)$ --- $sigma$-алгебра событий: 
+ $Omega in cal(F); 
+ A in cal(F) => overline(A) in cal(F)$
+ ${A_i}^infinity_(i=1) in cal(F) => limits(union.big)^infinity_(i = 1) A_i in cal(F)$

$P: cal(F) -> [0; 1]$ --- вероятностная мера; т.е. $P(A)$ --- вероятность события $cal(A)$

*Свойства вероятностной меры:*
+ $P(A) >= 0$
+ $forall cal(A) in cal(F); space P(Omega) = 1$
+ $P(limits(union.sq.big)^infinity_(i = 1) A_i) = limits(sum)^infinity_(i = 1) P(A_i)$

*ОПР.* Случайная величина $xi: Omega -> RR$, такая что $forall x in RR space {omega: xi(omega) < x} in cal(F)$

$xi^(-1)(b) in cal(F); space b = (-infinity; x)$

*ОПР.* Функция распределения вероятностей случайной величины $xi$: $F_xi (x) = P{omega: xi(omega) < x}$

Случайные величины делятся на дискретные и абсолюнтно непрерывные. 

Для дискретных: $p_i = P{xi = x_i}; space p_i > 0; space limits(sum)^infinity_(i = 1) p_i = 1$

Для абсолютно непрерывных мы определяем *функцию плотности распределения:* $f(x)$, где $f(x) limits(=)^"п.в." F'(x)$

_Повторение закончилось, начинаем жестить._

*ОПР*. Случайный вектор --- это $overline(xi) = (xi_1, xi_2, dots, xi_n)$, где $xi_i$ --- сл.в, заданная в $(Omega_i)$.\
$overline(xi)$ задан в $(Omega, cal(F), P); Omega = Omega_1 crossmark Omega_2 crossmark dots crossmark Omega_n, space cal(F)$ --- $sigma$-алгебра, $PP$ --- вероятностная мера.

Рассмотрим $(xi, eta)$

*ОПР.* Функция распределения $F_(xi eta)(x; y) = P{omega: xi(omega) < x; eta(omega) < y}$

Свойства:
+ $forall x,y in RR space 0 <= F_(xi eta)(x, y) <= 1$
+ Если $x_0, y_0$ --- иксированные, то $F_(xi eta) (x_0, y)$ --- неубывающая и непрерывная слева по $y$, $F_(xi eta)(x, y_0)$ --- неубывающая и непрерывная слева по $x$
+ $limits(lim)_(x -> +infinity) F_(xi eta) (x, y) = F_eta (y)$ \
  $limits(lim)_(y -> +infinity) F_(xi eta)(x, y) = F_xi (x)$ \
  $limits(lim)_(x -> + infinity \ y-> + infinity) F_(xi eta) (x; y) = 1$ \
  $limits(lim)_(x -> - infinity) F_(xi eta) (x; y) = limits(lim)_(y -> - infinity) F_(xi eta) (x, y) = limits(lim)_(x -> - infinity \ y-> - infinity) F_(xi eta) (x; y) = 0$

Случайный вектор называется *дискретным*, если $xi, eta$ --- дискретные сл.в. Тогда случайный вектор $(xi, eta)$ принимает значения $(x_i, y_i)$ с вероятностями $p_(i j) = P{xi = x_i; eta = y_j}; space p_(i j) > 0; space limits(sum)^infinity_(i = 1) limits(sum)^infinity_(j = 1) p_(i j) = 1$

*Частные распределения* имеют вид
$ p_i = P{xi = x_i} = limits(sum)^infinity_(j = 1) p_(i j) $
Аналогично
$ q_j = P{eta = y_j} = limits(sum)^infinity_( i = 1) p_(i j) $

*ОПР.* Случайные величины $xi, eta$ называаются независимыми, если $P{xi < x; space eta < y} = P{xi < x} dot P{eta < y}$. Т.е. $F_(xi eta) (x, y) = F_xi (x) dot F_eta (y)$

Для дискретных случайных величин приводит к: 
$ p_( i j) = p_i dot p_j $
Для абсолютно непрерывных случайных величин приводит к:
$ f_(xi eta) (x, y) = f_xi (x) dot f_eta (y) $

_Сравнить $P(A inter b) = P(A) dot P(B) => A, B$ --- независимые._

*ОПР.* Случайный вектор $(xi, eta)$ называется абсолютно непрерывным, если 
$ F_(xi eta) (x, y) = limits(integral)^x_(- infinity) limits(integral)^y_(- infinity) f_(xi eta) (u, v) d u d v $.

Частные распределения координат имеют вид:
$ f_xi (x) = limits(integral)^infinity_(- infinity) f_(xi eta) (x, y) d y \ 
f_eta (y) = limits(integral)^infinity_(-infinity) f_(xi eta) (x, y) d x $

*Теорема.* Случайные величины $xi, eta$ независимы $<=> f_(xi eta) (x, y) = f_xi (x) f_eta (y)$

Пусть установлено, что случайные величины независимы.

*ОПР.* Пусть $F_(xi eta) (x, y)$ --- функция распределения вектора $(xi, eta)$ (двумерной случайной величины), а $F_xi (x)$ --- функция распределения случайной величины $xi$. *Условным распределением* случайной величины $eta$ относительно случайной величины $xi$ называется 
$ F_(eta | xi) (x, y) = cases(
  (F_(xi eta) (x, y)) / (F_xi (x)) "; при" F_xi (x) > 0, 
  0 " при" F_xi (x) = 0 ) $


Для Д.С.В:
$ P{eta = y_i | xi = x_i} = (P{xi = x_i, space eta = y_i}) / P{xi = x_i} \ 
"или" P{eta = y_i | xi = x_i} = p_(i j) / p_i $

Для абс. непр. С.В:
$ f_(eta | xi) (x, y) = (f_(xi eta) (x, y)) / (f_xi (x)); space f_xi (x) > 0 $

*ОПР*. Условным математическим ожиданием случайной величины $eta$ относительно случайной величины $xi$ называется случайная величина 
$ M_(eta | xi = x_i) = limits(sum)^infinity_(j = 1) y_j dot P{eta = y_j | xi = x_i} $
с распределением $P{xi = x_i}$

*Ряд распределения:*
#align(center, table(
  columns: 5,
  [$M_(eta | xi = x_i)$], [$m_1$], [$m_2$], [$dots$], [$m_n$],
  [$P{xi = x_i}$], [$p_1$], [$p_2$], [$dots$], [$p_n$]
)
)

*ОПР.* Условным Математическим Ожиданием (УМО) абс. непрер. сл. в. $eta$ относительно сл. в. $xi$ называется сл. в.
$ M_(eta | xi) = limits(integral)^infinity_(-infinity) y f_(eta | xi) (x, y) d y $
с функцией плотности $f_xi (x)$.

Покажем, что $M(M_(eta | xi)) = M eta$

$ M(M_(eta | xi)) = limits(integral)^infinity_(-infinity) (M_(eta | xi)) f_xi (x) d x = limits(integral)^infinity_(- infinity) ( limits(integral)^infinity_(- infinity) y f_(eta | xi) (x, y) d y) f_xi (x) d x = \ =limits(integral)^infinity_(- infinity) y (limits(integral)^infinity_(- infinity) underbrace(f_(eta | xi) (x, y) f_xi (x), f_(xi eta) (x,y)) d x) d y = limits(integral)^infinity_(- infinity) y (limits(integral)^infinity_(- infinity) f_(xi eta) (x, y) d x) d y = limits(integral)^infinity_(- infinity) y f_eta (y) d y = M eta $

Аналогично $M (M_(xi | eta)) = M_xi$ --- центр распределения двумерной случайной величины $(xi, eta)$