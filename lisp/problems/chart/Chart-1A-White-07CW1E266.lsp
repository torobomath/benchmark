;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E266
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p1
  (Find (b)
    (forall (A B C) (->
      (&& (is-triangle A B C)
        (= 0 (cos (* 2 (rad-of-angle (angle C A B)))))
        (= (/ -1 2) (cos (* 2 (rad-of-angle (angle A B C)))))
        (= (/ (- (sqrt 3)) 2) (cos (* 2 (rad-of-angle (angle B C A)))))
        (= 1 (distance B C))
      )
      (= b (distance C A))
    ))
  )
)

(def-directive p2
  (Find (cosC)
    (forall (A B C t) (->
      (&& (is-triangle A B C)
        (= (* 8 t) (distance B C))
        (= (* 5 t) (distance C A))
        (= (* 7 t) (distance A B))
      )
      (= cosC (cos-of-angle (angle B C A)))
    ))
  )
)

(def-directive p3
  (Find (cosB)
    (forall (A B C) (->
      (&& (is-triangle A B C)
        (= (distance C A) (* 2 (distance A B)))
        (= (/ (sqrt 3) 2) (cos-of-angle (angle B C A)))
      )
      (= cosB (cos-of-angle (angle A B C)))
    ))
  )
)

(def-answer p1 (PLam b (= b(/ (sqrt 6) 2))))

(def-answer p2 (PLam cosC (= cosC (/ 1 2))))

(def-answer p3 (PLam cosB (= cosB 0)))

