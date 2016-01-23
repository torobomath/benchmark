;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E302
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p1
  (Find (cosA)
    (forall (A B C D) (->
      (&& (is-square A B C D)
        (exists (circle) (&&
          (circle-type circle)
          (is-inscribed-in (square A B C D) circle)
        ))
        (=  4 (distance A B))
        (=  5 (distance B C))
        (=  7 (distance C D))
        (= 10 (distance D A))
      )
      (= cosA (cos-of-angle (angle D A B)))
    ))
  )
)

(def-directive p2
  (Find (S)
    (forall (A B C D) (->
      (&& (is-square A B C D)
        (exists (circle) (&&
          (circle-type circle)
          (is-inscribed-in (square A B C D) circle)
        ))
        (=  4 (distance A B))
        (=  5 (distance B C))
        (=  7 (distance C D))
        (= 10 (distance D A))
      )
      (= S (area-of (square A B C D)))
    ))
  )
)

(def-answer p1 (PLam cosA (= cosA (/ 7 25))))

(def-answer p2 (PLam S (= S 36)))

