;; DOMAIN:    Algebra, functional equations
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 2008, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-22
;;
;; <PROBLEM-TEXT>
;; Find all functions f : (0, infinity) -> (0, infinity) (so, f is a function
;; from the positive real numbers to the positive real numbers) such that
;; (f(w)^2 + f(x)^2) / (f(y^2) + f(z^2)) = (w^2 + x^2)/(y^2 + z^2)
;; for all positive real numbers w, x, y, z, satisfying wx = yz.
;; </PROBLEM-TEXT>

(def-directive p
  (Find (f)
        (&& (forall (x) (-> (<= x 0) (= (LamApp f x) 0)))
            (forall (x) (-> (< 0 x) (< 0 (LamApp f x))))
            (forall (w x y z)
                    (-> (&& (= (* w x) (* y z))
                            (> x 0) (> y 0) (> w 0) (> z 0))
                        (= (/ (+ (^ (LamApp f w) 2)
                                 (^ (LamApp f x) 2))
                              (+ (LamApp f (^ y 2))
                                 (LamApp f (^ z 2))))
                           (/ (+ (^ w 2) (^ x 2))
                              (+ (^ y 2) (^ z 2)))))))))

(def-answer p
   (PLam f (|| (= f (Lam x (if (< x 0) 0 x)))
               (= f (Lam x (if (< x 0) 0 (/ 1 x)))))))

