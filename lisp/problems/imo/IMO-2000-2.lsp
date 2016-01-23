;; DOMAIN:    Algebra, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2000, Problem 2
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-11-13
;;
;; <PROBLEM-TEXT>
;; A, B, C are positive reals with product 1. Prove that
;; (A - 1 + 1/B)(B - 1 + 1/C)(C - 1 + 1/A) <= 1.
;; </PROBLEM-TEXT>

(def-directive p
  (Show (forall (A B C)
    (-> (&& (= 1 (* A B C))
                (< 0 A)
                (< 0 B)
                (< 0 C))
            (<= (* (+ (- A 1) (/ 1 B))
                   (+ (- B 1) (/ 1 C))
                   (+ (- C 1) (/ 1 A)))
                1)))))

