;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2C007
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive p
  (Find (G)
    (exists (A B C) (&&
      (= A (point 1 3))
      (= B (point 4 -3))
      (= C (point 7 6))
      (is-center-of-gravity-of G (triangle A B C))
    ))
  )
)

(def-answer p (PLam G (= G (point 4 2))))

