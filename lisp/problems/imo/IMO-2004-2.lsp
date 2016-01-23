;; DOMAIN:    Algebra, misc
;; THEORY:    RCF+PA
;; SOURCE:    International Mathematical Olympiad, 2004, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-31
;;
;; <PROBLEM-TEXT>
;; Find all polynomials f with real coeffcients such that for all
;; reals a,b,c such that ab + bc + ca = 0 we have the following relations
;; f (a - b) + f (b - c) + f (c - a) = 2f (a + b + c).
;; </PROBLEM-TEXT>

(def-directive p
  (Find (P)
        (&& (exists (as) (= P (poly-fun as)))
            (forall (a b c)
                    (-> (= (+ (* a b) (* b c) (* c a)) 0)
                        (= (+ (funapp P (- a b))
                              (funapp P (- b c))
                              (funapp P (- c a)))
                           (* 2 (funapp P (+ a b c)))))))))

(def-answer p (PLam P (exists (a b)
                              (= P (poly-fun (list-of a 0 b))))))

