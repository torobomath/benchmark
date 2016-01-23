;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1985, Problem 5
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-18
;;
;; <PROBLEM-TEXT>
;; A circle with center $O$ passes through the vertices $A$ and $C$ of triangle $ABC$
;; and intersects the segments $AB$ and $BC$ again at distinct points $K$ and $N$,
;; respectively. The circumscribed circles of the triangles $ABC$ and $EBN$ intersect
;; at exactly two distinct points $B$ and $M$. Prove that angle $OMB$ is a right
;; angle.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
    (forall (circle circle1 circle2 O A B C K N M)
        (-> (&& (circle-type circle)
                        (= O (center-of circle))
                        (is-triangle A B C)
            (on A circle)
            (on C circle)
            (on K (seg A B))
            (on K circle)
                        (! (= K A))
            (on N (seg B C))
            (on N circle)
                        (! (= N C))
                        (! (= K N))
            (circle-type circle1)
            (circle-type circle2)
            (is-inscribed-in (triangle A B C) circle1)
            (is-inscribed-in (triangle K B N) circle1)
            (intersect circle1 circle2 M)
            (intersect circle1 circle2 B)
            (! (= B M))
            (forall (M0)
                          (-> (intersect circle1 circle2 M0)
                (|| (= M M0)
                                  (= B M0)))))
          (is-right (angle O M B))))))

