;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2001, Science Course, Problem 3
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-08-22
;;
;; <PROBLEM-TEXT>
;; Assume that the circumcenter (the center of a circumscribed circle)
;; $O$ of $\triangle ABC$ is inside the triangle, and ${\alpha}$,
;; ${\beta}$, and ${\gamma}$ are positive numbers that satisfy
;; ${\alpha}\vec{OA} + {\beta}\vec{OB} + {\gamma}\vec{OC} =\vec{0}$. Let
;; $A^{\prime }$, $B^{\prime }$, and $C^{\prime }$ be the intersections
;; of the straight lines $OA$, $OB$, and $OC$ and the sides $BC$, $CA$,
;; and $AB$, respectively.
;;
;; (1) Represent $\vec{OA^{\prime }}$ using $\vec{OA}$, ${\alpha}$, and
;; ${\beta}$, ${\gamma}$.
;;
;; (2) Prove that if the circumcenter of
;; $\triangle A^{\prime } B^{\prime } C^{\prime }$ matches $O$,
;; ${\alpha} = {\beta} = {\gamma}$ is true.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (OAp)
  (exists (A B C O OA Ap Bp Cp)
    (&& (is-triangle A B C)
        (is-circumcenter-of O (triangle A B C))
        (point-inside-of O (triangle A B C))
        (= OA (vec2d OAx OAy))
        (= OA (vec O A))
        (= (zero-vector) (v+ (sv* alpha (vec O A)) (v+ (sv* beta (vec O B)) (sv* gamma (vec O C)))))
        (< 0 alpha)
        (< 0 beta)
        (< 0 gamma)
        (intersect (line O A) (seg B C) Ap)
        (intersect (line O B) (seg C A) Bp)
        (intersect (line O C) (seg A B) Cp)
        (= OAp (vec O Ap))))))

(def-answer p1 (PLam OAp (&&
    (< 0 alpha)
    (< 0 beta)
    (< 0 gamma)
    (= OAp (sv* (- (/ alpha (+ beta gamma))) (vec2d OAx OAy)))
)))

(def-directive
  p2
  (Show
  (forall (A B C O Ap Bp Cp alpha beta gamma)
    (-> (&& (is-triangle A B C)
          (is-circumcenter-of O (triangle A B C))
        (point-inside-of O (triangle A B C))
        (= (zero-vector) (v+ (sv* alpha (vec O A)) (v+ (sv* beta (vec O B)) (sv* gamma (vec O C)))))
        (< 0 alpha)
        (< 0 beta)
        (< 0 gamma)
        (intersect (line O A) (seg B C) Ap)
        (intersect (line O B) (seg C A) Bp)
        (intersect (line O C) (seg A B) Cp)
        (is-circumcenter-of O (triangle Ap Bp Cp)))
        (&& (= alpha beta)
        (= beta gamma))))))

