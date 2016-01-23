;; DOMAIN:    Matrices
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2009, Science Course, Problem 4
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-21
;;
;; <PROBLEM-TEXT>
;; Assume that the magnitudes of the second-order column vectors $X$,
;; $Y$, and $Z$ are all $1$, and define
;; $X =(\begin{matrix} 1\\ 0\end{matrix})$ and $Y\not= X$, where the
;; magnitude of a second-order column vector
;; $(\begin{matrix} x\\ y\end{matrix})$ is defined as $\sqrt{x^2+y^2}$
;; in general. Assume that the second-order square matrix $A$ satisfies
;; $A X = Y$, $A Y = Z$, and $A Z = X$. Answer the following questions:
;;
;; (1) Prove that $Y\not= - X$.
;;
;; (2) Prove that $Z$ is uniquely defined as $Z = s X + t Y$, where $s$
;; and $t$ are real numbers.
;;
;; (3) Prove that $X + Y + Z =(\begin{matrix} 0\\ 0\end{matrix})$.
;;
;; (4) Find the matrix $A$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show
    (forall (X Y Z A)
      (->
        (&&
    (= X (vec (point 1 0) (point 0 0)))
    (! (= Y X))
    (= (radius X) 1)
    (= (radius Y) 1)
    (= (radius Z) 1)
    (= (mv* A X) Y)
    (= (mv* A Y) Z)
    (= (mv* A Z) X))
        (! (= Y (sv* -1 X)))))))

(def-directive
  p2
  (Show
    (forall (X Y Z A)
      (->
        (&&
    (= X (vec (point 1 0) (point 0 0)))
    (! (= Y X))
    (= (radius X) 1)
    (= (radius Y) 1)
    (= (radius Z) 1)
    (= (mv* A X) Y)
    (= (mv* A Y) Z)
    (= (mv* A Z) X))
        (exists (s t)
          (&&
      (= Z (v+ (sv* s X) (sv* t Y)))
      (forall (u v)
        (->
          (= Z (v+ (sv* u X) (sv* v Y)))
          (&&
            (= u s)
            (= v t))))))))))

(def-directive
  p3
  (Show
    (forall (X Y Z A)
      (->
        (&&
    (= X (vec (point 1 0) (point 0 0)))
    (! (= Y X))
    (= (radius X) 1)
    (= (radius Y) 1)
    (= (radius Z) 1)
    (= (mv* A X) Y)
    (= (mv* A Y) Z)
    (= (mv* A Z) X))
        (= (zero-vector) (v+ X Y Z))))))

(def-directive
  p4
  (Find (Als)
  (exists (X Y Z A A11 A12 A21 A22)
    (&&
     (= A (matrix A11 A12 A21 A22))
     (= X (vec (point 1 0) (point 0 0)))
     (! (= Y X))
     (= (radius X) 1)
     (= (radius Y) 1)
     (= (radius Z) 1)
     (= (mv* A X) Y)
     (= (mv* A Y) Z)
     (= (mv* A Z) X)
     (= Als (list-of A11 A12 A21 A22))
     ))))

(def-answer p4 (PLam Als (|| (= Als (list-of
         (/ -1 2) (/ (sqrt 3) 2)
         (/ (- (sqrt 3)) 2) (/ -1 2)))
      (= Als (list-of
         (/ -1 2) (- (/ (sqrt 3) 2))
         (/ (sqrt 3) 2) (/ -1 2)))
)))

