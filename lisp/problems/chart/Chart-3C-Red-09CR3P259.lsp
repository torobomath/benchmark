;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     3
;; SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P259
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 3d)

(def-directive p
  (Find (V)
    (exists (D2 D3) (&&
      (= D2 (2d.shape-enclosed-by (list-of (2d.set-of-cfun (Lam x (PLam y (exists (theta) (&&
          (<= 0 theta) (< theta (* 2 (Pi)))
          (= x (* (+ 1 (cos theta)) (cos theta)))
          (= y (* (+ 1 (cos theta)) (sin theta)))
        ))))))))
      (= D3 (import-2d-shape D2))
      (= V (volume-of (solid-of-revolution D3 (x-axis))))
    ))
  )
)

(def-answer p (PLam V (= V (* (/ 8 3) (Pi)))))

