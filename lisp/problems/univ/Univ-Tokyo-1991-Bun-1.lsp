;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1991, Humanities Course, Problem 1
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-09
;;
;; <PROBLEM-TEXT>
;; Find the maximum and minimum values of the function
;; $f(x)=x^3-2 x^2-3 x+4$ in the interval $-\frac{7}{4}\le x\le 3$.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (ans)
  (exists (f min max)
    (&&
     (= ans (list-of min max))
     (= f (poly-fun (list-of 4 -3 -2 1)))
     (minimum (set-by-def (PLam m (exists (x) (&&
                 (<= (/ -7 4) x)
                 (<= x 3)
                 (= m (funapp f x))))))
        min)
     (maximum (set-by-def (PLam m (exists (x) (&&
                 (<= (/ -7 4) x)
                                                           (<= x 3)
                                                           (= m (funapp f x))))))
                          max)))))

(def-answer p (PLam ans (= ans (list-of (/ -143 64) (/ (+ 38 (* 26 (sqrt 13))) 27)))))

