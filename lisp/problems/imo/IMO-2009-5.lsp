;; DOMAIN:    Algebra, functional equations
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 2009, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-10-31
;;
;; <PROBLEM-TEXT>
;; Determine all functions f from the set of positive integers to the set of
;; positive integers such that, for all positive integers a and b, there
;; exists a non-degenerate triangle with sides of lengths
;; a, f(b) and f(b + f(a) - 1).
;; (A triangle is non-degenerate if its vertices are not collinear.)
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Find (f)
      (&& (forall (n) (-> (<= n 0) (= (LamApp f n) 0)))
          (forall (n) (-> (< 0 n) (< 0 (LamApp f n))))
          (forall (a b)
                (-> (&& (< 0 a)
                        (< 0 b))
                    (&& (< a
                           (+ (LamApp f b)
                              (LamApp f (+ b (LamApp f a) -1))))
                        (< (LamApp f b)
                           (+ (LamApp f (+ b (LamApp f a) -1))
                              a))
                        (< (LamApp f (+ b (LamApp f a) -1))
                           (+ a (LamApp f b)))))))))

(def-answer p (PLam f (forall (x) (&& (-> (> x 0)  (= (LamApp f x) x))
                                      (-> (<= x 0) (= (LamApp f x) 0))))))

