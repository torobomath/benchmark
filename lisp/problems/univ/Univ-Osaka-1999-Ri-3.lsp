;; DOMAIN:    Trigonometric Functions
;; THEORY:    RCF
;; SOURCE:    Osaka University, 1999, Science Course, Problem 3
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-20
;;
;; <PROBLEM-TEXT>
;; There is a regular hexagon on a plane whose center is at the point
;; $O$ and whose vertices are at the points
;; $A_1, A_2, A_3, A_4, A_5, A_6$. Let $l$ be the straight line that
;; passes through $O$ on the same plane, and let $d_k$ be the distance
;; between each $A_k$ and $l$. Prove that
;; $D = d_1^2 + d_2^2 + d_3^2 + d_4^2 + d_5^2 + d_6^2$ is constant
;; independent of $l$, and find the value of it, where $O A_k = r$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (D)
    (exists (A A1 A2 A3 A4 A5 A6 O l d1 d2 d3 d4 d5 d6)
      (&&
        (= D (+ (^ d1 2)
                (^ d2 2)
                (^ d3 2)
                (^ d4 2)
                (^ d5 2)
                (^ d6 2)))
        (= A (polygon (list-of A1 A2 A3 A4 A5 A6)))
        (is-regular-polygon A)
        (= r (distance O A1))
        (= r (distance O A2))
        (= r (distance O A3))
        (= r (distance O A4))
        (= r (distance O A5))
        (= r (distance O A6))
        (line-type l)
        (on O l)
        (= d1 (point-shape-distance A1 l))
        (= d2 (point-shape-distance A2 l))
        (= d3 (point-shape-distance A3 l))
        (= d4 (point-shape-distance A4 l))
        (= d5 (point-shape-distance A5 l))
        (= d6 (point-shape-distance A6 l))
      )
    )
  )
)

(def-answer p1 (PLam D (= D (* 3 (^ r 2)))))

