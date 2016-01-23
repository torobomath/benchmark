;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E310
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 3d)

(def-directive p
  (Find (V)
    (forall (A B C D E F G H) (->
      (&& (is-cube A B C D E F G H)
        (= 6 (distance A B))
      )
      (= V (volume-of (intersection (list-of
        (cube A B C D E F G H)
        (divided-region-including (plane1 A F C) E)
        (divided-region-including (plane1 B G D) E)
      ))))
    ))
  )
)

(def-answer p (PLam V (= V 153)))

