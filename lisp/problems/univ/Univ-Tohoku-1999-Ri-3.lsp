;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 1999, Science Course, Problem 3
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-10
;;
;; <PROBLEM-TEXT>
;; Let $l$ be the tangent to the curve $y = x^2$ at the point
;; $(a, a^2)$. Let $P$ and $Q$ be the points on $l$ for which $x$
;; coordinates are $a - 1$ and $a + 1$, respectively. When $a$ moves in
;; the range of $- 1\le a\le 1$, find the area of the moving range of
;; the line segment $PQ$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (S)
    (= S (area-of (shape-of-cpfun (PLam p
      (exists (P Q l a C)
        (&&
          (= C (graph-of (poly-fun (list-of 0 0 1))))
          (tangent l C (point a (^ a 2)))
          (line-type l)
          (on P l)
          (on Q l)
          (= (x-coord P) (+ a (- 1)))
          (= (x-coord Q) (+ a 1))
          (<= -1 a)
          (<= a 1)
          (on p (seg P Q))
        )
      )
    ))))
  )
)

(def-answer p1 (PLam S (= S (/ 10 3))))

