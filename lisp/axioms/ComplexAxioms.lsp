;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Complex numbers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(import "axioms/ComplexTypes.lsp")
(namespace complex)

(def-typing-trigger
 (is-complex c)
 (cr ci)
 (= c (complex cr ci)))

(def-typing-trigger
 (is-number c)
 (cr ci)
 (= c (complex cr ci)))

;; TORIAEZU
(axiom
   def-complex-to-real
   (c)
   (= (to_real c) (real-part c)))

;; i :: => Complex
(axiom
  def_i
	()
	(= (i)
		 (complex 0 1)))

;; conjugate complex
(axiom
  def_complex_conjugate
  (a b)
  (= (conjugate (complex a b))
     (complex a (.- b))))

;; real-part :: Complex => R
(axiom
  def_real_part
	(a b)
	(= (real-part (complex a b))
		 a))

;; imaginary-part :: Complex => R
(axiom
  def_imaginary_part
	(a b)
	(= (imaginary-part (complex a b))
		 b))


;; real-number :: Complex => Bool)
(axiom
  def_real_number_complex
  (cr ci)
  (<-> (real-number (complex cr ci))
       (= ci 0)))

;; is-purely-imaginary :: Complex => Bool
(axiom
  def_is_purely_imaginary
	(cr ci)
	(<-> (is-purely-imaginary (complex cr ci))
			 (= cr 0)))

(axiom
  def_arg_eq
  (c a)
  (<-> (= a (arg c))
       (&& (= (cos a) (./ (real-part c) (abs c)))
           (= (sin a) (./ (imaginary-part c) (abs c))))))
;(axiom
;  def_arg
;  (x y)
;  (= (arg (complex x y))
;     (if (> x 0)
;       (.arctan (./ y x))
;       (if (< x 0)
;         (.+ (.arctan (./ y x)) (Pi))
;         (if (> y 0)
;           (./ (Pi) 2)
;           (if (< y 0)
;             (./ (.* 3 (Pi)) 2)
;             0))))))
(axiom
   def-arg-in-cos
   (c)
   (= (cos (arg c))
      (./ (real-part c) (abs c))))
(axiom
   def-arg-in-sin
   (c)
   (= (sin (arg c))
      (./ (imaginary-part c) (abs c))))
(axiom
   def-arg-in-cos+1
   (c x)
   (= (cos (.+ (arg c) x))
      (.- (.* (cos (arg c)) (cos x))
          (.* (sin (arg c)) (sin x)))))
(axiom
   def-arg-in-cos+2
   (c x)
   (= (cos (.+ x (arg c)))
      (cos (.+ (arg c) x))))

(axiom
   def-arg-in-cos-1
   (c x)
   (= (cos (.- (arg c) x))
      (.+ (.* (cos (arg c)) (cos x))
          (.* (sin (arg c)) (sin x)))))
(axiom
   def-arg-in-cos-2
   (c x)
   (= (cos (.- x (arg c)))
      (cos (.- (arg c) x))))
(axiom
   def-arg-in-sin+1
   (c x)
   (= (sin (.+ (arg c) x))
      (.+ (.* (sin (arg c)) (cos x))
          (.* (cos (arg c)) (sin x)))))
(axiom
   def-arg-in-sin+2
   (c x)
   (= (sin (.+ x (arg c)))
      (sin (.+ (arg c) x))))

(axiom
   def-arg-in-sin-1
   (c x)
   (= (sin (.- (arg c) x))
      (.- (.* (sin (arg c)) (cos x))
          (.* (cos (arg c)) (sin x)))))
(axiom
   def-arg-in-sin-2
   (c x)
   (= (sin (.- x (arg c)))
      (sin (.- (arg c) x))))

;; real->complex :: R => Complex)
(axiom
  def_real_to_complex
  (r)
  (= (real->complex r) (complex r 0)))

; is-polynomial :: (Complex -> Complex) => Bool)
;;# DONT_EXPORT
(axiom
  def_polynomial_complex
  (f)
  (is-polynomial f))

;; arithmetics
(axiom
  complex_plus
  (a1 a2 b1 b2)
  (= (+ (complex a1 a2) (complex b1 b2))
     (complex (.+ a1 b1) (.+ a2 b2))))

(axiom
  complex_minus
  (a1 a2 b1 b2)
  (= (- (complex a1 a2) (complex b1 b2))
     (complex (.- a1 b1) (.- a2 b2))))

(axiom
  complex_unary_minus
  (a1 a2)
  (= (- (complex a1 a2))
     (complex (.- a1) (.- a2))))

(axiom
  complex_mult
  (a1 a2 b1 b2)
  (= (* (complex a1 a2) (complex b1 b2))
     (complex (.- (.* a1 b1) (.* a2 b2))
              (.+ (.* a1 b2) (.* a2 b1)))))

(axiom
  complex_div
  (a1 a2 b1 b2)
  (= (/ (complex a1 a2) (complex b1 b2))
     (let ((bb (.+ (.^ b1 2) (.^ b2 2))))
       (* (complex a1 a2)
          (complex (./ b1 bb) (./ (.- b2) bb))))))

; sum :: (ListOf Complex) => Complex
(axiom
 def_complex_sum_nil
 ()
 (= (sum (nil)) (complex 0 0)))

(axiom
 def_complex_sum_cons
 (x xs)
 (= (sum (cons x xs))
    (+ x (sum xs))))

; product :: (ListOf Complex) => Complex
(axiom
 def_complex_product_nil
 ()
 (= (product (nil)) (complex 1 0)))

(axiom
 def_complex_product_cons
 (x xs)
 (= (product (cons x xs))
    (* x (product xs))))

;; integral power
(axiom
  complex_pow2
  (a1 a2)
  (= (^ (complex a1 a2) 2)
     (* (complex a1 a2) (complex a1 a2))))

(axiom
  complex_pow3
  (a1 a2)
  (= (^ (complex a1 a2) 3)
     (* (complex a1 a2) 
        (* (complex a1 a2)
           (complex a1 a2)))))

(axiom
  complex_pow4
  (a1 a2)
  (= (^ (complex a1 a2) 4)
     (* (complex a1 a2) 
        (^ (complex a1 a2) 3))))

(axiom
  complex_pow5
  (a1 a2)
  (= (^ (complex a1 a2) 5)
     (* (complex a1 a2) 
        (^ (complex a1 a2) 4))))

(axiom
  complex_pow6
  (a1 a2)
  (= (^ (complex a1 a2) 6)
     (* (complex a1 a2) 
        (^ (complex a1 a2) 5))))

(axiom
  complex_pow7
  (a1 a2)
  (= (^ (complex a1 a2) 7)
     (* (complex a1 a2) 
        (^ (complex a1 a2) 6))))
(axiom
  complex_pow8
  (a1 a2)
  (= (^ (complex a1 a2) 8)
     (* (complex a1 a2) 
        (^ (complex a1 a2) 7))))
(axiom
  complex_pow9
  (a1 a2)
  (= (^ (complex a1 a2) 9)
     (* (complex a1 a2) 
        (^ (complex a1 a2) 8))))

;; absolute value
(axiom
  complex_abs
  (a1 a2)
  (= (abs (complex a1 a2))
     (sqrt (.+ (.^ a1 2) (.^ a2 2)))))

;; equality
(axiom
  complex_eq
  (a1 a2 b1 b2)
  (<-> (= (complex a1 a2) (complex b1 b2))
       (&& (= a1 b1)
          (= a2 b2))))



;;------------------------------------------------------------------------------
;; Equation in complex domain
;;------------------------------------------------------------------------------


;; (equation f) <-> (f x) = 0


; is-equation :: Equation => Bool)
(axiom
 def_is_equation_complex
 (e)
 (is-equation e))

(axiom
  def_complex_equation_eq
  (f g)
  (<-> (= (equation f) (equation g))
       (= f g)))

(axiom
  def_quad_equation_eq
  (a1 b1 c1 a2 b2 c2)
  (<-> (= (quad-equation c1 b1 a1)
          (quad-equation c2 b2 a2))
       (exists (k)
          (&& (= c1 (.* k c2))
              (= b1 (.* k b2))
              (= a1 (.* k a2))))))

(axiom
  def_quad_equation_general_equation_eq
  (a b c f)
  (<-> (= (quad-equation c b a) (equation f))
       (= f (Lam x (+ (* (real->complex a) (^ x 2))
                      (* (real->complex b) x)
                      (real->complex c))))))

; is-solution-of :: Complex -> Equation => Bool)
(axiom
  def_is_solution_of
  (x f)
  (<-> (is-solution-of x (equation f))
       (= (complex 0 0) (LamApp f x))))
(axiom
  def_is_solution_of_quad_eq
  (x a b c)
  (<-> (is-solution-of x (quad-equation c b a))
       (= (complex 0 0) (+ (real->complex c)
                           (* (real->complex b) x) 
                           (* (real->complex a) (^ x 2))))))

(axiom
  def_has_real_solution_complex
  (f)
  (<-> (has-real-solution (equation f))
       (exists (x)
               (= (complex 0 0) (LamApp f (complex x 0))))))

(axiom
 def_has_real_solution_quad_eq
 (a b c)
 (<-> (has-real-solution (quad-equation c b a))
      (<= 0 (.- (.^ b 2) (.* 4 (.* a c))))))

(axiom
 def_has_complex_solution
 (f)
 (<-> (has-complex-solution (equation f))
      (exists (a b)
       (&& (! (= b 0))
          (= (complex 0 0) (LamApp f (complex a b)))))))

(axiom
 def_has_complex_solution_quad_eq
 (a b c)
 (<-> (has-complex-solution (quad-equation c b a))
      (> 0 (.- (.^ b 2) (.* 4 (.* a c))))))

(axiom
 def_are_solutions_of_quad_eq
 (s1 s2 a b c)
 (<-> (are-solutions-of (cons s1 (cons s2 (nil))) (quad-equation c b a))
      (&& (= (* (real->complex a) (+ s1 s2)) (- (real->complex b)))
          (= (* (real->complex a) s1 s2) (real->complex c)))))
(axiom
 def_are_solutions_of
 (xs eq)
 (<-> (are-solutions-of xs eq)
      (forall (x) (<-> (member x xs)
                       (is-solution-of x eq)))))
(axiom
 def_is_real_solution_of
 (x eq)
 (<-> (is-real-solution-of x eq)
      (&& (is-solution-of x eq)
          (real-number x))))
(axiom
 def_are_real_solutions_of
 (xs eq)
 (<-> (are-real-solutions-of xs eq)
      (forall (x) (<-> (member x xs) (is-real-solution-of x eq)))))
(axiom
  def_are_complex_solutions_of_quad_eq
  (xs c b a)
  (<-> (are-complex-solutions-of xs (quad-equation c b a))
       (&& (> 0 (.- (.^ b 2) (.* 4 a c)))
           (let ((p (./ (.- b) (.* 2 a)))
                 (q (./ (sqrt (.- (.* 4 a c) (.^ b 2))) (.* 2 a))))
             (|| (= xs (list-of (complex p q) (complex p (.- q))))
                 (= xs (list-of (complex p (.- q)) (complex p q))))))))

(axiom
 def_are_complex_solutions_of
 (xs f)
 (<-> (are-complex-solutions-of xs (equation f))
      (forall (x) (<-> (member x xs)
                       (&& (is-solution-of x (equation f))
                           (! (real-number x)))))))

; is-second-order-equation :: Equation => Bool)
;(axiom
;    def_second_order_eq_complex
;    (f)
;    (is-second-order-equation (equation f)))

;(axiom
;    def_second_order_eq_complex_quad_eq
;    (a b c)
;    (is-quad-equation (quad-equation c b a)))

(def-typing-trigger
   (is-quad-equation eq)
   (a b c)
   (&& (= eq (quad-equation c b a))
       (! (= a 0))))

;;------------------------------------------------------------------------------
;; C -> C Functions
;;------------------------------------------------------------------------------
(axiom
  def-complex-is-function
  (f)
  (is-function f))

(axiom
  def-is-complex-constant-function
  (f)
  (<-> (is-constant-func f)
       (exists (y)
               (forall (x) (= (funapp f x) y)))))
(axiom
  def-complex-funapp
  (f x)
  (= (funapp (fun f) x)
     (LamApp f x)))

;; TORIAEZU
(axiom
   def-to-complex-from-complex
   (x)
   (= (to_complex x) x))

(default-namespace)
(axiom
   def-to-complex-from-real
   (x)
   (= (to_complex x) (complex.complex x 0)))
