;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2011, Science Course, Problem 1
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-02-18
;;
;; <PROBLEM-TEXT>
;; On the coordinate plane, let $C$ be the circle with the center at the
;; point $P(0, 1)$ and the radius $1$. Let $a$ be the real number that
;; satisfies $0<a<1$, and $Q$ and $R$, the intersections of the straight
;; lines $y=a(x + 1)$ and $C$.
;;
;; (1) Find the area $S(a)$ of $\triangle PQR$.
;;
;; (2) When $a$ moves in the range of $0<a<1$, find $a$ that gives the
;; maximum value of $S(a)$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (S)
    (exists (P C l Q R)
      (&&
        (= P (point 0 1))
        (= C (circle P 1))
        (< 0 a)
        (< a 1)
        (= l (graph-of (poly-fun (list-of a a))))
        (on Q l)
        (on R l)
        (on Q C)
        (on R C)
        (! (= Q R))
        (= S (area-of (triangle P Q R)))
      )
    )
  )
)

(def-answer p1 (PLam S (&& (= S (/ (* (sqrt (* 2 a)) (- 1 a)) (+ (^ a 2) 1)))
         (< 0 a)
         (< a 1))))

