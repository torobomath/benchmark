;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Integers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(namespace int)
(import "axioms/IntegerTypes.lsp")
(import "axioms/RationalTypes.lsp")

(axiom
  def_is_integer
  (n)
  (is-integer n))

(axiom
  def_is_number
  (n)
  (is-number n))

(def-typing-trigger
  (is-natural-number n)
  ()
  (&& (is-integer n)
      (<= 1 n)))

;;# DONT_EXPORT: $to_rat
(axiom
  def_to_rat
  (x)
  (= (to_rat x) (rat.int->rat x)))

;;# DONT_EXPORT: $to_real
(axiom
  def_to_real
  (x)
  (= (to_real x) (int->real x)))

;(def-typing-trigger
;  (is-lattice-point ps)
;  (a b)
;  (&& (= ps (list-of a b))
;      (is-integer a)
;      (is-integer b)
;      ;(= (list-len ps) 2)
;   )
;)

;; division -> rational number
(axiom
  def-int-/
  (x y)
  (= (/ x y) (rat.ratio x y)))

;; min, max
(axiom
  def-int-binary-min
  (x y)
  (= (min x y)
     (if (< x y) x y)))

(axiom
  def-int-binary-max
  (x y)
  (= (max x y)
     (if (< x y) y x)))

(axiom
  def_zmaximum
  (set max)
  (<-> (maximum set max)
       (&& (elem max set)
           (forall (v)
                   (-> (elem v set)
                       (<= v max))))))


(axiom
  def_zminimum
  (set min)
  (<-> (minimum set min)
       (&& (elem min set)
           (forall (v)
                   (-> (elem v set)
                       (<= min v))))))

; sum :: (ListOf Z) => Z
(axiom
 def_int_sum_nil
 ()
 (= (sum (nil)) 0))

(axiom
 def_int_sum_cons
 (x xs)
 (= (sum (cons x xs))
    (+ x (sum xs))))

; product :: (ListOf Z) => Z
(axiom
 def_int_product_nil
 ()
 (= (product (nil)) 1))

(axiom
 def_int_product_cons
 (x xs)
 (= (product (cons x xs))
    (* x (product xs))))

(axiom
  def-is-common-divisor-of
  (m ns)
  (<-> (is-common-divisor-of m ns)
       (all (PLam n (is-divisible-by n m)) ns)))

(axiom
  def-is-common-multiple-of
  (m ns)
  (<-> (is-common-multiple-of m ns)
       (all (PLam n (is-divisible-by m n)) ns)))

(axiom
  def-lcm2
  (m n)
  (= (lcm m n)
     (lcm (list-of m n))))


;; concepts

;(axiom
;  def_int_mod
;    (x y)
;    (= (mod x y)
;       (let ((y0 (abs y)))
;         (if (< x 0) (mod (+ x y0) y0)
;                     (if (> x y0) (mod (- x y0) y0)
;                                  x)))))

(axiom
  def-is-odd-number
  (n)
  (<-> (is-odd-number n)
	   ;(= (mod (abs n) 2) 1)))
       (exists (k)
          (= n (+ (* 2 k) 1)))))

(axiom
  def-is-even-number
  (n)
  (<-> (is-even-number n)
       (is-divisible-by n 2)))

(axiom
  def-are-coprime
  (ns)
  (<-> (are-coprime ns)
       (= 1 (gcd ns))))

(axiom
  def-are-coprime-2int
  (a b)
  (<-> (are-coprime a b)
       (= 1 (gcd a b))))

(axiom
  def-is-divisible-by
  (m n)
  (<-> (is-divisible-by m n)
       (exists (k) (= m (* k n)))))

(axiom
  def-divides
  (m n)
  (<-> (divides m n)
       (exists (k) (= n (* k m)))))

(axiom
 def-is-prime
 (p)
 (<-> (is-prime p)
      (&& (<= 2 p)
          (forall (m n) (-> (&& (= p (* m n))
                                (< 0 m)
                                (< 0 n))
                            (|| (= m p)
                                (= n p)))))))

(axiom
 def-is-square-number
 (n)
 (<-> (is-square-number n)
      (exists (m) (= n (* m m)))
  )
)

(axiom
 def_is_cardinality_of_int
 (n s)
 (<-> (is-cardinality-of n s)
      (= n (list-len (set-to-list s)))))

(axiom
 def_cardinality_of_int
 (s)
 (= (cardinality-of s)
      (list-len (set-to-list s))))

; list-len :: (ListOf a) => Z
(axiom
  def_list_len_0
  (xs)
  (<-> (= (list-len xs) 0)
       (= xs (nil))))

(axiom
  def_list_len_1
  (xs)
  (<-> (= (list-len xs) 1)
       (exists (x)
               (= xs (list-of x)))))
(axiom
  def_list_len_2
  (xs)
  (<-> (= (list-len xs) 2)
       (exists (x1 x2)
               (= xs (list-of x1 x2)))))
(axiom
  def_list_len_3
  (xs)
  (<-> (= (list-len xs) 3)
       (exists (x1 x2 x3)
               (= xs (list-of x1 x2 x3)))))

(axiom
  def_list_len_base
  ()
  (= (list-len (nil)) 0))

(axiom
  def_list_len_rec
  (x xs)
  (= (list-len (cons x xs)) (int.+ 1 (list-len xs))))

;; replicate :: Z -> a => (ListOf a)
(axiom
  def_replicate_0
	(x)
	(= (replicate 0 x)
		 (nil)))

(axiom
  def_replicate_n
	(n x)
	(= (replicate n x)
		 (cons x (replicate (- n 1) x))))

;; nthcdr :: Z -> (ListOf a) => (ListOf a)
;; 2013/11/26 suzuki
(axiom
 def_nthcdr_0
 (lis)
 (= (nthcdr 0 lis) 
    lis))

(axiom
 def_nthcdr_rec
 (@n lis)
 (= (nthcdr @n lis)
    (cdr (nthcdr (- @n 1) lis))))

;; nth :: Z -> (ListOf a) => a
;; 2013/11/26 suzuki
(axiom
 def_nth
 (n lis)
 (= (nth n lis)
    (car (nthcdr n lis))))

;; list-number :: (ListOf a) -> a => Z
;; 2013/12/13 suzuki
(axiom
 def_list_number_0
 (x)
 (= (list-number x (nil))
    0))

(axiom
 def_list_number_rec
 (x y lis)
 (= (list-number x (cons y lis))
    (if (= x y) (+ 1 (list-number x lis)) (list-number x lis))))

;; int2binary :: Z => (ListOf Z)
(axiom
  int2binary_0
	()
	(= (int2binary 0)
		 (list-of 0)))

(axiom
  int2binary_1
	()
	(= (int2binary 1)
		 (list-of 1)))

(axiom
  int2binary_n
	(n)
	(= (int2binary n)
		 (cons (mod n 2) (int2binary (div n 2)))))


;; int2decimal :: Z => (ListOf Z)
(axiom
  int2decimal_0
	()
	(= (int2decimal 0)
		 (list-of 0)))

(axiom
  int2decimal_1
	()
	(= (int2decimal 1)
		 (list-of 1)))

(axiom
  int2decimal_2
	()
	(= (int2decimal 2)
		 (list-of 2)))

(axiom
  int2decimal_3
	()
	(= (int2decimal 3)
		 (list-of 3)))

(axiom
  int2decimal_4
	()
	(= (int2decimal 4)
		 (list-of 4)))

(axiom
  int2decimal_5
	()
	(= (int2decimal 5)
		 (list-of 5)))

(axiom
  int2decimal_6
	()
	(= (int2decimal 6)
		 (list-of 6)))

(axiom
  int2decimal_7
	()
	(= (int2decimal 7)
		 (list-of 7)))

(axiom
  int2decimal_8
	()
	(= (int2decimal 8)
		 (list-of 8)))

(axiom
  int2decimal_9
	()
	(= (int2decimal 9)
		 (list-of 9)))

(axiom
  int2decimal_n
	(n)
	(= (int2decimal n)
		 (cons (mod n 10) (int2decimal (div n 10)))))


;; ordinal
(axiom
  ordinal_0
	()
	(= (ordinal 0)
		 (nil)))

(axiom
  ordinal_n
	(n)
	(= (ordinal n)
		 (append (ordinal (- n 1)) (list-of (- n 1)))))


;;2013/11/30 suzuki
(axiom
 repeat_0
 (f x)
 (= (repeat 0 f x)
    x))

(axiom
 repeat_rec
 (n f x)
 (= (repeat n f x)
    (LamApp f (repeat (- n 1) f x))))

;; 2013/12/10 suzuki
(axiom
 repeat_p_0
 (f x)
 (= (repeat-p 0 f x)
    x))

(axiom
 repeat_p_rec
 (n f x)
 (= (repeat-p n f x)
    (LamApp (LamApp f (repeat-p (- n 1) f x)) (- n 1))))

(axiom
  def_factorial_base_0
  ()
  (= (factorial 0) 1))

(axiom
  def_factorial_base_1
  ()
  (= (factorial 1) 1))

(axiom
  def_factorial_rec
  (@n)
  (= (factorial @n)
	 ;(* @n (factorial (- @n 1)))))
     (product (iota 1 @n))))

(axiom
  def_permutation_base
  (n)
  (= (permutation n 0) 1))

(axiom
  def_permutation_rec
  (@n @m)
  (= (permutation @n @m)
	 ;(* @n (permutation (- @n 1) (- @m 1)))))
     (product (iota (+ (- @n @m) 1) @n))))

(axiom
  def_combination
  (n m)
  (= (combination n m)
	 (div (permutation n m) (factorial m))))

;(axiom
; def-lattice-xcoord
; (x y)
; (= (x-coord (list-of x y)) x)
;)
;(axiom
; def-lattice-ycoord
; (x y)
; (= (y-coord (list-of x y)) y)
;)

; 2015-01-06:

(axiom
  def-num-of-digits-eq
  (n m)
  (<-> (= (num-of-digits n) m)
       (&& (<= (^ 10 (- m 1)) n)
           (< n (^ 10 m)))))
(axiom
  def-num-of-digits-lt1
  (n m)
  (<-> (< (num-of-digits n) m)
       (< n (^ 10 (- m 1)))))
(axiom
  def-num-of-digits-lt2
  (n m)
  (<-> (< m (num-of-digits n))
       (<= (^ 10 m) n)))
(axiom
  def-num-of-digits-gt1
  (n m)
  (<-> (> (num-of-digits n) m)
       (<= (^ 10 m) n)))
(axiom
  def-num-of-digits-gt2
  (n m)
  (<-> (> m (num-of-digits n))
       (< n (^ 10 (- m 1)))))
(axiom
  def-num-of-digits-le1
  (n m)
  (<-> (<= (num-of-digits n) m)
       (< n (^ 10 m))))
(axiom
  def-num-of-digits-le2
  (n m)
  (<-> (<= m (num-of-digits n))
       (<= (^ 10 (- m 1)) n)))
(axiom
  def-num-of-digits-ge1
  (n m)
  (<-> (>= (num-of-digits n) m)
       (<= (^ 10 (- m 1)) n)))
(axiom
  def-num-of-digits-ge2
  (n m)
  (<-> (>= m (num-of-digits n))
       (< n (^ 10 m))))

;;--------------------------------------
;;--------------------------------------
(axiom
  def-num-of-digits-in-base-k-eq
  (n m k)
  (<-> (= (list-len (digits-in-base n k)) m)
       (&& (<= (^ k (- m 1)) n)
           (< n (^ k m)))))

(axiom
  def-num-of-digits-in-base-k-lt1
  (n m k)
  (<-> (< (list-len (digits-in-base n k)) m)
       (< n (^ k (- m 1)))))

(axiom
  def-num-of-digits-in-base-k-lt2
  (n m k)
  (<-> (< m (list-len (digits-in-base n k)))
       (<= (^ k m) n)))

(axiom
  def-num-of-digits-in-base-k-gt1
  (n m k)
  (<-> (> (list-len (digits-in-base n k)) m)
       (< m (list-len (digits-in-base n k)))))

(axiom
  def-num-of-digits-in-base-k-gt2
  (n m k)
  (<-> (> m (list-len (digits-in-base n k)))
       (< (list-len (digits-in-base n k)) m)))

(axiom
  def-num-of-digits-in-base-k-le1
  (n m k)
  (<-> (<= (list-len (digits-in-base n k)) m)
       (! (> (list-len (digits-in-base n k)) m))))

(axiom
  def-num-of-digits-in-base-k-le2
  (n m k)
  (<-> (<= m (list-len (digits-in-base n k)))
       (! (> m (list-len (digits-in-base n k))))))

(axiom
  def-num-of-digits-in-base-k-ge1
  (n m k)
  (<-> (>= (list-len (digits-in-base n k)) m)
       (! (< (list-len (digits-in-base n k)) m))))

(axiom
  def-num-of-digits-in-base-k-ge2
  (n m k)
  (<-> (>= m (list-len (digits-in-base n k)))
       (! (< m (list-len (digits-in-base n k))))))

;;--------------------------------------
;;--------------------------------------
(axiom
  def-mod-eq
  (n m k)
  (<-> (= (mod n m) k)
       (&& (<= 0 k)
           (< k (abs m))
           (exists (p)
              (= n (+ (* m p) k))))))

;;@-----------------------------------------------------------------------------
;;@ finiteness of a set of integers
;;@-----------------------------------------------------------------------------
(axiom 
 def-is-finite-set
 (s)
 (<-> (is-finite-set s)
      (exists (m M)
        (forall (e)
          (-> (elem e s)
              (&& (<= m e) (<= e M)))))))

(axiom
 def-is-infinit-set
 (s)
 (<-> (is-infinite-set s)
      (! (is-finite-set s))))

;;@-----------------------------------------------------------------------------
;;@ Numeral system
;;@-----------------------------------------------------------------------------
(axiom
  def-digits-in-base
  (@k @n)
  (= (digits-in-base @n @k)
     (if (< @n @k)
         (list-of @n)
         (cons (mod @n @k) (digits-in-base (div @n @k) @k)))))

(axiom
  def-digits-in-base-nil
  (k n)
  (<-> (= (digits-in-base n k) (nil))
       (false)))

(axiom
  def-digits-in-base-single-digit
  (k n m)
  (<-> (= (digits-in-base n k) (list-of m))
       (&& (<= 0 m)
           (< m k)
           (= n m))))

(axiom
  def-digits-in-base-two-or-more-digits
  (k n m1 m2 ms)
  (<-> (= (digits-in-base n k) (cons m1 (cons m2 ms)))
       (&& (= (mod n k) m1)
           (= (digits-in-base (div n k) k) (cons m2 ms)))))

(axiom
  def-number-in-base-base
  (k)
  (= (number-in-base (nil) k) 0))

(axiom
  def-number-in-base-rec
  (k n ns)
  (= (number-in-base (cons n ns) k)
     (+ n (* k (number-in-base ns k)))))

;; TMP
;(axiom
;  def-div
;  (m n k)
;  (<-> (= (div m n) k)
;       (&& (<= (* k n) m)
;           (< m (* (+ k 1) n)))))

;(axiom
;  def-parametrize
;  (vs cond)
;  (<-> (parametrize vs cond)
;       (PLamApp cond (_))))

;; nth-largest/smallest-elem: 
(axiom
  def-nth-largest-elem-base
  (m set fun)
  (<-> (nth-largest-elem m set fun 1)
       (&& (elem m set)
           (forall (x)
              (-> (elem x set)
                  (<= (LamApp fun x) (LamApp fun m)))))))

(axiom
  def-nth-smallest-elem-base
  (m set fun)
  (<-> (nth-smallest-elem m set fun 1)
       (&& (elem m set)
           (forall (x)
              (-> (elem x set)
                  (<= (LamApp fun m) (LamApp fun x)))))))

(axiom
  def-nth-largest-elem-rec
  (x set fun @n)
  (<-> (nth-largest-elem x set fun @n)
       (&& (elem x set)
           (forall (y)
              (-> (elem y set)
                  (|| (some (PLam k (nth-largest-elem y set fun k)) (iota (- @n 1) 1))
                      (<= (LamApp fun y) (LamApp fun x))))))))

(axiom
  def-nth-smallest-elem-rec
  (x set fun @n)
  (<-> (nth-smallest-elem x set fun @n)
       (&& (elem x set)
           (forall (y)
              (-> (elem y set)
                  (|| (some (PLam k (nth-smallest-elem y set fun k)) (iota (- @n 1) 1))
                      (<= (LamApp fun y) (LamApp fun x))))))))

;; iota(a, b) = [a, a+1, ..., b] (if a <= b)
;; iota(a, b) = [a, a-1, ..., b] (if a > b)
;(axiom
;  def-iota-rec
;  (@m @n)
;  (= (iota @m @n)
;     (if (= @m @n)
;         (list-of @m)
;         (if (< @m @n)
;             (cons @m (iota (+ @m 1) @n))
;             (cons @m (iota (- @m 1) @n))))))

;;-----------------------------------------------------------------------
;;-----------------------------------------------------------------------
;; pfd(N = 123, N = a^m b^n ..) <-> (N = 123 <-> N = a^m b^m ..)
;(axiom
;  def-pfd-default
;  (f g)
;  (<-> (pfd f g)
;       (&& (PLamApp f (_)) (PLamApp g (_)))))
;
;;; pfd_ee(123, a^m b^n ..) <-> N = a^m b^n ...
;(axiom
;  def-pfd_ee-default
;  (m n)
;  (<-> (pfd_ee m n)
;       (= m n)))
;
;
;;; pfd_ef(N, N = a^m b^m)
;(axiom
;  def-pfd-ef-default
;  (n f)
;  (<-> (pfd_ef n f)
;       (PLamApp f (_))))
;
;;; transform(f, g) <-> (f <-> g)
;(axiom
;  def-transform-default
;  (f g)
;  (<-> (transform f g)
;       (&& (PLamApp f (_)) (PLamApp g (_)))))
