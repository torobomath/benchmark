;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1995, Problem 1
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-10
;;
;; <PROBLEM-TEXT>
;; Let $A$, $B$, $C$, $D$ be four distinct points on a line, in that order. The
;; circles with diameters $AC$ and $BD$ intersect at $X$ and $Y$. The line $XY$ meets
;; $BC$ at $Z$. Let $P$ be a point on the line $XY$ other than $Z$. The line $CP$
;; intersects the circle with diameter $AC$ at $C$ and $M$, and the line $BP$
;; intersects the circle with diameter $BD$ at $B$ and $N$. Prove that the lines
;; $AM$, $DN$, $XY$ are concurrent.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C D S1 S2 X Y Z P M N)
                (-> (&& (! (on C (seg A B)))
                        (! (on D (seg A B)))
                        (on B (seg A C))
                        (! (on D (seg A C)))
                        (on B (seg A D))
                        (on C (seg A D))
                        (circle-type S1)
                        (circle-type S2)
                        (is-diameter-of (seg A C) S1)
                        (is-diameter-of (seg B D) S2)
                        (! (= X Y))
                        (on X (intersection S1 S2))
                        (on Y (intersection S1 S2))
                        (intersect (line X Y) (line B C) Z)
                        (on P (line X Y))
                        (! (= P Z))
                        (! (= M C))
                        (! (= N B))
                        (intersect (line C P) S1 M)
                        (intersect (line B P) S2 N))
                    (lines-intersect-at-one (list-of (line A M)
                                                     (line D N)
                                                     (line X Y)))))))

