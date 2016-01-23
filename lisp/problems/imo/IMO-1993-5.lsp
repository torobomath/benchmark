;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1993, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-10
;;
;; <PROBLEM-TEXT>
;; Does there exist a function $f : ¥mathbf{N} ¥rightarrow ¥mathbf{N}$ such that
;; $f(1) = 2$, $f(f(n)) = f(n) + n$ for all $n¥in ¥mathbf{N}$, and $f(n) < f(n + 1)$
;; for all $n ¥in ¥mathbf{N}$?
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Show (exists (f)
        (&& (= (LamApp f 1) 2)
            (forall (n)
                    (-> (is-natural-number n)
                        (&& (is-natural-number (LamApp f n))
                            (= (LamApp f (LamApp f n))
                               (+ (LamApp f n) n))
                            (< (LamApp f n)
                               (LamApp f (+ n 1))))))))))

