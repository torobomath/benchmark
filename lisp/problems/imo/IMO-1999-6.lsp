;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1999, Problem 6
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; Determine all functions $f : ¥mathbf{R} ¥rightarrow ¥mathbf{R}$ such that
;; ¥[
;; f(x - f(y)) = f(f(y)) + xf(y) + f(x) - 1
;; ¥]
;; for all real numbers $x$, $y$.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (f)
        (forall (x y)
                (= (funapp f (- x (funapp f y)))
                   (+ (funapp f (funapp f y))
                      (* x (funapp f y))
                      (funapp f x)
                      -1)))))

(def-answer p (PLam f (= f (fun (Lam x (- 1 (/ (^ x 2) 2)))))))

