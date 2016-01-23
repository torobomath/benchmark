;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2003, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-18
;;
;; <PROBLEM-TEXT>
;; For the real number $a$, define the sets $A$ and $B$ as
;; $A =\{x| x^2+(1 - a^2)x+a^3-2 a^2+a\le 0, x is a real number\}$ and
;; $B =\{x| x^2+(2 a - 7)x+a^2-7 a+10<0, x is a real number\}$. Find the
;; range of $a$ such that the intersection $A\cap B$ is not an empty
;; set.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (a)
        (exists (A B)
                (&& (= A (set-by-def (PLam x (<= (+ (^ x 2)
                                                    (* (- 1 (^ a 2)) x)
                                                    (^ a 3)
                                                    (- (* 2 (^ a 2)))
                                                    a)
                                                 0))))
                    (= B (set-by-def (PLam x (< (+ (^ x 2)
                                                   (* (- (* 2 a) 7) x)
                                                   (^ a 2)
                                                   (- (* 7 a))
                                                   10)
                                                0))))
                    (! (is-empty (set-intersection A B)))))))

(def-answer p (PLam a (|| (< a (- (sqrt 2))) (&& (< (sqrt 2) a) (< a 3)))))

