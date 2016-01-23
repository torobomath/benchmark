;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 2001, Problem 6
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-21
;;
;; <PROBLEM-TEXT>
;; Let a, b, c, d be integers with a > b > c > d > 0. Suppose that
;; ac + bd = (b + d + a - c)(b + d - a + c).
;; Prove that ab + cd is not prime.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Show (forall (a b c d)
                (-> (&& (> a b)
                        (> b c)
                        (> c d)
                        (> d 0)
                        (= (+ (* a c) (* b d))
                           (* (+ b d a (- c))
                              (+ b d (- a) c))))
                    (! (is-prime (+ (* a b) (* c d))))))))

