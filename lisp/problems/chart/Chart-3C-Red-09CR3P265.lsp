;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P265
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 3d)

(def-directive p
  (Find (V)
    (exists (S A B C D P) (&&
      (= S (set-of-cfun (Lam x (Lam y (PLam z (<= 1 (+ (^ x 2) (^ y 2))))))))
      (= A (point 1 1 0))
      (= B (point -1 1 0))
      (= C (point -1 -1 0))
      (= D (point 1 -1 0))
      (= P (point 0 0 3))
      (= V (volume-of (intersection S (shape-of-cpfun (char-fun-of (inner-part-of (square-pyramid P A B C D)))))))
    ))
  )
)

(def-answer p (PLam V (= V (+ (+ 4 (* 4 (sqrt 2))) (* -3 (Pi))))))

