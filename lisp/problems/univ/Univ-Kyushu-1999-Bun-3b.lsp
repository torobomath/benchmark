;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 1999, Humanities Course, Problem 3b
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-20
;;
;; <PROBLEM-TEXT>
;; Assume that the real numbers $a$ and $b$ satisfy $0 < a < b$. Find
;; the magnitude relation of the following three numbers:
;; $\frac{a+2 b}{3}$, $\sqrt{a b}$, and
;; $\sqrt[3]{\frac{b(a^2 + a b + b^2)}{3}}$.
;; </PROBLEM-TEXT>

(def-directive
  p12l
  (Show
    (! (forall (a b)
      (->
        (&&
          (< 0 a)
          (< a b)
        )
        (<
          (/ (+ a (* 2 b)) 3)
          (sqrt (* a b))
        )
      )
    ))
  )
)

(def-directive
  p13g
  (Show
    (! (forall (a b)
      (->
        (&&
          (< 0 a)
          (< a b)
        )
        (>
          (/ (+ a (* 2 b)) 3)
          (^ (/ (* b (+ (^ a 2) (* a b) (^ b 2))) 3) (/ 1 3))
        )
      )
    ))
  )
)

(def-directive
  p23g
  (Show
    (! (forall (a b)
      (->
        (&&
          (< 0 a)
          (< a b)
        )
        (>
          (sqrt (* a b))
          (^ (/ (* b (+ (^ a 2) (* a b) (^ b 2))) 3) (/ 1 3))
        )
      )
    ))
  )
)

