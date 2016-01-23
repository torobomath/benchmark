;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math III+C Red Book, Problem 09CR3R152
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 3d)

(def-directive p
  (Find (answer)
    (exists (E Eab l1 D2 D3) (&&
      (= E (Lam a (2d.graph-of-implicit-function (Lam x (Lam y (+ (+ (/ (^ x 2) (^ a 2)) (^ y 2)) -1))))))
      (= Eab (Lam a (Lam b (2d.set-of-cfun (Lam x (PLam y (&& (<= b x) (<= x a) (= 1 (+ (/ (^ x 2) (^ a 2)) (^ y 2))))))))))
      (= l1 (Lam b (2d.line (2d.point b 0) (2d.point b 1))))
      (= D2 (Lam a (Lam b (2d.shape-enclosed-by (list-of (LamApp (LamApp Eab a) b) (LamApp l1 b))))))
      (= D3 (Lam a (Lam b (import-2d-shape (LamApp (LamApp D2 a) b)))))
      (exists (a b max) (&&
        (< 0 a) (< a 1)
        (exists (by) (&&
          (2d.tangent (2d.line (2d.point 1 0) (2d.point b by)) (LamApp E a) (2d.point b by))
        ))
        (= max (volume-of (solid-of-revolution (LamApp (LamApp D3 a) b) (x-axis))))
        (maximum
          (set-by-def (PLam v (exists (a0 b0) (&&
            (exists (by0) (&&
              (2d.tangent (2d.line (2d.point 1 0) (2d.point b0 by0)) (LamApp E a0) (2d.point b0 by0))
            ))
            (= v (volume-of (solid-of-revolution (LamApp (LamApp D3 a0) b0) (x-axis))))
          ))))
          max
        )
        (= answer (list-of a max))
      ))
    ))
  )
)

(def-answer p (PLam answer (= answer (list-of (/ (+ -1 (sqrt 3)) 2) (* (/ (+ -3 (* 2 (sqrt 3))) 4) (Pi))))))

