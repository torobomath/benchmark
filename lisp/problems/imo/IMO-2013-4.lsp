;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2013, Problem 4
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-10-15
;;
;; <PROBLEM-TEXT>
;; Let $ABC$ be an acute-angled triangle with orthocentre $H$, and let $W$ be a point
;; on the side $BC$, lying strictly between $B$ and $C$.
;; The points $M$ and $N$ are the feet of the altitudes from $B$ and $C$, respectively.
;; Denote by $\omega_1$ the circumcircle of $BWN$, and let $X$ be the point on $\omega_1$
;; such that $WX$ is a diameter of $\omega_1$. Analogously, denote by $\omega_2$
;; the circumcircle of $CWM$, and let $Y$ be the point on $\omega_2$ such that $WY$
;; is a diameter of $\omega_2$. Prove that $X$, $Y$ and $H$ are collinear.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C H w1 w2 M N X Y W)
                (-> (&& (is-acute-triangle A B C)
                        (is-orthocenter-of H (triangle A B C))
                        (on W (seg B C))
                        (! (= W B))
                        (! (= W C))
                        (= M (foot-of-perpendicular-line-from-to B (line A C)))
                        (= N (foot-of-perpendicular-line-from-to C (line A B)))
                        (circle-type w1)
                        (is-inscribed-in (triangle B W N) w1)
                        (is-diameter-of (seg W X) w1)
                        (circle-type w2)
                        (is-inscribed-in (triangle C W M) w2)
                        (is-diameter-of (seg W Y) w2))
                    (colinear X Y H)))))

