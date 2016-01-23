;; DOMAIN:    Number Theory, misc
;; THEORY:    PA(comb)
;; SOURCE:    International Mathematical Olympiad, 2002, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-04
;;
;; <PROBLEM-TEXT>
;; The positive divisors of the integer n > 1 are d1 < d2 < ... < d_k, so that
;; d1 = 1, d_k = n. Let d = d1 d2 + d2 d3 + ... + d_{k-1} d_k. Show that
;; d < n^2 and find all n for which d divides n^2.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p1
  (Show
   (forall (n d D)
     (-> (&& (< 1 n)
               (forall (x)
                       (<-> (member x d)
                            (&& (is-divisible-by n x)
                                (< 0 x))))
               (forall (l)
                       (-> (&& (<= 0 l)
                               (<= l (- (list-len d) 2)))
                           (< (nth l d) (nth (+ l 1) d))))
               (= D (sum (zip-with (Lam a (Lam b (* a b)))
                                   d
                                   (cdr d)))))
           (< D (^ n 2))))))

(def-directive p2
  (Find (n)
   (exists (d D)
      (&& (< 1 n)
          (forall (x)
                  (<-> (member x d)
                       (&& (is-divisible-by n x)
                           (< 0 x))))
          (forall (l)
                  (-> (&& (<= 0 l)
                          (<= l (- (list-len d) 2)))
                      (< (nth l d) (nth (+ l 1) d))))
          (= D (sum (zip-with (Lam a (Lam b (* a b)))
                              d
                              (cdr d))))
          (is-divisible-by (^ n 2) D)))))

(def-answer p2 (PLam n (is-prime n)))

