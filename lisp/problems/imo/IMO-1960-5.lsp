;; DOMAIN:    Geometry, hexahedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1960, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-04
;;
;; <PROBLEM-TEXT>
;; Consider the cube $ABCDA'B'C'D'$(with face $ABCD$ directly above face
;; $A'B'C'D'$).
;; (a) Find the locus of the midpoints of segments $XY$, where $X$ is any point
;; of $AC$ and $Y$ is any point of $B'D'$.
;; (b) Find the locus of points $Z$ which lie on the segments $XY$ of part (a) with
;; $ZY = 2XZ$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p1
  (Find (M) (&& (< 0 a)
        (exists (A1 B1 C1 D1
                 A2 B2 C2 D2)
                (&& (= A1 (point a 0 0))
                    (= B1 (point a a 0))
                    (= C1 (point 0 a 0))
                    (= D1 (point 0 0 0))
                    (= A2 (point a 0 a))
                    (= B2 (point a a a))
                    (= C2 (point 0 a a))
                    (= D2 (point 0 0 a))
                    (= M (shape-of-cpfun (PLam p
                                               (exists (X Y)
                                                       (&& (on X (seg A1 C1))
                                                           (on Y (seg B2 D2))
                                                           (= p (midpoint-of X Y))))))))))))

(def-answer
  p1
  (PLam M (&& (< 0 a) (= M (set-of-cfun (Lam x (Lam y (PLam z (&& (= z (/ a 2))
                                                      (<= (* (/ 1 2) a) (+ x y))
                                                      (<= (+ x y) (* (/ 3 2) a))
                                                      (<= (* (- (/ 1 2)) a) (- x y))
                                                      (<= (- x y) (* (/ 1 2) a)))))))))))

(def-directive p2
  (Find (M) (&& (< 0 a)
        (exists (A1 B1 C1 D1
                 A2 B2 C2 D2)
                (&& (= A1 (point a 0 0))
                    (= B1 (point a a 0))
                    (= C1 (point 0 a 0))
                    (= D1 (point 0 0 0))
                    (= A2 (point a 0 a))
                    (= B2 (point a a a))
                    (= C2 (point 0 a a))
                    (= D2 (point 0 0 a))
                    (= M (shape-of-cpfun (PLam p
                                               (exists (X Y)
                                                       (&& (on X (seg A1 C1))
                                                           (on Y (seg B2 D2))
                                                           (= (length-of (seg p Y))
                                                              (* 2 (length-of (seg X p))))))))))))))

(def-answer
  p2
  (PLam M (&& (< 0 a) (= M (set-of-cfun (Lam x (Lam y (PLam z (&& (= z (/ a 3))
                                                      (<= (* (/ 1 3) a) (+ x y))
                                                      (<= (+ x y) (* (/ 5 3) a))
                                                      (<= (* (- (/ 1 3)) a) (- x y))
                                                      (<= (- x y) (* (/ 1 3) a)))))))))))

