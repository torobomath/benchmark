;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2001, Science Course, Problem 3
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-28
;;
;; <PROBLEM-TEXT>
;; In a space, consider a cylinder and a square prism such as follows:
;; The center axis of the cylinder is the $x$ axis, and the cross
;; section of the cylinder by the plane perpendicular to the center axis
;; is a circle with a radius of $r$. The center axis of the square prism
;; is the $z$ axis, the cross section of the square prism by the $x y$
;; plane is a square with the side length of $\frac{2\sqrt{2}}{r}$, and
;; the diagonals of the square are the $x$ and $y$ axes. Define
;; $0 < r\le\sqrt{2}$, and let $K$ be the intersection of the cylinder
;; and the square prism.
;;
;; (1) Find the area of the intersection of $K$ and the plane with a
;; height of $z = t$ ( $- r\le t\le r$) and parallel to the $x y$ plane.
;;
;; (2) Find the volume $V(r)$ of $K$.
;;
;; (3) Find the maximum value of $V(r)$ when $0 < r\le\sqrt{2}$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (area)
  (exists (C K D)
    (&&
      (< 0 r)
      (<= r (sqrt 2))
      (<= (- r) t)
      (<= t r)
      (= C (shape-of-cpfun (PLam P (<= (+ (^ (y-coord P) 2) (^ (z-coord P) 2)) (^ r 2)))))
      (= D (shape-of-cpfun (PLam P (<= (+ (abs (x-coord P)) (abs (y-coord P))) (/ 2 r)))))
      (= K (intersection C D))
      (= area (area-of (intersection (shape-of-cpfun (PLam P (= (z-coord P) t))) K)))))))

(def-directive
  p2
  (Find (V)
  (exists (C K D)
    (&&
      (< 0 r)
      (<= r (sqrt 2))
      (= C (shape-of-cpfun (PLam P (<= (+ (^ (y-coord P) 2) (^ (z-coord P) 2)) (^ r 2)))))
      (= D (shape-of-cpfun (PLam P (<= (+ (abs (x-coord P)) (abs (y-coord P))) (/ 2 r)))))
      (= K (intersection C D))
      (= V (volume-of K))))))

(def-directive
  p3
  (Find (maxV)
  (maximum (set-by-def (PLam V
           (exists (C K D r)
             (&&
               (< 0 r)
               (<= r (sqrt 2))
               (= C (shape-of-cpfun (PLam P (<= (+ (^ (y-coord P) 2) (^ (z-coord P) 2)) (^ r 2)))))
               (= D (shape-of-cpfun (PLam P (<= (+ (abs (x-coord P)) (abs (y-coord P))) (/ 2 r)))))
               (= K (intersection C D))
               (= V (volume-of K)))))) maxV)))

(def-answer p1 (PLam area (&& (= area (+ (* (/ 8 r) (sqrt (- (^ r 2) (^ t 2)))) (* 2 (^ t 2)) (* -2 (^ r 2))))
                              (< 0 r)
                              (<= r (sqrt 2)))))

(def-answer p2 (PLam V (&& (= V (- (* 4 (Pi) r) (* (/ 8 3) (^ r 3))))
                           (< 0 r)
                           (<= r (sqrt 2)))))

(def-answer p3 (PLam maxV (= maxV (* (/ (* 4 (sqrt 2)) 3) (Pi) (sqrt (Pi))))))

