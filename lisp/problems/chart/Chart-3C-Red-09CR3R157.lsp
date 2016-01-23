;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     5
;; SOURCE:    Chart System Math III+C Red Book, Problem 09CR3R157
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (D P x y) (&&
      (= D (Lam t (circle (point (* 2 (cos t)) (* 2 (sin t))) 1)))
      (= P (point x y))
      (&& (<= 0 t) (<= t (* (/ 2 3) (Pi)))
        (= answer (list-of x y))
        (exists (s) (&&
          (= (* 3 t) (- s))
          (= P (vec-translate (center-of (LamApp D t)) (vec2d (cos (+ s t)) (sin (+ s t)))))
        ))
      )
    ))
  )
)

(def-directive p2
  (Find (l)
    (exists (D P) (&&
      (= D (Lam t (circle (point (* 2 (cos t)) (* 2 (sin t))) 1)))
      (= P (point x y))
      (= l (length-of
        (set-of-cfun (Lam x (PLam y (exists (t) (&&
          (<= 0 t) (<= t (* (/ 2 3) (Pi)))
          (exists (s) (&&
            (= (* 3 t) (- s))
            (= P (vec-translate (center-of (LamApp D t)) (vec2d (cos (+ s t)) (sin (+ s t)))))
          ))
        )))))
      ))
    ))
  )
)

(def-answer p1 (PLam answer (exists (x y) (&&
  (= answer (list-of x y))
  (<= 0 t) (<= t (* (/ 2 3) (Pi)))
  (= x (+ (* 2 (cos t)) (cos (* 2 t))))
  (= y (+ (* 2 (sin t)) (- (sin (* 2 t)))))
))))

(def-answer p2 (PLam l (= l (/ 16 3))))

