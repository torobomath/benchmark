;; DOMAIN:    Number Theory, modular arithmetic
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 2012, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-21
;;
;; <PROBLEM-TEXT>
;; Find all positive integers n for which there exist non-negative integers
;; a1, a2, ..., a_n
;; such that
;; 1/(2^a1) + 1/(2^a2) + ... + 1/(2^a_n)
;; = 1/(3^a1) + 2/(3^a2) + ... + n/(3^a_n) = 1.
;; </PROBLEM-TEXT>

(namespace rat)

(def-directive p
  (Find (n)
    (&& (int.< 0 n)
        (exists (a)
                (&& (= (list-len a) n)
                    (= (sum (map (Lam x (ratio 1 (int.^ 2 x))) a)) 1)
                    (= (sum (zip-with (Lam n (Lam x (ratio n (int.^ 3 x))))
                                      (int.iota 1 n)
                                      a))
                       1))))))

(def-answer p (PLam n (exists (m)
                        (|| (= n (int.+ (int.* 4 m) 1))
                            (= n (int.+ (int.* 4 m) 2))))))

