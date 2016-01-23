;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2013, Humanities Course, Problem 4
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-09-26
;;
;; <PROBLEM-TEXT>
;; When the real number $t$ satisfies $0\le t < 8$, consider the point
;; $P(t, t^3-8 t^2+15 t-56)$.
;;
;; (1) Prove that two different tangents can be drawn from the point $P$
;; to the parabola $y = x^2$.
;;
;; (2) Let $Q$ and $R$ be the points of contact between the two tangents
;; described in (1). Represent the area $S(t)$ of the region enclosed by
;; the line segments $PQ$, $PR$, and the parabola $y = x^2$ using $t$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
    p1
    (Show
        (forall (t P f)
            (-> (&&
                  (<= 0 t) (< t 8)
                  (= P (point t (-(+(- (^ t 3) (* 8 (^ t 2))) (* 15 t)) 56)))
                  (= f (graph-of (poly-fun (list-of 0 0 1))))
        )
        (exists (Q R l1 l2) (&&
                  (on Q f)
                  (on R f)
                  (= l1 (line P Q))
                  (= l2 (line P R))
                  (! (= Q R))
                  (tangent f l1)
                  (tangent f l2)
                ))
            )
        )
    )
)

(def-directive
    p2
    (Find (S)
        (exists (P f Q R l1 l2 PR PQ) (&&
            (<= 0 t) (< t 8)
            (= P (point t (-(+(- (^ t 3) (* 8 (^ t 2))) (* 15 t)) 56)))
            (= f (graph-of (poly-fun (list-of 0 0 1))))
            (on Q f)
            (on R f)
            (= l1 (line P Q))
            (= l2 (line P R))
            (= PR (seg P R))
            (= PQ (seg P Q))
            (tangent f l1)
            (tangent f l2)
            (= S (area-of (shape-enclosed-by (list-of f PR PQ))))
        ))
    )
)

(def-answer p2 (PLam S (&&
    (<= 0 t) (< t 8)
  (= S (* (/ 2 3) (^ (- (* (- t 8) (+ (^ t 2) (- t) 7))) (/ 3 2)))))))

