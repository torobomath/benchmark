;; DOMAIN:    Algebra, misc
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 2011, Problem 3
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-10-24
;;
;; <PROBLEM-TEXT>
;; Let f : R -> R be a real-valued function defined on the set of real numbers
;; that satisfies
;; f(x + y) <= yf(x) + f(f(x))
;; for all real numbers x and y. Prove that f(x) = 0 for all x <= 0.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Show (forall (f)
                (-> (forall (x y)
                            (<= (funapp f (+ x y))
                                (+ (* y (funapp f x))
                                   (funapp f (funapp f x)))))
                    (forall (x)
                            (-> (<= x 0)
                                (= (funapp f x) 0)))))))

