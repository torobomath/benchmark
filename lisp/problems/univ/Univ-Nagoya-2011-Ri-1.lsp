;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2011, Science Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-05-26
;;
;; <PROBLEM-TEXT>
;; Assume that $-\frac{1}{4} < s <\frac{1}{3}$. Assume that there is the
;; rectangle $R_s =\{(x, y, 0)| 1\le x\le 2+4 s, 1\le y\le 2-3 s\}$ on
;; the plane $z = 0$ in the $x y z$ space. Let $K_s$ be the solid
;; obtained by rotating the rectangle $R_s$ around the $x$ axis.
;;
;; (1) Find the maximum value of the volume $V(s)$ of the solid $K_s$
;; and the value of $V(s)$ that gives the maximum value.
;;
;; (2) Let $s$ be the value found in (1). Then, find the volume of the
;; solid $L$ formed by rotating the solid $K_s$ at that time around the
;; $y$ axis.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (ms)
  (exists (m)
    (func-max (fun (Lam s (volume-of (solid-of-revolution (shape-of-cpfun (PLam p
                          (&& (<= 1 (x-coord p))
                        (<= (x-coord p) (+ 2 (* 4 s)))
                        (<= 1 (y-coord p))
                        (<= (y-coord p) (- 2 (* 3 s)))
                        (= (z-coord p) 0))))
                      (x-axis)))))
        (set-by-def (PLam s (&& (< (- (/ 1 4)) s)
              (< s (/ 1 3)))))
        ms
        m))))

(def-directive
  p2
  (Find (m)
  (exists (ms)
    (func-max (fun (Lam s (volume-of (solid-of-revolution (shape-of-cpfun (PLam p
                          (&& (<= 1 (x-coord p))
                        (<= (x-coord p) (+ 2 (* 4 s)))
                        (<= 1 (y-coord p))
                        (<= (y-coord p) (- 2 (* 3 s)))
                        (= (z-coord p) 0))))
                      (x-axis)))))
        (set-by-def (PLam s (&& (< (- (/ 1 4)) s)
              (< s (/ 1 3)))))
        ms
        m))))

(def-directive
  p3
  (Find (vl)
  (exists (ms m)
    (&& (func-max (fun (Lam s (volume-of (solid-of-revolution  (shape-of-cpfun (PLam p
                          (&& (<= 1 (x-coord p))
                        (<= (x-coord p) (+ 2 (* 4 s)))
                        (<= 1 (y-coord p))
                        (<= (y-coord p) (- 2 (* 3 s)))
                        (= (z-coord p) 0))))
                    (x-axis)))))
            (set-by-def (PLam s (&& (< (- (/ 1 4)) s)
                  (< s (/ 1 3)))))
            ms
            m)
        (= vl (volume-of (solid-of-revolution (solid-of-revolution (shape-of-cpfun (PLam p
                          (&& (<= 1 (x-coord p))
                        (<= (x-coord p) (+ 2 (* 4 s)))
                        (<= 1 (y-coord p))
                        (<= (y-coord p) (- 2 (* 3 s)))
                        (= (z-coord p) 0))))
                         (x-axis))
                (y-axis))))))))

(def-answer p1 (PLam ms (= ms 0)))

(def-answer p2 (PLam m (= m (* 3 (Pi)))))

(def-answer p3 (PLam vl (= vl (* (/ 64 3) (Pi)))))

