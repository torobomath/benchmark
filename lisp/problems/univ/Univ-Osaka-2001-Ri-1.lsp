;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2001, Science Course, Problem 1
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-14
;;
;; <PROBLEM-TEXT>
;; For the complex numbers $z = x + y i$ and $w = u + v i$ ( $x$, $y$,
;; $u$, and $v$ are real numbers, and $i =\sqrt{-1}$ is the imaginary
;; unit), assume that $z\gg w$ represent that both $x\ge u$ and $y\ge v$
;; are true.
;;
;; (1) Find the range of the complex number $z$ that satisfies the
;; conditions $z^2\gg 3$ and $\overline{z}\gg -\frac{5}{\overline{z}}$,
;; and draw the range on the complex plane, where $\overline{z}$ is a
;; complex number conjugate to $z$.
;;
;; (2) Assuming that $z$ moves in the range found in (1), find the
;; minimum value of the absolute value $|z - 3 i|$ and the value of $z$
;; that gives the minimum value.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1
  (Draw (D)
  (exists (f)
    (= D (2d.set-of-cfun (Lam x (PLam y (exists (z) (&&
      (= (complex->point z) (2d.point x y))
      (= f (Lam z (PLam w (&&
          (>= (real-part z) (real-part w))
          (>= (imaginary-part z) (imaginary-part w))))))
      (PLamApp (LamApp f (^ z 2)) (real->complex 3))
      (PLamApp (LamApp f (conjugate z)) (/ (real->complex -5) (conjugate z)))
     )))))))))

(def-answer p1 (2d.set-of-cfun (Lam x (PLam y (&&
  (.<= 0 x)
  (.<= 3 (.- (.^ x 2) (.^ y 2)))
  (|| (= y 0)
    (&& (.< 0 y)
      (.<= (.+ (.^ x 2) (.^ y 2)) 5)
    )
  )
)))))

(def-directive
  p2_z
  (Find (minz)
  (exists (f minI)
    (&&
      (= f (Lam z (PLam w (&&
          (>= (real-part z) (real-part w))
          (>= (imaginary-part z) (imaginary-part w))))))
      (minimum (set-by-def (PLam I (exists (z)
                   (&&
               (PLamApp (LamApp f (^ z 2)) (real->complex 3))
               (PLamApp (LamApp f (conjugate z)) (/ (real->complex -5) (conjugate z)))
               (= I (abs (- z (* (real->complex 3) (i))))))))) minI)
      (PLamApp (LamApp f (^ minz 2)) (real->complex 3))
      (PLamApp (LamApp f (conjugate minz)) (/ (real->complex -5) (conjugate minz)))
      (= minI (abs (- minz (* (real->complex 3) (i)))))))))

(def-answer p2_z (PLam minz (= minz (complex 2 1))))

(def-directive
  p2_I
  (Find (minI)
  (exists (f minz)
    (&&
      (= f (Lam z (PLam w (&&
          (>= (real-part z) (real-part w))
          (>= (imaginary-part z) (imaginary-part w))))))
      (minimum (set-by-def (PLam I (exists (z)
                   (&&
               (PLamApp (LamApp f (^ z 2)) (real->complex 3))
               (PLamApp (LamApp f (conjugate z)) (/ (real->complex -5) (conjugate z)))
               (= I (abs (- z (* (real->complex 3) (i))))))))) minI)
      (PLamApp (LamApp f (^ minz 2)) (real->complex 3))
      (PLamApp (LamApp f (conjugate minz)) (/ (real->complex -5) (conjugate minz)))
      (= minI (abs (- minz (* (real->complex 3) (i)))))))))

(def-answer p2_I (PLam minI (= minI (.* 2 (sqrt 2)))))

