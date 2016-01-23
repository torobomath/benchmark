;; DOMAIN:    Combinatorics, finite sets
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1994, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-12
;;
;; <PROBLEM-TEXT>
;; Show that there exists a set $A$ of positive integers with the following property:
;; For any in finite set $S$ of primes there exist two positive integers $m ¥in A$
;; and $n ¥in A$ each of which is a product of $k$ distinct elements of $S$ for some
;; $k ¥ge 2$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
   (exists (A)
     (&& (forall (e)
           (-> (elem e A) (> e 0)))
         (exists (k p q m n)
           (&& (is-prime p) (is-prime q)
         (! (= p q))
         (elem m A)
         (! (elem n A))
         (= m (* k p))
         (= n (* k q))
         )
           )
         )
     )
  )
)

