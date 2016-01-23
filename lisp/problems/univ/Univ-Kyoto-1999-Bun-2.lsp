;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 1999, Humanities Course, Problem 2
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-13
;;
;; <PROBLEM-TEXT>
;; When the points $P$ and $Q$ move on the parabola $y=x^2$, and the
;; area of the region enclosed by this parabola and the line segment
;; $PQ$ is always $1$, find the equation of the figure formed by the
;; middle point $R$ of $PQ$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (R)
      (exists (P Q C)
        (&&
          (= C (graph-of (poly-fun (list-of 0 0 1))))
          (on P C)
          (on Q C)
          (! (= P Q))
          (= 1 (area-of (shape-enclosed-by (list-of (seg P Q) C))))
          (= R (midpoint-of P Q))
        )
      )
  )
)

(def-answer p (PLam R (= (y-coord R) (+ (^ (x-coord R) 2) (/ (^ 36 (/ 1 3)) 4)))))

