;; DOMAIN:    Matrices
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2011, Science Course, Problem 2
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-07-31
;;
;; <PROBLEM-TEXT>
;; Let $T$ be the linear transformation defined by the matrix
;; $(\begin{matrix} a & 1\\ b & c\end{matrix})$ on the coordinate plane
;; with $O$ as the origin, where $a$, $b$, and $c$ are real numbers. If
;; the linear transformation $T$ satisfies the two conditions: (i) the
;; point $(1, 2)$ is transformed to the point $(1, 2)$ and (ii) when the
;; points $(1, 0)$ and $(0, 1)$ are respectively transformed to the
;; points $A$ and $B$ by $T$, the area of $\triangle OAB$ is
;; $\frac{1}{2}$, then find $a$, $b$, and $c$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (S) (
    exists (a b c)(&& (= S (list-of a b c))
      (let* (
        (T (matrix a 1 b c))
        (A (vec->point (mv* T (vec2d 1 0))))
        (B (vec->point (mv* T (vec2d 0 1))))
      )
      (&&
        (= (mv* T (vec2d 1 2)) (vec2d 1 2))
        (= (area-of (triangle (origin) A B)) (/ 1 2))))))))

(def-answer p (PLam S (|| (= S (list-of (- 1) (- 4) 3))
           (= S (list-of (- 1) 0 1))
)))

