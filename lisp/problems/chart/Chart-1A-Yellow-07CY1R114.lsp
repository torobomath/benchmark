;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R114
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p1
  (Find (R)
    (exists (A B C K) (&&
      (= (length-of (seg A B)) 7)
      (= (length-of (seg B C)) 5)
      (= (length-of (seg C A)) 6)
      (circle-type K)
      (is-inscribed-in (triangle A B C) K)
      (= (radius-of K) R)
    ))
  )
)

(def-directive p2
  (Find (r)
    (exists (A B C K) (&&
      (= (length-of (seg A B)) 7)
      (= (length-of (seg B C)) 5)
      (= (length-of (seg C A)) 6)
      (circle-type K)
      (is-inscribed-in K (triangle A B C))
      (= (radius-of K) r)
    ))
  )
)

(def-answer p1 (PLam R (= R (/ (* 35 (sqrt 6)) 24))))

(def-answer p2 (PLam r (= r (/ (* 2 (sqrt 6)) 3))))

