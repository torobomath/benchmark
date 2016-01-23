;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E267
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p1
  (Find (cosB)
    (forall (A B C)(->
      (&& (= 5 (distance A B))
        (= 3 (distance A C))
        (= 6 (distance B C))
      )
      (= cosB (cos-of-angle (angle A B C)))
    ))
  )
)

(def-directive p2
  (Find (AM)
    (forall (A B C)(->
      (&& (= 5 (distance A B))
        (= 3 (distance A C))
        (= 6 (distance B C))
      )
      (= AM (distance A (midpoint-of B C)))
    ))
  )
)

(def-answer p1 (PLam cosB (= cosB (/ 13 15))))

(def-answer p2 (PLam AM (= AM (* 2 (sqrt 2)))))

