(import "axioms/DefaultTypes.lsp")

;;@-----------------------------------------------------------------------------
;;@ Complex Numbers
;;@-----------------------------------------------------------------------------
(namespace complex)

;;@ Complex number
(def-type Complex)

;;@ complex(x, y) = complex number with real part x and imaginary part y
(def-ctor complex :: R -> R => Complex)

;;@ a + b = the sum of a and b in complex numbers
(def-fun +  :: Complex -> Complex => Complex)

;;@ a - b = the difference of a and b in complex numbers
(def-fun -  :: Complex -> Complex => Complex)

;;@ - a = the negation of a in complex numbers
(def-fun -  :: Complex => Complex)

;;@ a * b = the product of a and b in complex numbers
(def-fun *  :: Complex -> Complex => Complex)

;;@ a / b = the quotient of a and b in complex numbers
(def-fun /  :: Complex -> Complex => Complex)

;;@ a ^ b = the power of a to b in complex numbers
(def-fun ^  :: Complex -> R => Complex)

;;@ abs(a) = the absolute value of a
(def-fun abs :: Complex => R)

;;@ arg(a) = the argument of a
(def-fun arg :: Complex => R)

;;@ sum([a1,...,an]) = the sum of a1,...,an in complex numbers
(def-fun sum :: (ListOf Complex) => Complex)

;;@ product([a1,...,an]) = the product of a1,...,an in complex numbers
(def-fun product :: (ListOf Complex) => Complex)

;;@ i() = the imaginary unit
(def-fun i  :: => Complex)

;;@ conjugate(a) = the conjugate of a
(def-fun conjugate :: Complex => Complex)

;;@ real-part(a) = the real part of a
(def-fun real-part :: Complex => R)

;;@ imaginary-part(b) = the imaginary part of a
(def-fun imaginary-part :: Complex => R)

;;@ trivially true for any Complex
(def-pred is-complex :: Complex => Bool)

;;@ real-number(a) <-> a is a real number
(def-pred real-number :: Complex => Bool)

;;@ is-purely-imaginary(a) <-> a is a purely imaginary number
(def-pred is-purely-imaginary :: Complex => Bool)

;;@ real->complex(a) = a of type Complex
(def-fun real->complex :: R => Complex)

;; trivially true for any function of type Complex -> Complex
;;# DONT_EXPORT
(def-fun is-polynomial :: (Complex -> Complex) => Bool)

;;@-----------------------------------------------------------------------------
;;@ Equations in complex numbers
;;@-----------------------------------------------------------------------------
(def-type Equation)

;;@ equation(f(*)) = the equation f(*) = 0
(def-fun equation :: (Complex -> Complex) => Equation)

;;@ quad-equation(c,b,a) = the equation ax^2 + bx + c = 0
(def-fun quad-equation :: R -> R -> R => Equation)

;;@ trivially true for any Equation
(def-pred is-equation :: Equation => Bool)

;;@ has-complex-solution(phi) = phi has a complex solution of which imaginary part is not 0
(def-pred has-complex-solution :: Equation => Bool)

;;@ has-real-solution(phi) = phi has a real solution
(def-pred has-real-solution :: Equation => Bool)

;;@ is-solution-of(z,phi) <-> z is a solution of phi
(def-pred is-solution-of :: Complex -> Equation => Bool)

;;@ is-real-solution-of(z,phi) <-> z is a real solution of phi
(def-pred is-real-solution-of :: Complex -> Equation => Bool)

;;@ are-solutions-of(list, phi) <-> list enumerates all complex solutions of phi
(def-pred are-solutions-of :: (ListOf Complex) -> Equation => Bool)

;;@ are-real-solutions-of(list, phi) <-> list enumerates all real solutions of phi
(def-pred are-real-solutions-of :: (ListOf Complex) -> Equation => Bool)

;;@ are-complex-solutions-of(list, phi) <-> list enumerates all complex solutions of which imaginary part are not 0 of phi
(def-pred are-complex-solutions-of :: (ListOf Complex) -> Equation => Bool)

;;@ is-second-order-equation(phi) <-> phi is a quadrtic equation
(def-pred is-second-order-equation :: Equation => Bool)

;;@-----------------------------------------------------------------------------

(import "axioms/Geom2DTypes.lsp")

;;@ complex->point(z) = the corresponding point of z in R^2
(def-fun complex->point :: Complex => 2d.Point)
(axiom
  def-complex->point
  (a b)
  (= (complex->point (complex a b))
     (2d.point a b)))
