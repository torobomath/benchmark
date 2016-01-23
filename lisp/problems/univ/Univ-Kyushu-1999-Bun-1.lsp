;; DOMAIN:    Quadratic Functions
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 1999, Humanities Course, Problem 1
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-20
;;
;; <PROBLEM-TEXT>
;; Let $k$ be a real number, and define
;; $f(x)= x^2 - 2 k x +\frac{1}{5}(2 k - 1)(4 k - 3)$. When the equation
;; $f(x)= 0$ has the real solutions ${\alpha}$ and ${\beta}$ (
;; ${\alpha}\le {\beta}$), answer the following questions.
;;
;; (1) Find the range of the value of $k$ such that ${\alpha}$ and
;; ${\beta}$ satisfy ${\alpha}\le 1\le {\beta}$.
;;
;; (2) In the case of (1), find the range of the possible minimum value
;; of $f(x)$.
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Find (k)
    (exists (a b f)
      (&&
        (= f (poly-fun (list-of (/ (* (- (* 2 k) 1) (- (* 4 k) 3)) 5) (- (* 2 k)) 1)))
        (= (funapp f a) 0)
        (= (funapp f b) 0)
        (<= a b)
        (<= a 1)
        (<= 1 b)
      )
    )
  )
)

(def-directive
  p2
  (Find (m)
    (exists (k)
      (minimum (set-by-def (PLam z
        (exists (x f)
          (&&
            (= f (poly-fun (list-of (/ (* (- (* 2 k) 1) (- (* 4 k) 3)) 5) (- (* 2 k)) 1)))
            (= z (funapp f x))
            (exists (a b f)
              (&&
                (= f (poly-fun (list-of (/ (* (- (* 2 k) 1) (- (* 4 k) 3)) 5) (- (* 2 k)) 1)))
                (= (funapp f a) 0)
                (= (funapp f b) 0)
                (<= a b)
                (<= a 1)
                (<= 1 b)
              )
            )
          )
        )
      )) m)
    )
  )
)

(def-answer p1 (PLam k (&& (<= (/ 1 2) k) (<= k 2))))

(def-answer p2 (PLam m (&& (<= (/ -16 15) m) (<= m (/ -1 4)))))

