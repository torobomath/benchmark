;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1985, Humanities Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-17
;;
;; <PROBLEM-TEXT>
;; Let $t$ be a positive number. In the $x y z$ space, let $P$ be the
;; point $(t, t, 0)$, let $Q$ be the point symmetric to $P$ about the
;; plane containing the $x$ axis and the point $(t, t, 1)$, and let $R$
;; be the point symmetric to $P$ about the plane containing the $y$ axis
;; and the point $(t, t, 1)$. Let $O$ be the origin.
;;
;; (1) Find the coordinates of $Q$ and $R$.
;;
;; (2) Find the volume of the tetrahedron whose vertices are the points
;; $O$, $P$, $Q$, and $R$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (QR) (exists (P H K Q R Qx Qy Qz Rx Ry Rz) (&&
        (< 0 t)
        (= P (point t t 0))
        (plane-type H)
        (on (point t t 1) H)
        (inside-of (x-axis) H)
        (plane-symmetry P Q H)
        (plane-type K)
        (on (point t t 1) K)
        (inside-of (y-axis) K)
        (plane-symmetry P R K)
        (= Q (point Qx Qy Qz))
        (= R (point Rx Ry Rz))
        (= QR (list-of Qx Qy Qz Rx Ry Rz))
      ))))

(def-directive
  p2
  (Find (V)
        (exists (P H K Q R O)
          (&& (< 0 t)
        (= P (point t t 0))
        (plane-type H)
        (on (point t t 1) H)
        (inside-of (x-axis) H)
        (plane-symmetry P Q H)
        (plane-type K)
        (on (point t t 1) K)
        (inside-of (y-axis) K)
        (plane-symmetry P R K)
        (= O (origin))
        (= V (volume-of (tetrahedron O P Q R)))))))

(def-answer p1 (PLam QR (&&
  (< 0 t)
  (= QR (list-of
    t (/ (- (^ t 3) t) (+ (^ t 2) 1)) (/ (* 2 (^ t 2)) (+ (^ t 2) 1))
    (/ (- (^ t 3) t) (+ (^ t 2) 1)) t (/ (* 2 (^ t 2)) (+ (^ t 2) 1))
)))))

(def-answer p2 (PLam V (&&
  (< 0 t)
  (= V (/ (* 4 (^ t 4)) (* 3 (^ (+ (^ t 2) 1) 2)))))))

