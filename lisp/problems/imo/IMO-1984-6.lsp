;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1984, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-20
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, $c$ and $d$ be odd integers such that $0 < a < b < c < d$ and
;; $ad = bc$. Prove that if $a + d = 2^k$ and $b + c = 2^m$ for some integers $k$ and
;; $m$, then $a = 1$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
   (forall (a b c d)
     (-> (&& (< 0 a)
               (< a b)
               (< b c)
               (< c d)
               (is-odd-number a)
               (is-odd-number b)
               (is-odd-number c)
               (is-odd-number d)
               (= (* a d) (* b c))
               (exists (m k)
                       (&& (is-integer m)
               (is-integer k)
               (= (+ a d) (^ 2 k))
                           (= (+ b c) (^ 2 m)))))
         (= a 1)))))

