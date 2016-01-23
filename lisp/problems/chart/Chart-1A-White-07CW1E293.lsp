;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E293
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 3d)

(def-directive p1
  (Find (answer)
    (forall (V A S) (->
      (&& (sphere-type S)
        (= 2 (radius-of S))
        (= V (volume-of S))
        (= A (area-of S))
      )
      (= answer (list-of V A))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (forall (V A S) (->
      (&& (sphere-type S)
        (= (sqrt 5) (radius-of S))
        (= V (volume-of S))
        (= A (area-of S))
      )
      (= answer (list-of V A))
    ))
  )
)

(def-directive p3
  (Find (answer)
    (forall (V A S) (->
      (&& (sphere-type S)
        (= 12 (* 2 (radius-of S)))
        (= V (volume-of S))
        (= A (area-of S))
      )
      (= answer (list-of V A))
    ))
  )
)

(def-answer p1 (PLam answer (= answer (list-of (* (/ 32 3) (Pi)) (* 16 (Pi))))))

(def-answer p2 (PLam answer (= answer (list-of (* (/ (* 20 (sqrt 5)) 3) (Pi)) (* 20 (Pi))))))

(def-answer p3 (PLam answer (= answer (list-of (* 288 (Pi)) (* 144 (Pi))))))

