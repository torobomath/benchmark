(default-namespace)

(import "axioms/DefaultTypes.lsp")
(import "axioms/IntegerTypes.lsp")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interval
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
  def_range_elem
  (x lo hi)
  (<-> (elem x (range lo hi))
       (&& (test-range-hi x hi)
           (test-range-lo lo x))))
(axiom
  def_range_equality
  (lo1 hi1 lo2 hi2)
  (<-> (= (range lo1 hi1) (range lo2 hi2))
       (&& (= lo1 lo2)
           (= hi1 hi2))))

(axiom
  def_endpoint_equality_close
  (e1 e2)
  (<-> (= (ep-close e1) (ep-close e2))
       (= e1 e2)))

(axiom
  def_endpoint_equality_open
  (e1 e2)
  (<-> (= (ep-open e1) (ep-open e2))
       (= e1 e2)))

(axiom
  def_endpoint_equality_infinity
  ()
  (= (ep-inf) (ep-inf)))

(axiom
  def_endpoint_non_equality_close_open
  (e1 e2)
  (<-> (= (ep-open e1) (ep-close e2))
       (false)))

(axiom
  def_endpoint_non_equality_open_infinity
  (e1)
  (<-> (= (ep-open e1) (ep-inf))
       (false)))

(axiom
  def_endpoint_non_equality_close_infinity
  (e1)
  (<-> (= (ep-close e1) (ep-inf))
       (false)))

(axiom
  def_test_range_hi_close
  (x hi)
  (<-> (test-range-hi x (ep-close hi))
       (<= x hi)))

(axiom
  def_test_range_hi_open
  (x hi)
  (<-> (test-range-hi x (ep-open hi))
       (< x hi)))

(axiom
  def_test_range_hi_inf
  (x)
  (test-range-hi x (ep-inf)))

(axiom
  def_test_range_lo_close
  (x lo)
  (<-> (test-range-lo (ep-close lo) x)
       (<= lo x)))

(axiom
  def_test_range_lo_open
  (x lo)
  (<-> (test-range-lo (ep-open lo) x)
       (< lo x)))

(axiom
  def_test_range_lo_inf
  (x)
  (test-range-lo (ep-inf) x))

(axiom
  def-is-lower-bound-of-range-lo-open
  (x lo hi)
  (<-> (is-lower-bound-of x (range (ep-open lo) hi))
       (<= x lo)))

(axiom
  def-is-lower-bound-of-range-lo-close
  (x lo hi)
  (<-> (is-lower-bound-of x (range (ep-close lo) hi))
       (<= x lo)))

(axiom
  def-is-lower-bound-of-range-lo-inf
  (x hi)
  (<-> (is-lower-bound-of x (range (ep-inf) hi))
       (false)))

(axiom
  def-is-upper-bound-of-range-hi-open
  (x lo hi)
  (<-> (is-upper-bound-of x (range lo (ep-open hi)))
       (<= hi x)))

(axiom
  def-is-upper-bound-of-range-hi-close
  (x lo hi)
  (<-> (is-upper-bound-of x (range lo (ep-close hi)))
       (<= hi x)))

(axiom
  def-is-upper-bound-of-range-hi-inf
  (x lo)
  (<-> (is-upper-bound-of x (range lo (ep-inf)))
       (false)))

(axiom
  def-is-inf-of-range-lo-open
  (x lo hi)
  (<-> (is-inf-of x (range (ep-open lo) hi))
       (= x lo)))

(axiom
  def-is-inf-of-range-lo-close
  (x lo hi)
  (<-> (is-inf-of x (range (ep-close lo) hi))
       (= x lo)))

(axiom
  def-is-inf-of-range-lo-inf
  (x hi)
  (<-> (is-inf-of x (range (ep-inf) hi))
       (false)))

(axiom
  def-is-sup-of-range-hi-open
  (x lo hi)
  (<-> (is-sup-of x (range lo (ep-open hi)))
       (= hi x)))

(axiom
  def-is-sup-of-range-hi-close
  (x lo hi)
  (<-> (is-sup-of x (range lo (ep-close hi)))
       (= hi x)))

(axiom
  def-is-sup-of-range-hi-inf
  (x lo)
  (<-> (is-sup-of x (range lo (ep-inf)))
       (false)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Implementation of polynomials
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
  def_poly_value_nil
  (x)
  (= (poly-value (nil) x) 0))

(axiom
  def_poly_value_cons
  (c cs x)
  (= (poly-value (cons c cs) x)
     (+ c (* x (poly-value cs x)))))

;(axiom
;  def_poly_canonical_form_nil
;  ()
;  (= (poly-canonical-form (nil))
;     (nil)))
;(axiom
;  def_poly_canonical_form_cons
;  (c cs)
;  (= (poly-canonical-form (cons c cs))
;     (if (all (PLam x (= x 0)) cs)
;       (if (= c 0)
;         (nil)
;         (cons c (nil)))
;       (cons c (poly-canonical-form cs)))))

(axiom
  def_poly_equal_nil0
  (bs)
  (<-> (poly-equal bs (nil))
       (all (PLam x (= x 0)) bs)))

(axiom
  def_poly_equal_nil1
  (as)
  (<-> (poly-equal (nil) as)
       (all (PLam x (= x 0)) as)))

(axiom
  def_poly_equal_cons
  (a0 as b0 bs)
  (<-> (poly-equal (cons a0 as) (cons b0 bs))
       (&& (= a0 b0)
           (poly-equal as bs))))

;(axiom
;  def_poly_equal_cons_left
;  (a0 as bs)
;  (<-> (poly-equal (cons a0 as) bs)
;       (|| (&& (= a0 0)
;               (all (PLam x (= x 0)) as)
;               (all (PLam x (= x 0)) bs))
;           (&& (= (car bs) a0)
;               (poly-equal (cdr bs) as)))))
;(axiom
;  def_poly_equal_cons_right
;  (a0 as bs)
;  (<-> (poly-equal bs (cons a0 as))
;       (|| (&& (= a0 0)
;               (all (PLam x (= x 0)) as)
;               (all (PLam x (= x 0)) bs))
;           (&& (= (car bs) a0)
;               (poly-equal (cdr bs) as)))))

;(axiom
;   def_poly_equal
;   (as bs)
;   (<-> (poly-equal as bs)
;        (= (poly-canonical-form as) (poly-canonical-form bs))))

;; poly+ ::  (ListOf R) -> (ListOf R) => (ListOf R)
(axiom
  def_poly_plus_nil0
	(bs)
	(= (poly+ (nil) bs)
		 bs))

(axiom
  def_poly_plus_nil1
	(as)
	(= (poly+ as (nil))
		 as))

(axiom
  def_poly_plus_cons
	(a0 as b0 bs)
	(= (poly+ (cons a0 as)
						(cons b0 bs))
		 (cons (+ a0 b0) (poly+ as bs))))


(axiom
  def_poly_minus_nil0
	(bs)
	(= (poly- (nil) bs)
		 (map (Lam x (- 0 x)) bs)))

(axiom
  def_poly_minus_nil1
	(as)
	(= (poly- as (nil))
		 as))

(axiom
  def_poly_minus_cons
	(a0 as b0 bs)
	(= (poly- (cons a0 as)
						(cons b0 bs))
		 (cons (- a0 b0) (poly- as bs))))
		 



(axiom
  def_poly_scalar_prod
	(a cs)
	(= (poly-s* a cs)
		 (map (Lam x (* a x)) cs)))


;; poly* :: (ListOf R) -> (ListOf R) => (ListOf R)
(axiom
  def_poly_prod_nil0
	(as)
	(= (poly* (nil) as)
		 (nil)))

(axiom
  def_poly_prod_nil1
	(as)
	(= (poly* as (nil))
		 (nil)))

(axiom
  def_poly_prod_cons
	(a0 as b0 bs)
	(= (poly* (cons a0 as) (cons b0 bs))
		 (poly+ (poly+ (list-of (* a0 b0))
									 (cons 0 (cons 0 (poly* as bs))))
						(cons 0 (poly+ (poly-s* a0 bs)
													 (poly-s* b0 as))))))

;; poly-deg :: (ListOf R) => R
;(axiom
;  def_poly_deg
;	(as)
;	(= (poly-deg as)
;		 (if (all (PLam x (= x 0)) as) 0
;			 (+ 1 (poly-deg (poly-deriv as))))))
(axiom
  def_poly_deg_nil
  ()
  (= (poly-deg (nil))
     0))
(axiom
  def_poly_deg_cons
	(a as)
	(= (poly-deg (cons a as))
		 (if (all (PLam x (= x 0)) as) 0
			 (int.+ 1 (poly-deg as)))))

;; poly-deriv :: (ListOf R) => (ListOf R)
(axiom
  def_poly_deriv_nil
	()
	(= (poly-deriv (nil))
		 (nil)))

(axiom
  def_poly_deriv_cons
	(a0 as)
	(= (poly-deriv (cons a0 as))
		 (poly+ as (cons 0 (poly-deriv as)))))


;; poly-divisible :: (ListOf R) -> (ListOf R) => Bool
(axiom
  def_poly_divisible_by
  (as bs)
  (<-> (poly-divisible-by as bs)
       (exists (quo)
               (poly-divmod as bs quo (nil)))))


;; constant-term :: (ListOf R) => R
(axiom
  def_constant_term_nil
	()
	(= (constant-term (nil))
			 0))

(axiom
  def_constant_term_cons
	(a0 as)
	(= (constant-term (cons a0 as))
			 a0))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interface as polynomial functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; funapp :: R2R -> R => R
(axiom
  def_poly_funapp
  (cs x)
  (= (funapp (poly-fun cs) x)
     (poly-value cs x)))

;;; derivative :: R2R => R2R
;(axiom
;  def_derivative_poly_fun_nil
;	()
;	(= (derivative (poly-fun (nil)))
;		 (fun (Lam x 0))))

(axiom
  def_equality_polyfun
  (as bs)
  (<-> (= (poly-fun as) (poly-fun bs))
       (poly-equal as bs)))

(axiom
  def_equality_polyfun_and_lambda_fun
  (as f)
  (<-> (= (poly-fun as) (fun f))
       (= (fun (Lam x (poly-value as x))) (fun f))))

(axiom
  def_derivative_polynomial
	(as)
	(= (derivative (poly-fun as))
		 (poly-fun (poly-deriv as))))

(axiom
  def_integration_polynominal
  (as lo hi)
  (= (integration (poly-fun as) lo hi)
     (integration (fun (Lam x (poly-value as x))) lo hi)))



;; fun+ :: R2R -> R2R => R2R
(axiom
  def_fun_plus_polynomial
	(as bs)
	(= (fun+ (poly-fun as) (poly-fun bs))
		 (poly-fun (poly+ as bs))))


;; fun- :: R2R -> R2R => R2R
(axiom
  def_fun_minus_polynomial
	(as bs)
	(= (fun- (poly-fun as) (poly-fun bs))
		 (poly-fun (poly- as bs))))

;; fun-s* :: R -> R2R => R2R
(axiom
  def_fun_scalar_prod_polynomial
	(a cs)
	(= (fun-s* a (poly-fun cs))
		 (poly-fun (poly-s* a cs))))

;; fun* :: R2R -> R2R => R2R
(axiom
  def_fun_prod_polynomial
	(as bs)
	(= (fun* (poly-fun as) (poly-fun bs))
		 (poly-fun (poly* as bs))))


(axiom
  def_2nd_poly_funcmin
  (a b c hi lo xm ym)
  (<-> (func-min (poly-fun (list-of c b a))
                 (range (ep-close lo) (ep-close hi))
                 xm ym)
       (let ((px (- (/ b (* 2 a))))
             (py (- c (/ (^ b 2) (* 4 a))))
             (y-lo (poly-value (list-of c b a) lo))
             (y-hi (poly-value (list-of c b a) hi)))
         (|| (&& (< 0 a)
                 (|| (&& (elem px (range (ep-close lo) (ep-close hi)))
                         (= xm px)
                         (= ym py))
                     (&& (< px lo)
                         (= xm lo)
                         (= ym y-lo))
                     (&& (< hi px)
                         (= xm hi)
                         (= ym y-hi))))
             (&& (|| (< a 0)
                     (&& (= a 0) (! (= b 0))))
                 (|| (&& (< y-lo y-hi)
                         (= xm lo)
                         (= ym y-lo))
                     (&& (<= y-hi y-lo)
                         (= xm hi)
                         (= ym y-hi))))))))
(axiom
  def_2nd_poly_funcmax
  (a b c hi lo xM yM)
  (<-> (func-max (poly-fun (list-of c b a))
                 (range (ep-close lo) (ep-close hi))
                 xM yM)
       (&& (exists (ym)
                   (&& (func-min (poly-fun (list-of (- c) (- b) (- a)))
                                 (range (ep-close lo) (ep-close hi))
                                 xM ym)
                       (= yM (- ym)))))))

(axiom
 def_other_poly_funcmin
 (as range xm ym)
 (<-> (func-min (poly-fun as) range xm ym)
      (func-min (fun (Lam x (poly-value as x))) range xm ym)))

(axiom
 def_other_poly_funcmax
 (as range xm ym)
 (<-> (func-max (poly-fun as) range xm ym)
      (func-max (fun (Lam x (poly-value as x))) range xm ym)))

(axiom
 def_other_poly_funcmin_no_domain_restriction
 (as xm ym)
 (<-> (func-min (poly-fun as) xm ym)
      (func-min (fun (Lam x (poly-value as x))) xm ym)))

(axiom
 def_other_poly_funcmax_no_domain_restriction
 (as xm ym)
 (<-> (func-max (poly-fun as) xm ym)
      (func-max (fun (Lam x (poly-value as x))) xm ym)))
                

(axiom
 def_is_fun_deg_of
 (n as)
 (<-> (is-fun-deg-of n (poly-fun as))
      (= n (poly-deg as))))

(axiom
 def_is_fun_deg_of_1st
 (f)
 ;(<-> (is-fun-deg-of 1 (fun f))
 ;     (&& (! (= (Lam x 0) (deriv f)))
 ;         (= (Lam x 0) (deriv (deriv f))))))
 (<-> (is-fun-deg-of 1 f)
      (exists (a b)
        (&& (! (= a 0))
            (= f (poly-fun (list-of b a)))))))

(axiom
 def_is_fun_deg_of_2nd
 (f)
 ;(<-> (is-fun-deg-of 2 (fun f))
 ;     (&& (! (= (Lam x 0) (deriv (deriv f))))
 ;         (= (Lam x 0) (deriv (deriv (deriv f)))))))
 (<-> (is-fun-deg-of 2 f)
      (exists (a b c)
        (&& (! (= a 0))
            (= f (poly-fun (list-of c b a)))))))

(axiom
 def_is_fun_deg_of_3rd
 (f)
 ;(<-> (is-fun-deg-of 3 (fun f))
 ;     (&& (! (= (Lam x 0) (deriv (deriv (deriv f)))))
 ;         (= (Lam x 0) (deriv (deriv (deriv (deriv f))))))))
 (<-> (is-fun-deg-of 3 f)
      (exists (a b c d)
        (&& (! (= a 0))
            (= f (poly-fun (list-of d c b a)))))))

(axiom
  def-fun-deg
  (cs)
  (= (func-deg (poly-fun cs))
     (poly-deg cs)))

(axiom
   def-fun-coefficients-of
  (cs)
  (= (func-coefficients-of (poly-fun cs))
     cs))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interface as polynomial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(axiom
 def_is_polynomial
 (p)
 (is-polynomial p))

;; equality
(axiom
 def_polynomial_equality
 (cs1 cs2)
 (<-> (= (polynomial cs1) (polynomial cs2))
      (poly-equal cs1 cs2)))

(axiom
 def_polynomial+
 (cs1 cs2)
 (= (polynomial+ (polynomial cs1) (polynomial cs2))
    (polynomial (poly+ cs1 cs2))))

(axiom
 def_polynomial-
 (cs1 cs2)
 (= (polynomial- (polynomial cs1) (polynomial cs2))
    (polynomial (poly- cs1 cs2))))

(axiom
 def_polynomial-s*
 (s cs)
 (= (polynomial-s* s (polynomial cs))
    (polynomial (poly-s* s cs))))

(axiom
 def_polynomial*
 (cs1 cs2)
 (= (polynomial* (polynomial cs1) (polynomial cs2))
    (polynomial (poly* cs1 cs2))))

(axiom
 def_polynomial^
 (cs n)
 (= (polynomial^ (polynomial cs) n)
    (polynomial (poly^ cs n))))

(axiom
  def_polynomial-div
  (cs1 cs2)
  (= (polynomial-div (polynomial cs1) (polynomial cs2))
     (polynomial (poly-div cs1 cs2))))

(axiom
  def_polynomial-mod
  (cs1 cs2)
  (= (polynomial-mod (polynomial cs1) (polynomial cs2))
     (polynomial (poly-mod cs1 cs2))))

(axiom
  def_polynomial-divmod
  (cs1 cs2 quo-cs rem-cs)
  (<-> (polynomial-divmod (polynomial cs1) (polynomial cs2)
                          (polynomial quo-cs) (polynomial rem-cs))
       (poly-divmod cs1 cs2 quo-cs rem-cs)))
(axiom
  def_polynomial-divisible-by
  (cs1 cs2)
  (<-> (polynomial-divisible-by (polynomial cs1) (polynomial cs2))
       (poly-divisible-by cs1 cs2)))

(axiom
 def_polynomial-value
 (cs r)
 (= (polynomial-value (polynomial cs) r)
    (poly-value cs r)))

(axiom
 def_polynomial-deg
 (cs)
 (= (polynomial-deg (polynomial cs))
    (poly-deg cs)))

(axiom
  def_polynomial-sum_nil
  ()
  (= (polynomial-sum (nil))
     (polynomial (nil))))

(axiom
  def_polynomial-sum_cons
  (p ps)
  (= (polynomial-sum (cons p ps))
     (polynomial+ p (polynomial-sum ps))))

(axiom
  def_polynomial-product_nil
  ()
  (= (polynomial-product (nil))
     (polynomial (cons 1 (nil)))))

(axiom
  def_polynomial-product_cons
  (p ps)
  (= (polynomial-product (cons p ps))
     (polynomial* p (polynomial-product ps))))

;; poly2list :: Polynomial => (ListOf R)
;; 2013/11/26 suzuki
(axiom
 def_poly2list
 (lis)
 (= (poly2list (polynomial lis))
    lis))

(axiom
   def_polynomial_quotient
   (f g)
   (= (polynomial-quot-of (polynomial-division f g))
      (polynomial-div f g)))

(axiom
   def_polynomial_remainder
   (f g)
   (= (polynomial-rem-of (polynomial-division f g))
      (polynomial-mod f g)))

(axiom
   def_polynomial_coeff_list_nil
   ()
   (= (polynomial-coefficients-of (polynomial (nil)))
      (list-of 0)))

(axiom
   def_polynomial_coeff_list_cons
   (c cs)
   (= (polynomial-coefficients-of (polynomial (cons c cs)))
      (cons c cs)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Equations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(axiom
  def-is-multiple-root-of-poly-eq
  (s cs)
  (<-> (is-multiple-root-of s (poly-equation cs))
       (poly-divisible-by cs (poly^ (list-of (- s) 1) 2))))

(axiom
  def-is-n-multiple-root-of-poly-eq
  (n s cs)
  (<-> (is-n-multiple-root-of n s (poly-equation cs))
       (poly-divisible-by cs (poly^ (list-of (- s) 1) n))))

(axiom
  def-equation-coefficients-of
  (cs)
  (= (equation-coefficients-of (poly-equation cs))
     cs))

(axiom
   def-equation-deg
   (cs)
   (= (equation-deg (poly-equation cs))
      (poly-deg cs)))
