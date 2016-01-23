;; DOMAIN:    Algebra, number sequences
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1981, Problem 3
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23
;;
;; <PROBLEM-TEXT>
;; Determine the maximum value of $m^3+n^3$, where $m$ and $n$ are integers
;; satisfying $m$, $n¥in ¥{1, 2, ¥ldots, 1981¥}$ and $(n^2 - m n - m^2)^2 = 1$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (max)
    (maximum
      (set-by-def (PLam var (exists (m n)
                              (&& (<= 1 m) (<= m 1981)
                                  (<= 1 n) (<= n 1981)
                                  (= 1 (^ (- (- (^ n 2) (* m n)) (^ m 2)) 2))
                                  (= var (+ (^ m 3) (^ n 3)))))))
      max)))

(def-answer p (PLam max (= max (+ (^ 1597 3) (^ 987 3)))))

