(namespace rat)

(import "axioms/DefaultTypes.lsp")

;;@-----------------------------------------------------------------------------
;;@ Rational Numbers
;;@-----------------------------------------------------------------------------

;; ctor: (ratio a b) = a/b
;; rational constructor
;;# DONT_EXPORT: $rat
(def-ctor ratio :: Z -> Z => Q)

;; typing trigger
;; trivially true for any Q
;;# DONT_EXPORT: $is_rat
(def-pred is-rational-number :: Q => Bool)

;;# DONT_EXPORT: $is_rat
(def-pred is-number :: Q => Bool)

;; is-integer
;;# DONT_EXPORT: $is_int
(def-pred is-integer :: Q => Bool)

(def-pred is-natural-number :: Q => Bool)

;; int as rat
;; int->rat(a) = a of the type Q
;;# DONT_EXPORT: $to_rat
(def-fun int->rat :: Z => Q)

;;# DONT_EXPORT:
(def-fun to_rat :: Q => Q)

;;# DONT_EXPORT: $to_real
(def-fun to_real :: Q => R)

;; a + b = the sum of a and b in rational numbers
;;# DONT_EXPORT: $sum
(def-fun + :: Q -> Q => Q)

;; a - b = the difference of a and b in rational numbers
;;# DONT_EXPORT: $difference
(def-fun - :: Q -> Q => Q)

;; - a = the negation of a in rational numbers
;;# DONT_EXPORT: $uminus
(def-fun - :: Q => Q)

;; a * b = the product of a and b in rational numbers
;;# DONT_EXPORT: $product
(def-fun * :: Q -> Q => Q)

;; a / b = the quotient of a and b in rational numbers
;;# DONT_EXPORT: $quotient
(def-fun / :: Q -> Q => Q)

;;@ a ^ b = the power of a to b in rational numbers
(def-fun ^ :: Q -> Z => Q)

;;@ abs(a) = the absolute value of a
(def-fun abs :: Q => Q)

;;@ sum([a1,...,an]) = the sum of a1,...,an in rational numbers
(def-fun sum :: (ListOf Q) => Q)

;;@ product([a1,...,an]) = the product of a1,...,an in rational numbers
(def-fun product :: (ListOf Q) => Q)

;; a <= b <-> a is less than or equal to b
;;# DONT_EXPORT: $lesseq
(def-pred <= :: Q -> Q => Bool)

;; a < b <-> a is less than b
;;# DONT_EXPORT: $less
(def-pred <  :: Q -> Q => Bool)

;; a >= b <-> a is greater than or equal to b
;;# DONT_EXPORT: $greatereq
(def-pred >= :: Q -> Q => Bool)

;; a > b <-> a is greater than b
;;# DONT_EXPORT: $greater
(def-pred >  :: Q -> Q => Bool)

;; floor(r) = integral part of r
;;# DONT_EXPORT: $floor
(def-fun floor :: Q => Q)

;;@ minimum(set, q) <-> q is the minimum element in set
(def-pred minimum :: (SetOf Q) -> Q => Bool)

;;@ maximum(set, q) <-> q is the maximum element in set
(def-pred maximum :: (SetOf Q) -> Q => Bool)

;;@ nth-largest-elem(x, set, eval-fun, k)
;;@ <-> x is the element in set that gives the k-th largest value 
;;@     in the image of set by eval-fun
(def-pred nth-largest-elem :: a -> (SetOf a) -> (a -> Q) -> Z => Bool)

;;@ nth-smallest-elem(x, set, eval-fun, k)
;;@ <-> x is the element in set that gives the k-th smallest value 
;;@     in the image of set by eval-fun
(def-pred nth-smallest-elem :: a -> (SetOf a) -> (a -> Q) -> Z => Bool)

;;@ nth-largest-fun-value(x, set, eval-fun, k) 
;;@ <-> x is the k-th largest element in the image of set by eval-fun
(def-pred nth-largest-fun-value :: Q -> (SetOf a) -> (a -> Q) -> Z => Bool)

;;@ nth-smallest-fun-value(x, set, eval-fun, k)
;;@ <-> x is the k-th smallest element in the image of set by eval-fun
(def-pred nth-smallest-fun-value :: Q -> (SetOf a) -> (a -> Q) -> Z => Bool)

;;@ is-finite-decimal(r) <-> r is a finite decimal
(def-pred is-finite-decimal :: Q => Bool)

;;@ is-finite-decimal(r, b) <-> r is a finite decimal in base b
(def-pred is-finite-decimal :: Q -> Z => Bool)

;;@ is-reccuring-decimal(r) <-> r is a recurring decimal
(def-pred is-recurring-decimal :: Q => Bool)

;;@ is-reccuring-decimal(r, b) <-> r is a recurring decimal in base b
(def-pred is-recurring-decimal :: Q -> Z => Bool)

;;@ is-numerator-of(n, r) <-> n is the numerator of r in its irreducible form
(def-pred is-numerator-of :: Z -> Q => Bool)

;;@ is-denominator-of(n, r) <-> n is the denominator of r in its irreducible form
(def-pred is-denominator-of :: Z -> Q => Bool)
