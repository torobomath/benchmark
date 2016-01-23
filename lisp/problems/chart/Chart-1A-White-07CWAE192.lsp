;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAE192
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p
  (Find (min)
    (forall (O X Y A P Q) (->
      (&& (is-triangle X O Y)
        (= (/ (sqrt 3) 2) (cos-of-angle (angle X O Y)))
        (< (/ (sqrt 3) 2) (cos-of-angle (angle X O A)))
        (< (/ (sqrt 3) 2) (cos-of-angle (angle A O Y)))
        (= 3 (distance O A))
      )
      (minimum
        (set-by-def (PLam v (exists (P Q) (&&
          (on P (line O X))
          (on Q (line O Y))
          (= v (+ (distance A P) (+ (distance P Q) (distance Q A))))
        ))))
        min
      )
    ))
  )
)

(def-answer p (PLam min (= min 3)))

