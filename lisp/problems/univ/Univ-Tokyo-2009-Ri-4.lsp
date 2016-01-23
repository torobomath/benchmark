;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2009, Science Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; Let $a$ be a positive real number, and consider two discs
;; $D_1=\{(x, y, z)| x^2+y^2\le 1, z=a\}$ and
;; $D_2=\{(x, y, z)| x^2+y^2\le 1, z=-a\}$ in a space. Rotate
;; $180^{\circ}$ around the $y$ axis $180^{\circ}$ and superpose it on
;; $D_2$. Here, the rotating direction is such that the positive part of
;; the $z$ axis is inclined in the positive direction of the $x$ axis.
;; Let $E$ be the region through which $D_1$ passes during this
;; rotation. Let $V(a)$ be the volume of $E$, and let $W(a)$ be the
;; volume of the intersection of $E$ and $\{(x, y, z)| x\ge 0\}$.
;;
;; (1) Find the value of $W(a)$.
;;
;; (2) Find the value of $\lim_{a\rightarrow\infty } V(a)$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1_1
  (Find (W)
        (exists (D1)
                (&& (= D1 (shape-of-cpfun
                           (PLam p (&& (<= (+ (^ (x-coord p) 2) (^ (y-coord p) 2)) 1)
                                       (= a (z-coord p))))))
                    (= E (solid-of-revolution D1 (y-axis)))
                    (= W (volume-of (intersection E (shape-of-cpfun (PLam p (<= 0 (x-coord p)))))))))))

(def-directive
  p2
  (Find (V_lim)
  (forall (a)
    (-> (< 0 a)
        (exists (D1 D2 E V W)
          (&& (= D1 (shape-of-cpfun
               (PLam p (&& (<= (+ (^ (x-coord p) 2) (^ (y-coord p) 2)) 1)
               (= a (z-coord p))))))
        (= D2 (shape-of-cpfun
               (PLam p (&& (<= (+ (^ (x-coord p) 2) (^ (y-coord p) 2)) 1)
               (= (- a) (z-coord p))))))
        (= E  (solid-of-revolution D1 (y-axis) ))
        (= (funapp V a) (volume-of E))
        (= (funapp W a) (volume-of (intersection E
                   (shape-of-cpfun (PLam p (<= 0 (x-coord p)))))))
        (converge-plus-inf V V_lim)))))))

(def-answer p1_1 (PLam W (= W (* (/ 2 3) (Pi)))))

(def-answer p2 (PLam V_lim (= V_lim (* (/ 2 3) (Pi)))))

