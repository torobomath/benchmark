;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2007, Humanities Course, Problem 2
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-04-11
;;
;; <PROBLEM-TEXT>
;; Let $t$ be a number that satisfies $0\le t\le 1$, and consider the
;; $4$ points $A(t, 0, 1)$, $B(1, t, 0)$, $C(0, 1, t)$, and
;; $P(\frac{4}{9} t, \frac{4}{9} t, \frac{4}{9} t)$ in a space. Answer
;; the following questions:
;;
;; (1) Prove that $\triangle ABC$ is an equilateral triangle, and find
;; the area $S(t)$ of the triangle.
;;
;; (2) Let $G$ be the centroid of $\triangle ABC$. Prove that $\vec{PG}$
;; is perpendicular to both $\vec{AB}$ and $\vec{AC}$.
;;
;; (3) Find the volume of the tetrahedron $PABC$. Find the minimum
;; values of $t$ and the value of $t$ that give the value.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Show
    (forall (t A B C P)
      (->
        (&&
          (<= 0 t)
          (<= t 1)
          (= A (point t 0 1))
          (= B (point 1 t 0))
          (= C (point 0 1 t))
          (= P (point (* (/ 4 9) t) (* (/ 4 9) t) (* (/ 4 9) t)))
        )
        (is-equilateral-triangle A B C)
      )
    )
  )
)

(def-directive
  p1s
  (Find (S)
    (exists (A B C P)
      (&&
        (<= 0 t)
        (<= t 1)
        (= A (point t 0 1))
        (= B (point 1 t 0))
        (= C (point 0 1 t))
        (= P (point (* (/ 4 9) t) (* (/ 4 9) t) (* (/ 4 9) t)))
        (= S (area-of (triangle A B C)))
      )
    )
  )
)

(def-directive
  p2
  (Show
    (forall (t A B C P G)
      (->
  (&&
    (<= 0 t)
    (<= t 1)
    (= A (point t 0 1))
    (= B (point 1 t 0))
    (= C (point 0 1 t))
    (= P (point (* (/ 4 9) t) (* (/ 4 9) t) (* (/ 4 9) t)))
    (= G (centroid-of (triangle A B C)))
  )
  (&&
          (= (inner-prod (vec P G) (vec A B)) 0)
    (= (inner-prod (vec P G) (vec A C)) 0)
  )
      )
    )
  )
)

(def-directive
  p3V
  (Find (V)
    (exists (A B C P)
      (&&
  (<= 0 t)
  (<= t 1)
  (= A (point t 0 1))
  (= B (point 1 t 0))
  (= C (point 0 1 t))
  (= P (point (* (/ 4 9) t) (* (/ 4 9) t) (* (/ 4 9) t)))
  (= V (volume-of (tetrahedron P A B C)))
      )
    )
  )
)

(def-directive
  p3mint
  (Find (mint)
    (exists (minA minB minC minP minV)
      (&&
  (<= 0 mint)
  (<= mint 1)
  (= minA (point mint 0 1))
  (= minB (point 1 mint 0))
  (= minC (point 0 1 mint))
  (= minP (point (* (/ 4 9) mint) (* (/ 4 9) mint) (* (/ 4 9) mint)))
  (= minV (volume-of (tetrahedron minP minA minB minC)))
  (minimum (set-by-def (PLam V
             (exists (t A B C P)
         (&&
           (<= 0 t)
           (<= t 1)
           (= A (point t 0 1))
           (= B (point 1 t 0))
           (= C (point 0 1 t))
           (= P (point (* (/ 4 9) t) (* (/ 4 9) t) (* (/ 4 9) t)))
           (= V (volume-of (tetrahedron P A B C)))
         )
             ))) minV)
      )
    )
  )
)

(def-directive
  p3minV
  (Find (minV)
    (exists (minA minB minC minP mint)
      (&&
  (<= 0 mint)
  (<= mint 1)
  (= minA (point mint 0 1))
  (= minB (point 1 mint 0))
  (= minC (point 0 1 mint))
  (= minP (point (* (/ 4 9) mint) (* (/ 4 9) mint) (* (/ 4 9) mint)))
  (= minV (volume-of (tetrahedron minP minA minB minC)))
  (minimum (set-by-def (PLam V
             (exists (t A B C P)
         (&&
           (<= 0 t)
           (<= t 1)
           (= A (point t 0 1))
           (= B (point 1 t 0))
           (= C (point 0 1 t))
           (= P (point (* (/ 4 9) t) (* (/ 4 9) t) (* (/ 4 9) t)))
           (= V (volume-of (tetrahedron P A B C)))
         )
             ))) minV)
      )
    )
  )
)

(def-answer p1s (PLam S (&& (<= 0 t) (<= t 1)
          (= S (* (/ (sqrt 3) 2) (+ (^ t 2) (- t) 1))))))

(def-answer p3V (PLam V (&& (<= 0 t) (<= t 1)
          (= V (/ (+ (- (^ t 3)) (* 4 (^ t 2)) (- (* 4 t)) 3) 18))
          )
))

(def-answer p3mint (PLam mint (= mint (/ 2 3))))

(def-answer p3minV (PLam minV (= minV (/ 49 486))))

