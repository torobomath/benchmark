;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1978, Problem 3
;; SCORE:     8
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-24
;;
;; <PROBLEM-TEXT>
;; The set of all positive integers is the union of two disjoint subsets
;; $\{f(1), f(2), \ldots, f(n), \ldots\}$, $\{g(1), g(2), \ldots, g(n), \ldots\}$, where
;; \[               f(1) < f(2) < \cdots < f(n) < \cdots,   \]
;; \[               g(1) < g(2) < \cdots < g(n) < \cdots,   \]
;; and
;; \begin{center}   $g(n) = f(f(n)) + 1$ for all $n \geq 1$.   \end{center}
;; Determine $f(240)$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Find (f240)
    (exists (f g)
      (&&
        (forall (m n)
                (-> (&& (<= 1 m)
                        (<= 1 n))
                    (! (= (LamApp f m) (LamApp g n)))))
        (forall (n)
                (-> (<= 1 n)
                    (exists (m)
                            (|| (= (LamApp f m) n)
                                (= (LamApp g m) n)))))
        (forall (n) (-> (<= 1 n)
                        (< (LamApp f n) (LamApp f (+ n 1)))))
        (forall (n) (-> (<= 1 n)
                        (< (LamApp g n) (LamApp g (+ n 1)))))
        (forall (n) (-> (<= 1 n)
                        (= (LamApp g n) (+ (LamApp f (LamApp f n)) 1))))
        (forall (n) (-> (<= n 0)
                        (&& (= (LamApp f n) 0)
                            (= (LamApp g n) 0))))
        (= f240 (LamApp f 240))))))

(def-answer p (PLam f240 (= f240 388)))

