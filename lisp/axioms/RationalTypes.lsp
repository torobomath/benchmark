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

;; is-integer
;;# DONT_EXPORT: $is_int
(def-pred is-integer :: Q => Bool)

;; int as rat
;; int->rat(a) = a of the type Q
;;# DONT_EXPORT: $to_rat
(def-fun int->rat :: Z => Q)

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
