;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2011, Humanities Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-21
;;
;; <PROBLEM-TEXT>
;; Consider the right triangle $ABC$ on a plane, and let $2$ be the
;; length of the hypotenuse $BC$ of the triangle. Assume that the point
;; $O$ satisfies $4\vec{OA} -\vec{OB} -\vec{OC} =\vec{0}$. Answer the
;; following questions:
;;
;; (1) Let $M$ be the midpoint of the side $BC$, then prove that the
;; point $A$ is at the midpoint of the line segment $OM$.
;;
;; (2) Prove that $|\vec{OB}|^2 + |\vec{OC}|^2 = 10$.
;;
;; (3) Let $P$ be the point that satisfies
;; $4 |\vec{PA}|^2 - |\vec{PB}|^2 - |\vec{PC}|^2 = - 4$, then find the
;; value of $|\vec{OP}|$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show (forall (A B C O M)
                (-> (&& (is-right (angle B A C))
                        (= (distance B C) 2)
                        (= (v- (sv* 4 (vec O A))
                                 (v+ (vec O B) (vec O C)))
                           (zero-vector))
                        (= M (midpoint-of B C)))
                    (= A (midpoint-of O M))))))

(def-directive
  p2
  (Show (forall (A B C O M)
                (-> (&& (is-right (angle B A C))
                        (= (distance B C) 2)
                        (= (v- (sv* 4 (vec O A))
                                 (v+ (vec O B) (vec O C)))
                           (zero-vector)))
                    (= (+ (distance^2 O B) (distance^2 O C)) 10)))))

(def-directive
  p3
  (Find (OP)
        (exists (A B C O P)
                (&& (is-right (angle B A C))
                    (= (distance B C) 2)
                    (= (v- (sv* 4 (vec O A))
                           (v+ (vec O B) (vec O C)))
                       (zero-vector))
                    (= (- (* 4 (distance^2 P A))
                          (+ (distance^2 P B)
                             (distance^2 P C)))
                       -4)
                    (= OP (distance O P))))))

(def-answer p3 (PLam OP (= OP 1)))

