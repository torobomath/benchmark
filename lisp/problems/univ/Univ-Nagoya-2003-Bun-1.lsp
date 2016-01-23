;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2003, Humanities Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-07-30
;;
;; <PROBLEM-TEXT>
;; Let $P$ be the intersection of the side $AB$ and the bisector of the
;; vertex angle $\angle O$ of $\triangle OAB$, and let $Q$ be the foot
;; of the perpendicular drawn from the point $P$ to the straight line
;; $OA$. In the following, define $\vec{a} =\vec{OA}$ and
;; $\vec{b} =\vec{OB}$.
;;
;; (1) Prove that $P$ is the point that internally divides the line
;; segment $AB$ in a ratio of $|\vec{a}| : |\vec{b}|$.
;;
;; (2) Represent the length $OQ$ of the line segment using $\vec{a}$ and
;; $\vec{b}$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show
     (forall (O A B P)
       (-> (&&
         (is-triangle O A B)
         (is-angle-bisector (line O P) (angle A O B))
         (on P (line A B))
       )
       (divide-internally P (seg A B) (radius (vec O A)) (radius (vec O B)))))))

(def-directive
  p2
  (Find (oq)
    (exists (O A B P Q a b) (&&
        (is-triangle O A B)
        (is-angle-bisector (line O P) (angle A O B))
        (on P (line A B))
        (= Q (foot-of-perpendicular-line-from-to P (line O A)))
        (= a (vec O A))
        (= b (vec O B))
        (= a (vec2d ax ay))
        (= b (vec2d bx by))
        (= oq (distance O Q))))))

(def-answer p2 (PLam oq (exists (a b) (&&
    (= a (vec2d ax ay))
    (= b (vec2d bx by))
    (= oq (/ (+ (* (radius a) (radius b)) (inner-prod a b)) (+ (radius a) (radius b))))
))))

