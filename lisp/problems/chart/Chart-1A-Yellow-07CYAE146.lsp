;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE146
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p1
  (Find (Rate)
    (exists (A B C I ABI BCI CAI)
      (&&
                (= A (point Ax Ay))
                (= B (point Bx By))
                (= C (point Cx Cy))
        (is-triangle A B C)
        (is-incenter-of I (triangle A B C))
        (= ABI (area-of (triangle A B I)))
        (= BCI (area-of (triangle B C I)))
        (= CAI (area-of (triangle C A I)))
        (= Rate (list-of (/ ABI BCI) (/ BCI CAI)))
      )
    )
  )
)

(def-answer
  p1
  (PLam Rate (= Rate (list-of (/ (sqrt (+ (^ (- Ax Bx) 2) (^ (- Ay By) 2)))
                                 (sqrt (+ (^ (- Bx Cx) 2) (^ (- By Cy) 2))))
                              (/ (sqrt (+ (^ (- Bx Cx) 2) (^ (- By Cy) 2)))
                                 (sqrt (+ (^ (- Cx Ax) 2) (^ (- Cy Ay) 2))))))))

(def-directive p2
  (Show
    (forall (A B C P) (->
      (&&
        (is-triangle A B C)
        (point-inside-of P (triangle A B C))
        (= (area-of (triangle A B P)) (area-of (triangle B C P)))
        (= (area-of (triangle B C P)) (area-of (triangle C A P)))
      )
      (= P (centroid-of (triangle A B C)))
    ))
  )
)

