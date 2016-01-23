;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1C035
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 3d)

(def-directive p1
  (Find (V)
    (exists (Sp)
      (&&  (sphere-type Sp)
        (= (radius-of Sp) 6)
        (= (volume-of Sp) V)
      )
    )
  )
)

(def-directive p2
  (Find (S)
    (exists (Sp)
      (&&  (sphere-type Sp)
        (= (radius-of Sp) 6)
        (= (area-of Sp) S)
      )
    )
  )
)

(def-answer p1 (PLam V (= V (* 288 (Pi)) )))

(def-answer p2 (PLam S (= S (* 144 (Pi)) )))

