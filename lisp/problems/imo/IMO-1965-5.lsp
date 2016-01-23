;; DOMAIN:    Geometry, polyhedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1965, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-17
;;
;; <PROBLEM-TEXT>
;; Consider $\triangle OAB$ with acute angle $AOB$.
;; Through a point $M \neq O$ perpendiculars are drawn to $OA$ and $OB$, the feet
;; of which are $P$ and $Q$ respectively. The point of intersection of
;; the altitudes of $\triangle OPQ$ is $H$. What is the locus of $H$ if $M$
;; is permitted to range over (a) the side $AB$, (b) the interior of $\triangle OAB$?
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p1
  (Find (H)
  (exists (O A B M P Q)
    (&& (= O (point Ox Oy))
        (= A (point Ax Ay))
        (= B (point Bx By))
        (is-triangle O A B)
        (< (rad-of-angle (angle A O B)) (* 90 (Degree)))
        (on M (seg A B))
        (= P (foot-of-perpendicular-line-from-to M (line O A)))
        (= Q (foot-of-perpendicular-line-from-to M (line O B)))
        (is-orthocenter-of H (triangle O P Q))))))

(def-answer p1
  (PLam H (exists (C D)
      (&& (= C (foot-of-perpendicular-line-from-to (point Bx By) (line (point Ox Oy) (point Ax Ay))))
          (= D (foot-of-perpendicular-line-from-to (point Ax Ay) (line (point Ox Oy) (point Bx By))))
          (on H (seg C D))
          )
      )))

(def-directive p2
  (Find (H)
  (exists (O A B M P Q)
    (&& (= O (point Ox Oy))
        (= A (point Ax Ay))
        (= B (point Bx By))
        (is-triangle O A B)
        (< (rad-of-angle (angle A O B)) (* 90 (Degree)))
        (point-inside-of M (triangle O A B))
        (= P (foot-of-perpendicular-line-from-to M (line O A)))
        (= Q (foot-of-perpendicular-line-from-to M (line O B)))
        (is-orthocenter-of H (triangle O P Q))))))

(def-answer p2
  (PLam H (exists (C D)
                  (&& (= C (foot-of-perpendicular-line-from-to (point Bx By) (line (point Ox Oy) (point Ax Ay))))
          (= D (foot-of-perpendicular-line-from-to (point Ax Ay) (line (point Ox Oy) (point Bx By))))
                      (point-inside-of H (triangle O C D))
                      )
                  ))
)

