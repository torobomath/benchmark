;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2012, Humanities Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-05-07
;;
;; <PROBLEM-TEXT>
;; The line $l$ on the $xy$-plane pass through the point $(0, 1)$ and its inclination is $h$.
;; (1) Let $Q(s,t)$ be the point symmetric to the point $P(a,b)$ with respect to $l$ on the $xy$-plane.
;; Represent $s$ and $t$ using $a$, $b$, and $h$, assuming that the point $P(a,b)$ is not on $l$.
;; (2) Let $A$ be the point symmetric to the origin $O(0,0)$ with respect to $l$ on the $xy$-plane.
;; When $h$ moves in the range $-1 \le h \le 1$, find the maximum and minimum length of the segment $OA$.
;; (3) Let $C$ be the locus of the point $A$ when $h$ moves in the range $-1 \le h \le 1$.
;; Find the area of the region enclosed by $C$ and the line $y = 1$.
;; </PROBLEM-TEXT>

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
    (= S (area-of (shape-enclosed-by (list-of C (graph-of (fun (Lam x 1)))))))
    (= C (shape-of-cpfun (PLam A (exists (l h O) (&&
           (on (point 0 1) l)
           (line-type l)
           (is-slope-of h l)
           (= O (point 0 0))
           (line-symmetry O A l)
           (<= -1 h) (<= h 1)
    )))))
  ))))

(def-answer p3 (PLam S (= S (/ (Pi) 2))))

