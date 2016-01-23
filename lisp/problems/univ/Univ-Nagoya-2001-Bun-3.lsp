;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2001, Humanities Course, Problem 3
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-08-22
;;
;; <PROBLEM-TEXT>
;; (a) Consider the planar vectors $\vec{OA} =(2 a, a)$ and
;; $\vec{OB} =(0, 2 b)$, where $a$ and $b$ are positive constants. Let
;; $C$ be the midpoint of the line segment $OB$. For the point $P$ on a
;; plane that is not on either the straight line $OA$ or $OB$, let $Q$
;; be the intersection of the straight line $OA$ and the straight line
;; passing through the point $P$ and parallel to the straight line $OB$,
;; and let $R$ be the intersection of the straight line $OB$ and the
;; straight line passing through the point $P$ and parallel to the
;; straight line $OA$, then it is possible to represent
;; $\vec{OQ} = s\vec{OA}$ and $\vec{OR} = t\vec{OB}$, where $s$ and $t$
;; are real numbers.
;;
;; (1) Let $k$ be a positive constant, then find the equation of the
;; curve $F$ formed by the point $P$ that satisfies $t =(s - k)^2$.
;;
;; (2) When the straight line $AC$ is in contact with $F$, find the
;; value of $k$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (Fp)
    (exists (F A B C O)
    (&& (< 0 a)
        (< 0 b)
        (< 0 k)
        (= O (origin))
        (= A (point (* 2 a) a))
        (= B (point 0 (* 2 b)))
        (= C (midpoint-of O B))
        (on Fp F)
        (= F (shape-of-cpfun (PLam P
           (&& (! (on P (line O A)))
               (! (on P (line O B)))
               (exists (l m)
                 (exists (Q R)
                   (&& (line-type l)
                 (on P l)
                 (parallel l (line O B))
                 (intersect l (line O A) Q)
                 (line-type m)
                 (on P m)
                 (parallel m (line O A))
                 (intersect m (line O B) R)
                 (exists (s t)
                   (&& (= (vec O Q) (sv* s (vec O A)))
                       (= (vec O R) (sv* t (vec O B)))
                       (= t (^ (- s k) 2)))))))))))))))

(def-answer
  p1
  (PLam p (exists (x y) (&&
    (= y (y-coord p))
    (= x (x-coord p))
    (< 0 a) (< 0 b) (< 0 k)
  (! (= (* 2 y) x))
  (! (= x 0))
    (= y
     (+ (* (/ b (* 2 (^ a 2))) (^ x 2)) (* (- (/ 1 2) (/ (* 2 b k) a)) x) (* 2 b (^ k 2))))))))

(def-directive
  p2
  (Find (k)
    (exists (F A B C O a b)
    (&& (< 0 a)
        (< 0 b)
        (< 0 k)
        (= O (origin))
        (= A (point (* 2 a) a))
        (= B (point 0 (* 2 b)))
        (= C (midpoint-of O B))
    (tangent F (line A C))
        (= F (shape-of-cpfun (PLam P
           (exists (l m Q R) (&&
              (! (on P (line O A)))
              (! (on P (line O B)))
              (line-type l)
              (on P l)
              (parallel l (line O B))
              (intersect l (line O A) Q)
              (line-type m)
              (on P m)
              (parallel m (line O A))
              (intersect m (line O B) R)
              (exists (s t) (&&
                       (= (vec O Q) (sv* s (vec O A)))
                       (= (vec O R) (sv* t (vec O B)))
                       (= t (^ (- s k) 2)))))))))))))

(def-answer p2 (PLam k (= k (/ 9 8))))

