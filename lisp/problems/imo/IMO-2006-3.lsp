;; DOMAIN:    Algebra, inequalities
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2006, Problem 3
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-22
;;
;; <PROBLEM-TEXT>
;; Determine the least real number M such that the inequality
;; | ab(a^2-b^2) + bc(b^2-c^2) + ca(c^2-a^2) | <= M(a^2+b^2+c^2)^2
;; holds for all real numbers a, b and c.
;; </PROBLEM-TEXT>

(def-directive p
   (Find (minM)
         (minimum
           (set-by-def (PLam M
                             (forall (a b c)
                                     (<= (abs (+ (* a b (- (^ a 2) (^ b 2)))
                                                 (* b c (- (^ b 2) (^ c 2)))
                                                 (* a c (- (^ c 2) (^ a 2)))))
                                         (* M (^ (+ (^ a 2) (^ b 2) (^ c 2)) 2))))))
           minM)))

(def-answer p (PLam minM (= minM (* (/ 9 32) (sqrt 2)))))

