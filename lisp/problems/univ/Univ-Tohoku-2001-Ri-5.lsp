;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2001, Science Course, Problem 5
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-23
;;
;; <PROBLEM-TEXT>
;; Assume that the complex numbers $z = x + y i$ and $w = u + v i$,
;; where $x$, $y$, $u$, and $v$ are real numbers, satisfy
;; $|z| = |w| = 1$ and $y v < 0$. Represent the necessary and sufficient
;; condition such that $|1 + z + w| < 1$ using $x$ and $u$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p
  (Find (xu)
  (exists (z w x y u v)
    (&&
     (= z (complex x y))
     (= w (complex u v))
     (= 1 (abs z))
     (= 1 (abs w))
     (> 0 (.* y v))
     (< (abs (+ (real->complex 1) z w)) 1)
     (= xu (list-of x u))))))

(def-answer p (PLam xu (exists (x u)
             (&& (= xu (list-of x u))
           (< (.- 1) x) (< x 1)
           (< (.- 1) u) (< u 1)
           (< (.+ x u) 0)))))

