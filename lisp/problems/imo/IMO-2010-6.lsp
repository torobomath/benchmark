;; DOMAIN:    Algebra, number sequences
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 2010, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-21
;;
;; <PROBLEM-TEXT>
;; Let a1, a2, a3, ... be a sequence of positive real numbers.
;; Suppose that for some positive integer s, we have
;; a_n = max{a_k + a_{n-k} | 1 <= k <= n - 1}
;; for all n > s. Prove that there exist positive integers l and N, with l <= s
;; and such that a_n = a_l + a_{n-l} for all n >= N.
;; </PROBLEM-TEXT>

(namespace seq)

(def-directive p
  (Show
   (forall (a s)
     (-> (&& (is-sequence a)
             (forall (n) (-> (int.<= 1 n) (< 0 (nth-term-of a (index n)))))
             (forall (n)
                (-> (int.> n s)
                    (maximum
                      (set-by-def (PLam v
                                        (exists (k)
                                                (&& (int.<= 1 k)
                                                    (int.<= k (int.- n 1))
                                                    (= v (+ (nth-term-of a (index k))
                                                            (nth-term-of a (index (int.- n k)))))))))
                      (nth-term-of a (index n))))))
         (exists (l N)
            (&& (int.<= 1 l)
                (int.<= 1 N)
                (int.<= l s)
                (forall (n)
                        (-> (int.>= n N)
                            (= (nth-term-of a (index n))
                               (+ (nth-term-of a (index l))
                                  (nth-term-of a (index (int.- n l)))))))))))))

