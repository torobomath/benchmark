;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2009, Science Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-02
;;
;; <PROBLEM-TEXT>
;; Consider the triangle $OAB$ on a plane, and let $M$ be the middle
;; point of the side $AB$. Assuming that
;; $\vec{a} =\frac{\vec{OA}}{|\vec{OA}|}$ and
;; $\vec{b} =\frac{\vec{OB}}{|\vec{OB}|}$, and consider the point $P$
;; such that $\vec{a}\cdot\vec{OP} = -\vec{b}\cdot\vec{OP} > 0$. Let $Q$
;; be the intersection of the perpendicular drawn from $A$ to the
;; straight line $OP$ and the straight line $OP$.
;;
;; (1) Prove that $\vec{MQ}$ is parallel to $\vec{b}$.
;;
;; (2) Prove that $|\vec{MQ}| =\frac{1}{2}(|\vec{OA}| + |\vec{OB}|)$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show (forall (O A B M a b P Q)
          (-> (&& (is-triangle O A B)
            (= M (midpoint-of A B))
            (= a (sv* (/ 1 (distance O A)) (vec O A)))
            (= b (sv* (/ 1 (distance O B)) (vec O B)))
            (= (inner-prod a (vec O P))
         (- (inner-prod b (vec O P))))
            (> (inner-prod a (vec O P)) 0)
            (perpendicular (line O P) (line A Q))
            (on Q (line O P))
            )
        (vec-parallel (vec M Q) b)))))

(def-directive
  p2
  (Show (forall (O A B M a b P Q)
          (-> (&& (is-triangle O A B)
            (= M (midpoint-of A B))
            (= a (sv* (/ 1 (distance O A)) (vec O A)))
            (= b (sv* (/ 1 (distance O B)) (vec O B)))
            (= (inner-prod a (vec O P))
         (- (inner-prod b (vec O P))))
            (> (inner-prod a (vec O P)) 0)
            (perpendicular (line O P) (line A Q))
            (on Q (line O P))
            )
        (= (distance M Q)
           (* (/ 1 2) (+ (distance O A)
             (distance O B))))))))

(def-directive
  p2_1
  (Show (forall (O A B M a b P Q)
          (-> (&& (= O (origin))
            (= A (point 1 0))
            (is-triangle O A B)
            (= M (midpoint-of A B))
            (= a (sv* (/ 1 (distance O A)) (vec O A)))
            (= b (sv* (/ 1 (distance O B)) (vec O B)))
            (= (inner-prod a (vec O P))
         (- (inner-prod b (vec O P))))
            (> (inner-prod a (vec O P)) 0)
            (perpendicular (line O P) (line A Q))
            (on Q (line O P))
            )
        (= (distance M Q)
           (* (/ 1 2) (+ (distance O A)
             (distance O B))))))))

