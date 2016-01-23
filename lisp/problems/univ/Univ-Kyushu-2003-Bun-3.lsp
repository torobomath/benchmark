;; DOMAIN:    Quadratic Functions
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2003, Humanities Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-23
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, and $c$ be real numbers, and assume that $a > 0$.
;; Define $f(x)= a x^2 + b x + c$. For the real number $p$, let $g(p)$
;; be the maximum value of the function $p x - f(x)$.
;;
;; (1) When the functions $y = f(x)$ and $y = g(x)$ match each other,
;; find the value of $f(x)$.
;;
;; (2) For the real number $x$, let $h(x)$ be the maximum value of the
;; function of $p$: $x p - g(p)$. Find the value of $h(x)$.
;;
;; (3) Prove that the necessary and sufficient condition for the
;; straight line $y = p x + q$ to be in contact with the graph of
;; $y = f(x)$ at the point $(t, f(t))$ is $g(p)= p t - f(t)$ and
;; $q = - g(p)$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1_m
  (Find (abc)
    (exists (a b c f) (&&
       (< 0 a)
       (= f (poly-fun (list-of c b a)))
       (forall (p gp) (->
           (maximum
               (set-by-def (PLam v (exists (x) (= v (- (* p x) (funapp f x))))))
               gp
           )
           (= (funapp f p) gp)
       ))
       (= abc (list-of a b c))
    ))))

(def-directive
  p2_m
  (Find (h)
    (exists (f) (&&
       (< 0 a)
       (= f (poly-fun (list-of c b a)))
       (maximum
           (set-by-def (PLam v (&&
               (exists (p gp) (&&
                   (maximum
                       (set-by-def (PLam v (exists (x) (= v (- (* p x) (funapp f x))))))
                       gp
                   )
                   (= v (- (* p x) gp))
               ))
           )))
           h
       )
    ))))

(def-directive
  p3_m
  (Show
    (forall (a b c f p gp q t) (->
       (&& (< 0 a)
           (= f (poly-fun (list-of c b a)))
           (maximum
               (set-by-def (PLam v (exists (x) (= v (- (* p x) (funapp f x))))))
               gp
           )
       )
       (<->
           (tangent (line2d (- p) 1 q) (graph-of f) (point t (funapp f t)))
           (&& (= gp (+ (* p t) (- (funapp f t))))
               (= q (- gp))
           )
       )
    ))))

(def-answer p1_m (PLam abc (= abc (list-of (/ 1 2) 0 0))))

(def-answer p2_m (PLam h (&&
    (< 0 a)
    (= h (+ (+ (* a (^ x 2)) (* b x)) c))
)))

