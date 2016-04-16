;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2007, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-02
;;
;; <PROBLEM-TEXT>
;; Let $C$ be the parabola $y = x^2$ on the $x y$ plane. Let $l$ be the
;; straight line $y = x + k$, where $k$ is a real number.
;;
;; (1) Find the condition that $k$ must satisfy in order that $C$
;; intersects with $l$ at two points in the range of $- 2 < x < 2$.
;;
;; (2) Assuming that $k$ satisfies the condition described in (1),
;; represent the sum $S$ of the areas of the $3$ regions enclosed by
;; $C$, $l$, and the straight lines $x = - 2$ and $x = 2$ by a formula
;; of $k$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (k)
        (exists (C l p q)
                (&& (= C (graph-of (fun (Lam x (^ x 2)))))
                    (= l (graph-of (fun (Lam x (+ x k)))))
                    (< -2 (x-coord p))
                    (< (x-coord p) 2)
                    (< -2 (x-coord q))
                    (< (x-coord q) 2)
                    (on p (intersection C l))
                    (on q (intersection C l))
                    (! (= p q))))))

(def-directive
  p2
  (Find (S)
        (exists (C l p q)
                (&& (= C (graph-of (fun (Lam x (^ x 2)))))
                    (= l (graph-of (fun (Lam x (+ x k)))))
                    (< -2 (x-coord p))
                    (< (x-coord p) 2)
                    (< -2 (x-coord q))
                    (< (x-coord q) 2)
                    (on p (intersection C l))
                    (on q (intersection C l))
                    (! (= p q))
                    (= S (area-of (shape-enclosed-by (list-of C l
                                                              (set-of-cfun (Lam x (PLam y (= x -2))))
                                                              (set-of-cfun (Lam x (PLam y (= x 2))))))))))))

(def-answer p1 (PLam k (&& (< (- (/ 1 4)) k) (< k 2))))

(def-answer p2 (PLam S (&& (< (- (/ 1 4)) k)
                           (< k 2)
                           (= S (+ (/ 16 3)
                                   (- (* 4 k))
                                   (* (/ 1 3)
                                      (sqrt (^ (+ 1 (* 4 k)) 3))))))))

