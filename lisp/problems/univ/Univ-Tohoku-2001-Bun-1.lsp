;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2001, Humanities Course, Problem 1
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-23
;;
;; <PROBLEM-TEXT>
;; Find the two common tangents of the two parabolas $C$:
;; $y = -(x + 1)^2$ and $D$: $y =(x - 1)^2 + 1$. Find the area of the
;; region enclosed by the two common tangents of $C$ and $D$ and $C$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p_s_t
  (Find (s_t)
  (exists (C D s t)
    (&&
     (= C (graph-of (fun (Lam x (- (^ (+ x 1) 2))))))
     (= D (graph-of (fun (Lam x (+ (^ (- x 1) 2) 1)))))
     (line-type s)
     (line-type t)
     (tangent C s)
     (tangent C t)
     (tangent D s)
     (tangent D t)
     (! (= s t))
     (= s_t (list-of s t))))))

(def-directive
  pS
  (Find (S)
  (exists (C D s t)
    (&&
     (= C (graph-of (fun (Lam x (- (^ (+ x 1) 2))))))
     (= D (graph-of (fun (Lam x (+ (^ (- x 1) 2) 1)))))
     (line-type s)
     (line-type t)
     (tangent C s)
     (tangent C t)
     (tangent D s)
     (tangent D t)
     (! (= s t))
     (= S (area-of (shape-enclosed-by (list-of C s t))))))))

(def-answer p_s_t (PLam s_t (exists (s t) (&&
  (= s_t (list-of s t))
  (||
    (&&
      (= s (line (point 0 (/ 1 2)) (point (/ 1 4) (/ (sqrt 6) -4))))
      (= t (line (point 0 (/ 1 2)) (point (/ 1 4) (/ (sqrt 6)  4))))
    ) (&&
      (= t (line (point 0 (/ 1 2)) (point (/ 1 4) (/ (sqrt 6) -4))))
      (= s (line (point 0 (/ 1 2)) (point (/ 1 4) (/ (sqrt 6)  4))))
    )
  )))))

(def-answer pS (PLam S (= S (/ (sqrt 6) 2))))

