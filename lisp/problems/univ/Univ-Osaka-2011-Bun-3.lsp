;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2011, Humanities Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-23
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, and $c$ be real numbers. Define the vectors
;; $\vec{v_1} =(3, 0)$, $\vec{v_2} =(1, 2\sqrt{2})$, and
;; $\vec{v_3} = a\vec{v_1} + b\vec{v_2}$. Consider the condition (*)
;; $(\vec{v_1}\cdot\vec{p})\vec{v_1} +(\vec{v_2}\cdot\vec{p})\vec{v_2} +(\vec{v_3}\cdot\vec{p})\vec{v_3} = c\vec{p}$
;; for the vector $\vec{p}$ on the coordinate plane, where
;; $\vec{v_i}\cdot\vec{p}$ $(i = 1, 2, 3)$ represents the inner product
;; of the vector $\vec{v_i}$ and the vector $\vec{p}$. Answer the
;; following questions:
;;
;; (1) Prove that an arbitrary vector $\vec{v} =(x, y)$ on the
;; coordinate plane is represented as
;; $\vec{v} = s\vec{v_1} + t\vec{v_2}$ using real numbers $s$ and $t$ by
;; representing $s$ and $t$ respectively by a formula of $x$ and $y$.
;;
;; (2) Prove that if both $\vec{p} =\vec{v_1}$ and $\vec{p} =\vec{v_2}$
;; satisfy the condition (*), then $\vec{p} =\vec{v}$ satisfies the
;; condition (*) for all the vectors $\vec{v}$ on the coordinate plane.
;;
;; (3) Assuming that $\vec{p} =\vec{v}$ satisfies the condition (*) for
;; all the vectors $\vec{v}$ on the coordinate plane, find all the
;; possible pairs of real numbers $(a, b, c)$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (st)
        (exists (v1 v2 s t)
          (&& (= v1 (vec2d 3 0))
        (= v2 (vec2d 1 (* 2 (sqrt 2))))
        (= (vec2d x y)
           (v+ (sv* s v1)
         (sv* t v2)))
        (= st (list-of s t))))))

(def-answer p1 (PLam st (= st (list-of (+ (* (/ 1 3) x) (- (* (/ (sqrt 2) 12) y))) (* (/ (sqrt 2) 4) y)))))

(def-directive
  p2
  (Show (exists (v1 v2)
          (&& (= v1 (vec2d 3 0))
        (= v2 (vec2d 1 (* 2 (sqrt 2))))
        (forall (a b c v3 v)
          (-> (&& (= v3 (v+ (sv* a v1)
                (sv* b v2)))
            (= (v+ (sv* (inner-prod v1 v1) v1)
             (v+ (sv* (inner-prod v2 v1) v2)
                 (sv* (inner-prod v3 v1) v3)))
               (sv* c v1))
            (= (v+ (sv* (inner-prod v1 v2) v1)
             (v+ (sv* (inner-prod v2 v2) v2)
                 (sv* (inner-prod v3 v2) v3)))
               (sv* c v2)))
              (= (v+ (sv* (inner-prod v1 v) v1)
               (v+ (sv* (inner-prod v2 v) v2)
             (sv* (inner-prod v3 v) v3)))
           (sv* c v))))))))

(def-directive
  p3
  (Find (abc)
        (exists (a b c v1 v2 v3)
          (&& (= abc (list-of a b c))
        (= v1 (vec2d 3 0))
        (= v2 (vec2d 1 (* 2 (sqrt 2))))
        (= v3 (v+ (sv* a v1)
            (sv* b v2)))
        (forall (v)
          (= (v+ (sv* (inner-prod v1 v) v1)
           (v+ (sv* (inner-prod v2 v) v2)
               (sv* (inner-prod v3 v) v3)))
             (sv* c v)))))))

(def-answer p3 (PLam abc (|| (= abc (list-of (/ 1 (sqrt 2)) (- (/ 1 (sqrt 2))) 12))
        (= abc (list-of (- (/ 1 (sqrt 2))) (/ 1 (sqrt 2)) 12))
)))

