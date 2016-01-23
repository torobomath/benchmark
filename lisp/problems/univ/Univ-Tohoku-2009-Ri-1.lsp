;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2009, Science Course, Problem 1
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, and $c$ be real numbers. Answer the following
;; questions:
;;
;; (1) When $a + b = c$, prove that $a^3 + b^3 + 3 a b c = c^3$.
;;
;; (2) When $a + b\ge c$, prove that $a^3 + b^3 + 3 a b c\ge c^3$.
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Show
   (forall (a b c)
     (->
      (= (+ a b) c)
      (= (+ (^ a 3) (^ b 3) (* 3 a b c)) (^ c 3))))))

(def-directive
  p2
  (Show
   (forall (a b c)
           (->
            (>= (+ a b) c)
      (>= (+ (^ a 3) (^ b 3) (* 3 a b c)) (^ c 3))))))

