;; DOMAIN:    Algebra, proofs of inequalities
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1983, Problem 6
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-18
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$ and c be the lengths of the sides of a triangle. Prove that
;; ¥[
;; a^2 b (a - b) + b^2 c (b - c) + c^2 a (c - a) ¥ge 0.
;; ¥]
;; Determine when equality occurs.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p1
  (Show
    (forall (A B C a b c)
      (-> (&& (is-triangle A B C)
              (= a (distance A B))
              (= b (distance B C))
              (= c (distance C A)))
          (<= 0 (+ (* (^ a 2) b (- a b))
                   (* (^ b 2) c (- b c))
                   (* (^ c 2) a (- c a))))))))

(def-directive p2
  (Find (abc)
    (exists (A B C a b c)
      (&& (= abc (list-of a b c))
          (is-triangle A B C)
          (= a (distance A B))
          (= b (distance B C))
          (= c (distance C A))
          (= 0 (+ (* (^ a 2) b (- a b))
                  (* (^ b 2) c (- b c))
                  (* (^ c 2) a (- c a))))))))

(def-answer p2
  (PLam abc (exists (a b c)
               (&& (= abc (list-of a b c))
                   (< 0 a)
                   (= a b)
                   (= b c)))))

