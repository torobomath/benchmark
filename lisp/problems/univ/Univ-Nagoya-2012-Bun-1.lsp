;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2012, Humanities Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-05-07

(namespace 2d)

(def-directive
  p1
  (Find (st)
      (exists (l s t)
       (&& (on (point 0 1) l)
         (line-type l)
         (= st (list-of s t))
           (is-slope-of h l)
           (line-symmetry (point a b) (point s t) l)
           (! (on (point a b) l))))))

(def-answer p1 (PLam st (&&
  (! (= b (+ (* h a) 1)))
  (= st (list-of
    (/ (+ (- (* a (^ h 2))) (* (- (* 2 b) 2) h) a) (+ (^ h 2) 1))
    (/ (+ (* b (^ h 2)) (* 2 a h) (- b) 2) (+ (^ h 2) 1)))))))

(def-directive
  p2_max
  (Find (m)
  (maximum (set-by-def (PLam OA (exists (l O A h) (&&
         (on (point 0 1) l)
         (line-type l)
           (is-slope-of h l)
         (= O (point 0 0))
           (line-symmetry O A l)
         (<= -1 h) (<= h 1)
         (= OA (length-of (seg O A)))
      )))) m)
  ))

(def-answer p2_max (PLam m (= m 2)))

(def-directive
  p2_min
  (Find (m)
  (minimum (set-by-def (PLam OA (exists (l O A h) (&&
         (on (point 0 1) l)
         (line-type l)
           (is-slope-of h l)
         (= O (point 0 0))
           (line-symmetry O A l)
         (<= -1 h) (<= h 1)
         (= OA (length-of (seg O A)))
      )))) m)
  ))

(def-answer p2_min (PLam m (= m (sqrt 2))))

(def-directive
  p3
  (Find (S)
  (exists (C) (&&
    (= S (area-of (shape-enclosed-by (list-of C (graph-of (fun (Lam x 2)))))))
    (= C (shape-of-cpfun (PLam A (exists (l h O) (&&
           (on (point 0 1) l)
           (line-type l)
           (is-slope-of h l)
           (= O (point 0 0))
           (line-symmetry O A l)
           (<= -1 h) (<= h 1)
    )))))
  ))))

(def-answer p3 (PLam a (= a (/ (Pi) 2))))

