;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Rational numbers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(namespace rat)
(import "axioms/IntegerTypes.lsp")
(import "axioms/RationalTypes.lsp")

;;# DONT_EXPORT: $is_rat
(def-typing-trigger
  (is-rational-number r)
  (m n)
  (&& (= r (ratio m n))
      (! (= n 0))))

;;# DONT_EXPORT: $is_int
(axiom
  def-is-integer
  (x)
  (<-> (is-integer x)
       (exists (k) (= x (ratio 1 k)))))

;;# DONT_EXPORT: $to_rat
(axiom
  def_int_to_rat
  (m)
  (= (int->rat m)
     (ratio m 1)))

;; equality
;;# DONT_EXPORT: =
(axiom
 def_rat_eq
 (a b c d)
 (<-> (= (ratio a b) (ratio c d))
      (= (int.* a d) (int.* b c))))

;; a/b + c/d = (ad + bc)/bd
;;# DONT_EXPORT: $sum
(axiom
  def_rat+
  (a b c d)
  (= (+ (ratio a b) (ratio c d))
     (ratio (int.+ (int.* a d) (int.* b c))
            (int.* b d))))

;; a/b - c/d = (ad - bc)/bd
;;# DONT_EXPORT: $difference
(axiom
  def_rat-
  (a b c d)
  (= (- (ratio a b) (ratio c d))
     (ratio (int.- (int.* a d) (int.* b c))
            (int.* b d))))

;; -(a/b) = (-a)/b
;;# DONT_EXPORT: $uminus
(axiom
  def_rat-_unary
  (a b)
  (= (- (ratio a b))
     (ratio (int.- a) b)))

;; a/b * c/d = ac/bd
;;# DONT_EXPORT: $product
(axiom
  def_rat*
  (a b c d)
  (= (* (ratio a b) (ratio c d))
     (ratio (int.* a c) (int.* b d))))

;; (a/b) / (c/d) = ad/bc
;;# DONT_EXPORT: $quotient
(axiom
  def_rat/
  (a b c d)
  (= (/ (ratio a b) (ratio c d))
     (ratio (int.* a d) (int.* b c))))

;; (a/b)^n = (a^n)/(b^n)
(axiom
  def_rat^
  (a b n)
  (= (^ (ratio a b) n)
     (ratio (int.^ a n) (int.^ b n))))

;; |a/b| = |a|/|b|
(axiom
  def_rat_abs
  (a b)
  (= (abs (ratio a b))
     (ratio (int.abs a) (int.abs b))))

;; a/b <= c/d
;;# DONT_EXPORT: $lesseq
(axiom
  def_rat_leq
  (a b c d)
  (<-> (<= (ratio a b) (ratio c d))
       (|| (&& (int.< 0 (int.* b d))
               (int.<= (int.* a d) (int.* b c)))
           (&& (int.> 0 (int.* b d))
               (int.>= (int.* a d) (int.* b c))))))

;; a/b < c/d <--> ! (c/d <= a/b)
;;# DONT_EXPORT: $less
(axiom
  def_rat_lt
  (a b c d)
  (<-> (< (ratio a b) (ratio c d))
       (! (<= (ratio c d) (ratio a b)))))

;; a/b >= c/d <--> c/d <= a/b
;;# DONT_EXPORT: $greatereq
(axiom
  def_rat_geq
  (a b c d)
  (<-> (>= (ratio a b) (ratio c d))
       (<= (ratio c d) (ratio a b))))

;; a/b > c/d <--> ! (a/b <= c/d)
;;# DONT_EXPORT: $greater
(axiom
  def_rat_gt
  (a b c d)
  (<-> (> (ratio a b) (ratio c d))
       (! (<= (ratio a b) (ratio c d)))))

;; sum :: (ListOf Q) => Q
(axiom
 def_rat_sum_nil
 ()
 (= (sum (nil)) (int->rat 0)))

(axiom
 def_rat_sum_cons
 (x xs)
 (= (sum (cons x xs))
    (+ x (sum xs))))

; product :: (ListOf Q) => Q
(axiom
 def_rat_product_nil
 ()
 (= (product (nil)) (int->rat 1)))

(axiom
 def_rat_product_cons
 (x xs)
 (= (product (cons x xs))
    (* x (product xs))))
