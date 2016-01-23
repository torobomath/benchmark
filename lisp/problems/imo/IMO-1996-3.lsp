;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1996, Problem 3
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-06
;;
;; <PROBLEM-TEXT>
;; Let $S$ denote the set of nonnegative integers. Find all functions $f$ from $S$ to
;; itself such that
;; ¥[
;; ¥begin{array}{ll}
;; f(m + f(n)) = f(f(m))+ f(n) &¥forall m, n ¥in S.
;; ¥end{array}
;; ¥]
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (f)
    (&& (forall (k) (-> (< k 0) (= (LamApp f k) 0)))
        (forall (k) (-> (<= 0 k) (<= 0 (LamApp f k))))
        (forall (n m)
                (-> (&& (>= n 0)
                        (>= m 0))
                    (= (LamApp f (+ m (LamApp f n)))
                       (+ (LamApp f (LamApp f m)) (LamApp f n))))))))

(def-answer p (PLam f (|| (= f (Lam k 0))
                          (forall (k) (&& (-> (>= k 0) (= (LamApp f k) k))
                                          (-> (< k 0)  (= (LamApp f k) 0))))
                          (exists (ns e)
                                  (&& (>= e 2)
                                      (= (list-len ns) e)
                                      (forall (k) (-> (< k 0) (= (LamApp f k) 0)))
                                      (forall (k) (-> (>= k 0)
                                                      (= (LamApp f k)
                                                         (* e (+ (div k e)
                                                                 (nth (mod n e) ns)))))))))))

