;; DOMAIN:    Algebraic Curves
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CBCE013
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p
  (Find (max)
    (exists (A B C) (&&
      (= (distance A B) (distance A C))
      (= 2 (distance B C))
      (is-right (angle C A B))
      (maximum
        (set-by-def (PLam v (exists (F1 F2 x0 y0 a b E) (&&
          (= E (set-of-cfun (Lam x (PLam y (= 1 (+ (^ (/ (- x x0) a) 2) (^ (/ (- y y0) b) 2)))))))
          (< 0 a)
          (< 0 b)
          (is-focus-of F1 E)
          (is-focus-of F2 E)
          (! (= F1 F2))
          (|| (parallel (line F1 F2) (line B C))
            (perpendicular (line F1 F2) (line B C))
          )
          (tangent E (line A B))
          (tangent E (line B C))
          (tangent E (line C A))
          (= v (area-of E))
        ))))
        max
      )
    ))
  )
)

(def-answer p (PLam max (= max (* (/ (sqrt 3) 9) (Pi)))))

