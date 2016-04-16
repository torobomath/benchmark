;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAR084
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p
  (Find (min)
    (forall (A B C D) (->
      (&&
        (= A (point 0 0))
        (= B (point 2 0))
        (= C (point 2 4))
        (= D (point 0 4))
      )
      (minimum
        (set-by-def (PLam v (exists (P) (&&
          (on P (seg B C))
          (= v (+ (distance A P) (distance P (midpoint-of C D))))
        ))))
        min
      )
    ))
  )
)

(def-answer p (PLam min (= min 5)))

