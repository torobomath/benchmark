;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 1999, Science Course, Problem 2
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-14
;;
;; <PROBLEM-TEXT>
;; Let $A$ and $B$ be fixed points on a plane, and let $c$ be a positive
;; constant. When the point $P$ on a plane satisfies
;; $|\vec{PA}| |\vec{PB}|+\vec{PA}\cdot\vec{PB}=c$, find the locus of
;; the point $P$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p0
  (Find (Pn)
    (= Pn (shape-of-cpfun (PLam P
        (exists (A B) (&&
          (= A (point Ax Ay))
          (= B (point Bx By))
          (> c 0)
          (= (+ (* (distance P A) (distance P B))
                (inner-prod (vec P A) (vec P B))) c)
        ))
      )
    ))
  )
)

(def-answer p0 (PLam Pn (exists (A B) (&&
  (> c 0)
  (= A (point Ax Ay))
  (= B (point Bx By))
  (= Pn (shape-of-cpfun (PLam P (= (+ (distance P A) (distance P B)) (sqrt (+ (* 2 c) (^ (distance A B) 2)))))))))))

