;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2011, Science Course, Problem 6
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-07-31
;;
;; <PROBLEM-TEXT>
;; Consider the tetrahedron $ABCD$ in a space. Prove that a spherical
;; surface exists that simultaneously contains the four vertices $A$,
;; $B$, $C$, and $D$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Show
    (forall (A1 A2 A3 B1 B2 B3 C1 C2 C3 D1 D2 D3)
      (let*
        (
          (A (point A1 A2 A3))
          (B (point B1 B2 B3))
          (C (point C1 C2 C3))
          (D (point D1 D2 D3))
        )
        (->
          (is-tetrahedron A B C D)
          (exists (S) (&&
            (sphere-type S)
            (on A S)
            (on B S)
            (on C S)
            (on D S)
          ))
        )
      )
    )
  )
)

