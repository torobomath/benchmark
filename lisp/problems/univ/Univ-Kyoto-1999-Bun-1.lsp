;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 1999, Humanities Course, Problem 1
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-13
;;
;; <PROBLEM-TEXT>
;; Let $M$ be the middle point of the side $BC$ of the acute triangle
;; $\triangle ABC$, and let $AH$ be the perpendicular drawn from $A$ to
;; the side $BC$. Let the point $P$ be on the line segment $MH$, then
;; prove that $AB^2+AC^2\ge 2 AP^2+BP^2+CP^2$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show
    (forall (A B C M H P)
      (->
        (&&
          (is-acute-triangle A B C)
          (on H (seg B C))
          (perpendicular (line A H) (line B C))
          (= M (midpoint-of B C))
          (|| (&& (on P (seg M H)) (! (= M H)))
     (&& (= M H) (= P M))
     )
        )
        (>= (+ (distance^2 A B) (distance^2 A C))
            (+ (* 2 (distance^2 A P))
               (distance^2 B P)
               (distance^2 C P)))
      )
    )
  )
)

