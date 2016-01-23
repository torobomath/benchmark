;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR105
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23

(namespace 2d)

(def-directive p
  (Find (answer)
    (&& (is-acute (angle X O Y))
      (point-inside-of P (triangle X O Y))
      (exists (Q R min) (&&
        (on Q (seg O X))
        (on R (seg O Y))
        (= min (+ (distance P Q) (+ (distance Q R) (distance R P))))
        (minimum
          (set-by-def (PLam v (exists (Q1 R1)
            (= v (+ (distance P Q1) (+ (distance Q1 R1) (distance R1 P))))
          )))
          min
        )
        (= answer (list-of Q R))
      ))
    )
  )
)

(def-answer p (PLam answer (&&
  (= answer (list-of Q R))
  (forall (S T) (->
    (&& (line-symmetry P S (line O X))
      (line-symmetry P T (line O Y))
    )
    (&& (intersect (line S T) (line O X) Q)
      (intersect (line S T) (line O Y) R)
    )
  ))
)))

