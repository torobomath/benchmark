;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CRBE027
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 3d)

(def-directive p1
  (Find (H)
    (exists (O A B C) (&&
      (= O (origin))
      (= A (point 2 1 2))
      (= B (point 6 2 2))
      (= C (point 5 7 5))
      (= H (foot-of-perpendicular-line-from-to C (line O A)))
    ))
  )
)

(def-directive p2
  (Find (D)
    (exists (O A B C H) (&&
      (= O (origin))
      (= A (point 2 1 2))
      (= B (point 6 2 2))
      (= C (point 5 7 5))
      (= H (foot-of-perpendicular-line-from-to C (line O A)))
      (= 0 (inner-prod (vec D H) (vec O H)))
      (= (distance D H) (distance C H))
      (on D (plane1 O A B))
    ))
  )
)

(def-directive p3
  (Find (P)
    (exists (O A B C min) (&&
      (= O (origin))
      (= A (point 2 1 2))
      (= B (point 6 2 2))
      (= C (point 5 7 5))
      (= min (+ (distance B P) (distance C P)))
      (on P (line O A))
      (minimum
        (set-by-def (PLam v (exists (P0) (&&
          (on P0 (line O A))
          (= v (+ (distance B P0) (distance C P0)))
        ))))
        min
      )
    ))
  )
)

(def-answer p1 (PLam H (= H (point 6 3 6))))

(def-answer p2 (PLam D (|| (= D (point 9 3 3)) (= D (point 3 3 9)))))

(def-answer p3 (PLam P (= P (point(/ 24 5) (/ 12 5) (/ 24 5)))))

