;; DOMAIN:    Algebraic Curves
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1991, Science Course, Problem 2
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-15
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, and $c$ be positive real numbers. Consider the plate
;; $R$ consisting of the points $(x, y, z)$ that satisfy $|x|\le a$,
;; $|y|\le b$, and $z=c$ in the $xyz$ space. When the point light source
;; $P$ makes a circuit on the ellipse
;; $\frac{x^2}{a^2}+\frac{y^2}{b^2}=1$, $z=c+1$ on the plane $z=c+1$,
;; draw the figure formed by the locus of the shade of the plate $R$,
;; and find the area of the figure.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Find (S)
  (exists (R)
    (&&
     (<= 0 a)
     (<= 0 b)
     (<= 0 c)
     (= R (shape-of-cpfun (PLam p (&&
                 (<= (abs (x-coord p)) a)
                 (<= (abs (y-coord p)) b)
                 (= (z-coord p) c)))))
     (= S (area-of (shape-of-cpfun (PLam p (&&
              (on p (xy-plane))
              (exists (P PP)
                (&&
                 (= (+ (/ (^ (x-coord P) 2) (^ a 2)) (/ (^ (y-coord P) 2) (^ a 2))) 1)
                 (= (z-coord P) (+ c 1))
                 (on PP R)
                 (on PP (line P p)))))))))))))

(def-answer p (PLam S (= S (* (+ (* (+ (Pi) 12) (^ c 2)) (* 16 c) 4) a b))))

