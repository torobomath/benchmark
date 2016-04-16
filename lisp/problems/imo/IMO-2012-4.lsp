;; DOMAIN:    Algebra, misc
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 2012, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-17
;;
;; <PROBLEM-TEXT>
;; Find all functions f : Z -> Z such that, for all integers a, b, c that
;; satisfy a + b + c = 0, the following equality holds:
;; f(a)^2 + f(b)^2 + f(c)^2 = 2 f(a) f(b) + 2 f(b) f(c) + 2 f(c) f(a).
;; (Here Z denotes the set of integers.)
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
   (Find (f)
     (forall (a b c)
       (-> (= (+ a b c) 1)
           (= (+ (^ (LamApp f a) 2)
                 (^ (LamApp f b) 2)
                 (^ (LamApp f c) 2))
              (+ (* 2 (LamApp f b) (LamApp f c))
                 (* 2 (LamApp f a) (LamApp f b))
                 (* 2 (LamApp f a) (LamApp f c))))))))

(def-answer p (PLam f
   (exists (k)
      (&& (! (= k 0))
          (|| (= f (Lam x 0))
              (= f (Lam x (if (= (mod x 2) 0)
                            0
                            k)))
              (= f (Lam x (if (= (mod x 4) 0)
                            0
                            (if (= (mod x 4) 1)
                              k
                              (if (= (mod x 4) 2)
                                (* 4 k)
                                k)))))
              (= f (Lam x (* k (^ x 2)))))))))

