;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2R060
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive p1
  (Show
    (forall (A B C G) (->
      (&& (is-triangle A B C)
        (is-center-of-gravity-of G (triangle A B C))
      )
      (= (+ (distance^2 A B) (+ (distance^2 B C) (distance^2 C A))) (* 3 (+ (distance^2 G A) (+ (distance^2 G B) (distance^2 G C)))))
    ))
  )
)

(def-directive p2
  (Show
    (forall (A B C D) (->
      (&&
        (= D (internally-dividing-point B C (/ 1 3)))
        (is-triangle A B C)
      )
      (= (+ (* 2 (distance^2 A B)) (distance^2 A C)) (+ (* 3 (distance^2 A D)) (* 6 (distance^2 B D))))
    ))
  )
)

