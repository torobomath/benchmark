;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1994, Problem 3
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-14
;;
;; <PROBLEM-TEXT>
;; For any positive integer $k$, let $f(k)$ be the number of elements in the set
;; $¥{k + 1, k + 2, ¥ldots, 2k¥}$ whose base $2$ representation has precisely three
;; $1$s.
;; ¥begin{flushleft}
;; (a) Prove that, for each positive integer $m$, there exists at least one positive
;; integer $k$ such that $f(k) = m$.¥¥
;; (b) Determine all positive integers m for which there exists exactly one $k$ with
;; $f(k) = m$.
;; ¥end{flushleft}
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p1
  (Show
   (forall (m f)
     (-> (&& (= f (Lam k (cardinality-of
                             (set-by-def (PLam x (&& (< k x)
                                                     (<= x (* 2 k))
                                                     (exists (n1 n2 n3)
                                                             (&& (<= 0 n1)
                                                                 (< n1 n2)
                                                                 (< n2 n3)
                                                                 (= x (+ (^ 2 n1)
                                                                         (^ 2 n2)
                                                                         (^ 2 n3)))))))))))
               (int.> m 0))
         (exists (k)
           (&& (> k 0)
                   (= (LamApp f k) m)))))))

(def-directive p2
  (Find (m)
    (&& (< 0 m)
        (forall (f)
         (-> (= f (Lam k (cardinality-of
                             (set-by-def (PLam x (&& (< k x)
                                                     (<= x (* 2 k))
                                                     (exists (n1 n2 n3)
                                                             (&& (<= 0 n1)
                                                                 (< n1 n2)
                                                                 (< n2 n3)
                                                                 (= x (+ (^ 2 n1)
                                                                         (^ 2 n2)
                                                                         (^ 2 n3)))))))))))
               (exists (k)
                       (&& (> k 0)
                           (= (LamApp f k) m)
                           (forall (kk)
                             (-> (&& (> kk 0)
                                     (= (LamApp f kk) m))
                                 (= k kk))))))))))

(def-answer p2
  (PLam m (exists (n) (&& (<= 1 n)
                          (= m (+ (div (* n (- n 1)) 2) 1))))))

