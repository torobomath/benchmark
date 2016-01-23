;; DOMAIN:    Algebra, proofs of inequalities
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1995, Problem 2
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-10
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, $c$ be positive real numbers such that $abc = 1$. Prove that
;; ¥[
;; ¥frac{1}{a^3 (b+c)} + ¥frac{1}{b^3 (c+a)} + ¥frac{1}{c^3 (a+b)} ¥ge ¥frac{3}{2}.
;; ¥]
;; </PROBLEM-TEXT>

(def-directive
  p
  (Show (forall (a b c)
                (-> (&& (< 0 a)
                        (< 0 b)
                        (< 0 c)
                        (= (* a b c) 1))
                    (>= (+ (/ 1 (* (^ a 3) (+ b c)))
                           (/ 1 (* (^ b 3) (+ c a)))
                           (/ 1 (* (^ c 3) (+ a b))))
                        (/ 3 2))))))

