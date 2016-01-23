;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2011, Humanities Course, Problem 2
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-08
;;
;; <PROBLEM-TEXT>
;; In the tetrahedron $OABC$, let $H$ be the intersection of the
;; perpendicular drawn from the point $O$ to the plane containing the
;; points $A$, $B$, and $C$ and the plane. When $\vec{OA}\bot\vec{BC}$,
;; $\vec{OB}\bot\vec{OC}$, $|\vec{OA}|=2$, $|\vec{OB}|=|\vec{OC}|=3$,
;; and $|\vec{AB}|=\sqrt{7}$, find $|\vec{OH}|$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (OHLen)
    (exists (O A B C H OA BC OB OC ABC OH)
      (&&
        (= 2 (distance O A))
        (= 3 (distance O B))
        (= 3 (distance O C))
        (= OA (vec O A))
        (= BC (vec B C))
        (= OB (vec O B))
        (= OC (vec O C))
        (= 0 (inner-prod OA BC))
        (= 0 (inner-prod OB OC))
        (= (sqrt 7) (distance A B))
        (plane-type ABC)
        (on A ABC)
        (on B ABC)
        (on C ABC)
        (on H ABC)
        (= OH (line O H))
        (perpendicular OH ABC)
        (= OHLen (distance O H))
      )
    )
  ))

(def-answer p1 (PLam OHLen (= OHLen (/ (* 3 (sqrt 10)) 5))))

