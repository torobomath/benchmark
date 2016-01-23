;; DOMAIN:    Algebra, proofs of inequalities
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1978, Problem 5
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-26
;;
;; <PROBLEM-TEXT>
;; Let $\{a_k\}(k = 1, 2, 3, \ldots, n, \ldots)$ be a sequence of distinct positive
;; integers. Prove that for all natural numbers $n$,\[
;; \sum_{k=1}^{n} \frac{a_k}{k^2} \geq \sum_{k=1}^{n} \frac{1}{k}.
;; \]
;; </PROBLEM-TEXT>

(namespace seq)

(def-directive p
  (Show
    (forall (a n)
      (-> (&& (is-integer-seq a)
              (forall (k l)
                      (-> (&& (int.< 0 k)
                              (int.< k l))
                          (! (= (nth-term-of a (index k))
                                (nth-term-of a (index l))))))
              (forall (k) (< 0 (nth-term-of a (index k)))))
          (>= (sum-from-to (seq (Lam k (/ (nth-term-of a (index k))
                                          (^ (int->real k) 2))))
                           (index 1)
                           (index n))
              (sum-from-to (seq (Lam k (/ 1 (int->real k))))
                           (index 1)
                           (index n)))))))

