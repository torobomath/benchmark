;; DOMAIN:    Quadratic Functions
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2013, Humanities Course, Problem 1
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2015-01-08
;;
;; <PROBLEM-TEXT>
;; Let $a$ be a real number. Answer the following questions:
;;
;; (1) Find the range of the value of $a$ such that the quadratic
;; equation $x^2 - 2(a + 1)x + 3 a = 0$ has two different real solutions
;; in the range of $- 1\le x\le 3$.
;;
;; (2) When $a$ moves in the range found in (1), find the range of the
;; values of the $y$ coordinate of the vertex of the parabola
;; $y = x^2 - 2(a + 1)x + 3 a$.
;; </PROBLEM-TEXT>

(def-directive
    p1
    (Find (a)
        (let ((f (poly-fun (list-of (* 3 a) (- (* 2 (+ a 1))) 1))))
      (exists (x1 x2)
        (&&
            (<= (- 1) x1)
            (<= x1 3)
            (<= (- 1) x2)
            (<= x2 3)
            (! (= x1 x2))
            (= 0 (funapp f x1))
            (= 0 (funapp f x2))
          )
      ))))

(def-directive
    p2
    (Find (y)
      (exists (a)
        (let ((f (poly-fun (list-of (* 3 a) (- (* 2 (+ a 1))) 1))))
      (exists (x1 x2)
        (&&
            (<= (- 1) x1)
            (<= x1 3)
            (<= (- 1) x2)
            (<= x2 3)
            (! (= x1 x2))
            (= 0 (funapp f x1))
            (= 0 (funapp f x2))
            (exists (x) (func-extreme f x y))
          )
      )))))

(def-answer p1 (PLam a (&& (<= (/ -3 5) a) (<= a 1))))

(def-answer p2 (PLam y (&& (<= (/ -49 25) y) (<= y (/ -3 4)))))

