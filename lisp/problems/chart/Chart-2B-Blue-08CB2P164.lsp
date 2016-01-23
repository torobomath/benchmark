;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P164
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive
  p
  (Find (n)
        (exists (F C)
                (&& (= F (set-of-cfun (Lam x (PLam y (= y (^ x 2))))))
                    (= C (set-of-cfun (Lam x (PLam y (= 16 (+ (^ x 2) (^ (- y a) 2)))))))
                    (= n (cardinality-of (set-by-def (PLam P (intersect F C P)))))))))

(def-answer p (PLam n (|| (&& (< 4 a) (< a (/ 65 4)) (= n 4))
                          (&& (= a 4)                (= n 3))
                          (&& (< -4 a) (< a 4)       (= n 2))
                          (&& (= a -4)               (= n 1))
                          (&& (|| (< a -4) (< (/ 65 4) a)) (= n 0)))))

