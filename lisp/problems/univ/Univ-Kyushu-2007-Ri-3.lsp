;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2007, Science Course, Problem 3
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-14
;;
;; <PROBLEM-TEXT>
;; Let $a$ and $b$ be positive numbers, and consider the three points
;; $A(a, -a, b)$, $B(-a, a, b)$, and $C(a, a, -b)$ in a space. Let
;; ${\alpha}$ be the plane containing $A$, $B$, and $C$, and let
;; ${\alpha}$ be the spherical surface centered at the origin $O$ and
;; containing $A$, $B$, and $C$. Answer the following questions:
;;
;; (1) Let $D$ be the middle point of the line segment $AB$, then prove
;; that $\vec{DC}\bot\vec{AB}$ and $\vec{DO}\bot\vec{AB}$, and fine the
;; area of $\triangle ABC$.
;;
;; (2) Let ${\theta}$ be the angle formed by the vectors $\vec{DC}$ and
;; $\vec{DO}$, then find $\sin {\theta}$. Let $H$ be the intersection of
;; the plane ${\alpha}$ and the straight line perpendicular to the plane
;; ${\alpha}$ and passing through the origin $O$, find the length of the
;; line segment $OH$.
;;
;; (3) When the point $P$ moves on the spherical surface $S$, find the
;; maximum volume of the tetrahedron $ABCP$, where $P$ is not on the
;; ${\alpha}$ plane.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  a1_1
  (Show
    (forall (a b)
      (-> (&& (< 0 a) (< 0 b))
    (exists (A B C D alpha S r)
      (&&
        (= A (point a (- a) b))
        (= B (point (- a) a b))
        (= C (point a a (- b)))
        (plane-type alpha)
        (on A alpha)
        (on B alpha)
        (on C alpha)
        (= S (sphere (origin) r))
        (on A S)
        (on B S)
        (on C S)
        (= D (midpoint-of A B))
        (= (inner-prod (vec D C) (vec A B)) 0)
        (= (inner-prod (vec D (origin)) (vec A B)) 0)))))))

(def-directive
  a1_2
  (Find (ABC)
  (exists (A B C)
    (&&
      (< 0 a)
      (< 0 b)
      (= A (point a (- a) b))
      (= B (point (- a) a b))
      (= C (point a a (- b)))
      (= ABC (area-of (triangle A B C)))))))

(def-directive
  a2
  (Find (ans)
  (exists (A B C D alpha S r H sintheta OH)
    (&&
      (< 0 a)
      (< 0 b)
      (= ans (list-of sintheta OH))
      (= A (point a (- a) b))
      (= B (point (- a) a b))
      (= C (point a a (- b)))
      (plane-type alpha)
      (on A alpha)
      (on B alpha)
      (on C alpha)
      (= S (sphere (origin) r))
      (on A S)
      (on B S)
      (on C S)
      (= D (midpoint-of A B))
      (= sintheta (sin-of-angle (angle-of-vectors (vec D C) (vec D (origin)))))
      (perpendicular (line (origin) H) alpha)
      (! (= (origin) H))
      (on H alpha)
      (= OH (length-of (seg (origin) H)))))))

(def-directive
  a3
  (Find (maxV)
  (exists (A B C alpha S r)
    (&&
      (< 0 a)
      (< 0 b)
      (= A (point a (- a) b))
      (= B (point (- a) a b))
      (= C (point a a (- b)))
      (plane-type alpha)
      (on A alpha)
      (on B alpha)
      (on C alpha)
      (= S (sphere (origin) r))
      (on A S)
      (on B S)
      (on C S)
      (maximum (set-by-def (PLam V (exists (P)
                   (&&
               (on P S)
               (! (on P alpha))
               (= V (volume-of (tetrahedron A B C P))))))) maxV)))))

(def-answer a1_1 (PLam _ (true)))

(def-answer a1_2 (PLam ABC (&& (> a 0) (> b 0)
             (= ABC (* 2 a (sqrt (+ (^ a 2) (* 2 (^ b 2)))))))))

(def-answer a2 (PLam ans (&&
    (> a 0) (> b 0)
    (= ans (list-of (/ a (sqrt (+ (^ a 2) (* 2 (^ b 2))))) (/ (* a b) (sqrt (+ (^ a 2) (* 2 (^ b 2)))))))
)))

(def-answer a3 (PLam maxV (&&
    (> a 0) (> b 0)
    (= maxV (* (/ 2 3) a (+ (sqrt (* (+ (^ a 2) (* 2 (^ b 2))) (+ (* 2 (^ a 2)) (^ b 2)))) (* a b))))
)))

