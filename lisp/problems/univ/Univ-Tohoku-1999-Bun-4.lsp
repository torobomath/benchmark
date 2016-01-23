;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 1999, Humanities Course, Problem 4
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-10
;;
;; <PROBLEM-TEXT>
;; Let $p$ be a real number other than $0$, and consider the quadratic
;; equation $x^2 - p x + 5 p = 0$.
;;
;; (1) Assume that the solutions ${\alpha}$ and ${\beta}$ of
;; $x^2 - p x + 5 p = 0$ satisfies ${\alpha}^5 + {\beta}^5 = p^5$. Find
;; the value of $p$.
;;
;; (2) Assume that $x^2 - p x + 5 p = 0$ has imaginary solutions, and
;; the fifth power of the solutions are real numbers. Find the value of
;; $p$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1_c
  (Find (p)
    (exists (a b pc)
      (&&
        (! (= 0 p))
        (= pc (real->complex p))
        (= pc (+ a b))
        (= (* (complex 5 0) pc) (* a b))
        (= (^ pc 5) (+ (^ a 5) (^ b 5)))
    )
  )))

(def-directive
  p1_c2
  (Find (p)
    (exists (a b)
     (&&
      (! (= 0 p))
      (are-solutions-of (list-of a b)
                        (quad-equation (.* 5 p) (.- p) 1))
      (= (^ (complex p 0) 5) (+ (^ a 5) (^ b 5)))))))

(def-directive
  p2
  (Find (p)
    (exists (c)
     (&&
      (! (= 0 p))
      (is-solution-of c (quad-equation (.* 5 p) (.- p) 1))
      (! (real-number c))
      (real-number (^ c 5))))))

(namespace default)

(def-answer p1_c (PLam p (= p 5)))

(def-answer p1_c2 (PLam p (= p 5)))

(def-answer p2 (PLam p (||
  (= p (/ (+ 15 (* 5 (sqrt 5))) 2))
  (= p (/ (- 15 (* 5 (sqrt 5))) 2)))))

