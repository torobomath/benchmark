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

;;# DONT_EXPORT: $is_rat
(def-typing-trigger
  (is-number r)
  (m n)
  (&& (= r (ratio m n))
      (! (= n 0))))

;;# DONT_EXPORT: $is_int
(axiom
  def-is-integer
  (x)
  (<-> (is-integer x)
       (exists (k) (= x (ratio 1 k)))))

(axiom
   def-rat-is-natural-number
   (x)
   (<-> (is-natural-number x)
        (&& (is-integer x)
            (<= 1 x))))

;;# DONT_EXPORT: $to_rat
(axiom
  def_int_to_rat
  (m)
  (= (int->rat m)
     (ratio m 1)))

;;# DONT_EXPORT: id
(axiom
  def_to_rat
  (x)
  (= (to_rat x) x))

;;# DONT_EXPORT: $to_real
(axiom
  def_to_real
  (x)
  (= (to_real x) (rat->real x)))

;;# DONT_EXPORT:
(axiom
  def-rat-to-real-on+
  (x y)
  (= (rat->real (+ x y))
     (.+ (rat->real x) (rat->real y))))

;;# DONT_EXPORT:
(axiom
  def-rat-to-real-on-
  (x y)
  (= (rat->real (- x y))
     (.- (rat->real x) (rat->real y))))

;;# DONT_EXPORT:
(axiom
  def-rat-to-real-on*
  (x y)
  (= (rat->real (* x y))
     (.* (rat->real x) (rat->real y))))

;;# DONT_EXPORT:
(axiom
  def-rat-to-real-on/
  (x y)
  (= (rat->real (/ x y))
     (./ (rat->real x) (rat->real y))))

;;# DONT_EXPORT:
(axiom
  def-rat-to-real-on^
  (x y)
  (= (rat->real (^ x y))
     (.^ (rat->real x) (int->real y))))

;;# DONT_EXPORT:
(axiom
  def-rat-to-real-on-abs
  (x)
  (= (rat->real (abs x))
     (.abs (rat->real x))))

;;# DONT_EXPORT:
(axiom
  def-rat-to-real-on-ratio
  (x y)
  (= (rat->real (ratio x y))
     (./ (int->real x) (int->real y))))

;;# DONT_EXPORT:
(axiom
  def-rat-to-real-on-int/
  (x y)
  (= (rat->real (int./ x y))
     (./ (int->real x) (int->real y))))

;; equality
;;# DONT_EXPORT: =
(axiom
  def_rat_eq
  (a b c d)
  (<-> (= (ratio a b) (ratio c d))
       (&& (= (int.* a d) (int.* b c))
           (! (= b 0))
           (! (= d 0)))))

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
       (&& (! (= b 0))
           (! (= d 0))
           (|| (&& (int.< 0 (int.* b d))
                   (int.<= (int.* a d) (int.* b c)))
               (&& (int.> 0 (int.* b d))
                   (int.>= (int.* a d) (int.* b c)))))))

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

;; maximum/minimum
(axiom
  def_maximum
  (set max)
  (<-> (maximum set max)
       (&& (elem max set)
           (forall (v)
                   (-> (elem v set)
                       (<= v max))))))


(axiom
  def_minimum
  (set min)
  (<-> (minimum set min)
       (&& (elem min set)
           (forall (v)
                   (-> (elem v set)
                       (<= min v))))))

(axiom
  def-is-numerator-of
  (n x y)
  (<-> (is-numerator-of n (ratio x y))
       (exists (p q)
               (&& (= (ratio p q) (ratio x y))
                   (= 1 (int.gcd p q))
                   (int.< 0 q) 
                   (= p n)))))

(axiom
  def-is-denominator-of
  (n x y)
  (<-> (is-denominator-of n (ratio x y))
       (exists (p q)
               (&& (= (ratio p q) (ratio x y))
                   (= 1 (int.gcd p q))
                   (int.< 0 q) 
                   (= q n)))))

(axiom
  def-is-finite-decimal
  (r b)
  (<-> (is-finite-decimal r b)
       (exists (n k)
               (= r (ratio n (int.^ b k))))))

(axiom
  def-is-recurring-decimal
  (r)
  (<-> (is-recurring-decimal r)
       (! (is-finite-decimal r))))

(axiom
   def-is-finite-decimal-base10
   (x)
   (<-> (is-finite-decimal x)
        (is-finite-decimal x 10)))

(axiom
   def-is-recurring-decimal-base10
   (x)
   (<-> (is-recurring-decimal x)
        (is-recurring-decimal x 10)))
