;; DOMAIN:    Differentiation and its Applications
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1991, Science Course, Problem 3
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-09
;;
;; <PROBLEM-TEXT>
;; For the constant $p$, let $f(p)$ be the product of the maximum and
;; minimum real solutions of the cubic equation $x^3-3 x-p=0$ However,
;; if there is only one real solution, take the square of the solution
;; as the product.
;;
;; (1) When $p$ moves across all real numbers, find the minimum value of
;; $f(p)$.
;;
;; (2) Draw a rough graph of the function $f(p)$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (minfp)
  (&&
    (minimum (set-by-def (PLam fp
             (exists (p minroot maxroot)
               (&&
                 (minimum
             (set-by-def (PLam x (= (+ (^ x 3) (* (- 3) x) (- p)) 0))) minroot)
                 (maximum
             (set-by-def (PLam x (= (+ (^ x 3) (* (- 3) x) (- p)) 0))) maxroot)
                 (= fp (* minroot maxroot)))))) minfp))))

(def-directive
  p2
  (Draw (G)
  (= G (set-of-cfun (Lam p (PLam fp (&&
    (exists (minroot maxroot) (&&
      (minimum (set-by-def (PLam x (= (+ (^ x 3) (* (- 3) x) (- p)) 0))) minroot)
      (maximum (set-by-def (PLam x (= (+ (^ x 3) (* (- 3) x) (- p)) 0))) maxroot)
      (= fp (* minroot maxroot))
    ))
  )))))
  )
)

(def-answer p1 (PLam minfp (= minfp -3)))

(def-answer p2 (set-of-cfun (Lam p (PLam fp (||
  (exists (x) (&& (< p -2) (= p (+ (^ x 3) (* -3 x))) (= fp (^ x 2))))
  (&& (= p -2) (= fp -2))
  (&& (< -2 p) (< p 2) (<= -3 fp) (< fp -2) (= (^ p 2) (+ (^ fp 3) (* 3 (^ fp 2)))))
  (&& (= p 2) (= fp -2))
  (exists (x) (&& (< 2 p) (= p (+ (^ x 3) (* -3 x))) (= fp (^ x 2))))
)))))

