;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2E130
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p1
  (Find (P)
    (exists (A B) (&&
      (= A (point -2 -3))
      (= B (point 3 7))
      (= P (internally-dividing-point A B (/ 4 5)))
    ))
  )
)

(def-directive p2
  (Find (P)
    (exists (B C) (&&
      (= B (point 3 7))
      (= C (point 5 2))
      (divide-externally P (seg B C) 2 3)
    ))
  )
)

(def-directive p3
  (Find (P)
    (exists (A C) (&&
      (= A (point -2 -3))
      (= C (point 5 2))
      (= P (midpoint-of C A))
    ))
  )
)

(def-directive p4
  (Find (G)
    (exists (A B C) (&&
      (= A (point -2 -3))
      (= B (point 3 7))
      (= C (point 5 2))
      (is-center-of-gravity-of G (triangle A B C))
    ))
  )
)

(def-answer p1 (PLam P (= P (point 2 5))))

(def-answer p2 (PLam P (= P (point -1 17))))

(def-answer p3 (PLam P (= P (point (/ 3 2) (/ -1 2)))))

(def-answer p4 (PLam G (= G (point 2 2))))

