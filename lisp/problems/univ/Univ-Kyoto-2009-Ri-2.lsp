;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2009, Science Course, Problem 2
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-02-06
;;
;; <PROBLEM-TEXT>
;; Consider the point $P$ inside the acute triangle $\triangle ABC$
;; (excluding sides and vertices) on a plane. Let $A^{\prime }$ be the
;; center of the circle passing through $B$, $C$, and $P$, let
;; $B^{\prime }$ be the center of the circle passing through $C$, $A$,
;; and $P$, and let $P$ be the center of the circle passing through $A$,
;; $B$, and $P$. Then, prove that the necessary and sufficient condition
;; for $A$, $B$, $C$, $A^{\prime }$, $B^{\prime }$, and $C^{\prime }$ to
;; be on the same circumference is that $P$ matches the incenter of
;; $\triangle ABC$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show (forall (P A B C) (->
  (&&
    (is-acute-triangle A B C)
    (point-inside-of P (triangle A B C))
  )
    (<->
    (is-incenter-of P (triangle A B C))
      (exists (Ap Bp Cp)
    (&&
      (exists (ra rb rc)
      (&&
        (on B (circle Ap ra))
        (on C (circle Ap ra))
        (on P (circle Ap ra))
        (on C (circle Bp rb))
        (on A (circle Bp rb))
        (on P (circle Bp rb))
        (on A (circle Cp rc))
        (on B (circle Cp rc))
        (on P (circle Cp rc))
      ))
      (concircular (list-of A B C Ap Bp Cp)))))))))

