;; DOMAIN:    Combinatorics, enumerative combinatorics
;; THEORY:    PA(comb)
;; SOURCE:    International Mathematical Olympiad, 2002, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-04
;;
;; <PROBLEM-TEXT>
;; S is the set of all (h, k) with h, k non-negative integers such
;; that h + k < n. Each element of S is colored red or blue, so that if (h, k)
;; is red and h'<= h, k'<= k, then (h', k') is also red.
;; A type 1 subset of S has n blue elements with different first member
;; and a type 2 subset of S has n blue elements with different second member.
;; Show that there are the same number of type 1 and type 2 subsets.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
    (forall (n S B R X Y)
       (-> (&& (= S (set-by-def (PLam z (&& (is-lattice-point z)
                                            (>= (x-coord z) 0)
                                            (>= (y-coord z) 0)
                                            (< (+ (x-coord z) (y-coord z)) n)))))
               (is-subset-of R S)
               (forall (w z)
                       (-> (&& (elem z R)
                               (elem w S)
                               (<= (x-coord w) (x-coord z))
                               (<= (y-coord w) (y-coord z)))
                           (elem w R)))
               (= B (complement-of-in R S))
               (= X (set-by-def (PLam U (&& (is-subset-of U S)
                                            (.is-cardinality-of n (set-intersection B U))
                                            (forall (w v)
                                                    (-> (&& (elem w U)
                                                            (elem v U)
                                                            (! (= w v)))
                                                        (! (= (x-coord w) (x-coord v)))))))))
               (= Y (set-by-def (PLam U (&& (is-subset-of U B)
                                            (.is-cardinality-of n (set-intersection B U))
                                            (forall (w v)
                                                    (-> (&& (elem w U)
                                                            (elem v U)
                                                            (! (= w v)))
                                                        (! (= (y-coord w) (y-coord v))))))))))
           (= (.cardinality-of X)
              (.cardinality-of Y))))))

