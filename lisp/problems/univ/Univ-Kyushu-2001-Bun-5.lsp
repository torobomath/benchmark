;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2001, Humanities Course, Problem 5
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-28
;;
;; <PROBLEM-TEXT>
;; Let $r$ be a positive constant smaller than $1$. Let $1 - r$, $1$,
;; and $1 + r$ be the points on the half line $l$ starting from the
;; point $A$ on a plane to which the distances from $A$ are $1 - r$,
;; $1$, and $1 + r$, respectively. Draw a circle taking $BD$ as the
;; diameter, and let $m$ be one of the half lines starting from the
;; point $A$ and tangent to the circle. Let $E$, $F$, and $G$ be the
;; points on $m$ to which the distances from $A$ are $1 - r$, $1$, and
;; $1 + r$, respectively. Draw a circle passing through $E$ and $F$ and
;; in contact with $l$, and let $P$ be the point of contact. Draw a
;; circle passing through $F$ and $G$ and in contact with $l$, and let
;; $Q$ be the point of contact.
;;
;; (1) Represent the distance $AP$ between $A$ and $P$ using $r$.
;;
;; (2) Represent $CF$ using $r$.
;;
;; (3) Prove that $PQ = CF$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (AP)
  (exists (A B C D E F G P Q R l m C1 C2)
    (&&
      (< 0 r) (< r 1)
      (circle-type C1)
      (circle-type C2)
      (= l (half-line A B))
      (on B l)
      (on C l)
      (on D l)
      (= (- 1 r) (length-of (seg A B)))
      (= 1 (length-of (seg A C)))
      (= (+ 1 r) (length-of (seg A D)))
      (tangent m (circle (midpoint-of B D) (/ (length-of (seg B D)) 2)) R)
      (= m (half-line A R))
      (on E m)
      (on F m)
      (on G m)
      (= (- 1 r) (length-of (seg A E)))
      (= 1 (length-of (seg A F)))
      (= (+ 1 r) (length-of (seg A G)))
      (on E C1)
      (on F C1)
      (tangent l C1 P)
      (on F C2)
      (on G C2)
      (tangent l C2 Q)
      (= AP (length-of (seg A P)))))))

(def-answer p1 (PLam AP (= AP (sqrt (- 1 r)))))

(def-directive
  p2
  (Find (CF)
  (exists (A B C D E F G P Q R l m C1 C2)
    (&&
      (< 0 r) (< r 1)
      (circle-type C1)
      (circle-type C2)
      (= l (half-line A B))
      (on B l)
      (on C l)
      (on D l)
      (= (- 1 r) (length-of (seg A B)))
      (= 1 (length-of (seg A C)))
      (= (+ 1 r) (length-of (seg A D)))
      (tangent m (circle (midpoint-of B D) (/ (length-of (seg B D)) 2)) R)
      (= m (half-line A R))
      (on E m)
      (on F m)
      (on G m)
      (= (- 1 r) (length-of (seg A E)))
      (= 1 (length-of (seg A F)))
      (= (+ 1 r) (length-of (seg A G)))
      (on E C1)
      (on F C1)
      (tangent l C1 P)
      (on F C2)
      (on G C2)
      (tangent l C2 Q)
      (= CF (length-of (seg C F)))))))

(def-answer p2 (PLam CF (= CF (sqrt (- 2 (* 2 (sqrt (- 1 (^ r 2)))))))))

(def-directive
  p3
  (Show
  (forall (A B C D E F G P Q R l m C1 C2 r)
    (->
      (&& (< 0 r) (< r 1)
        (circle-type C1)
        (circle-type C2)
        (= l (half-line A B))
        (on B l)
        (on C l)
        (on D l)
        (= (- 1 r) (length-of (seg A B)))
        (= 1 (length-of (seg A C)))
        (= (+ 1 r) (length-of (seg A D)))
        (tangent m (circle (midpoint-of B D) (/ (length-of (seg B D)) 2)) R)
        (= m (half-line A R))
        (on E m)
        (on F m)
        (on G m)
        (= (- 1 r) (length-of (seg A E)))
        (= 1 (length-of (seg A F)))
        (= (+ 1 r) (length-of (seg A G)))
        (on E C1)
        (on F C1)
        (tangent l C1 P)
        (on F C2)
        (on G C2)
        (tangent l C2 Q)
      )
      (= (length-of (seg P Q)) (length-of (seg C F)))))))

