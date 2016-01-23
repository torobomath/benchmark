;; DOMAIN:    Number Theory, number theory
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1982, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-20
;;
;; <PROBLEM-TEXT>
;; Prove that if $n$ is a positive integer such that the equation
;; ¥[
;; x^3 -3xy^2 + y^3 = n
;; ¥]
;; has a solution in  integers $(x, y)$, then it has at least three such solutions.
;; Show that the equation has no solutions in integers when $n = 2891$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p1
  (Show
   (forall (n)
     (-> (&& (int.> n 0)
               (exists (x y)
                       (= (+ (- (^ x 3) (* 3 x (^ y 2))) (^ y 3)) n)))
         (exists (x1 y1 x2 y2 x3 y3)
           (&& (! (= (pair x1 y1) (pair x2 y2)))
                   (! (= (pair x1 y1) (pair x3 y3)))
                   (! (= (pair x2 y2) (pair x3 y3)))
                   (= (+ (- (^ x1 3) (* 3 x1 (^ y1 2))) (^ y1 3)) n)
                   (= (+ (- (^ x2 3) (* 3 x2 (^ y2 2))) (^ y2 3)) n)
                   (= (+ (- (^ x3 3) (* 3 x3 (^ y3 2))) (^ y3 3)) n)))))))

(def-directive p2
  (Show
    (forall (x y)
            (! (= (+ (- (^ x 3) (* 3 x (^ y 2))) (^ y 3)) 2891)))))

