;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2001, Science Course, Problem 1
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-23
;;
;; <PROBLEM-TEXT>
;; Let $a$ and $b$ be positive numbers. Let $S$ be the sum of the areas
;; of the two regions enclosed by the two curves $y = x^3 + b x^2$ and
;; $y = a x^2 + a b x$.
;;
;; (1) Represent $S$ using $a$ and $b$.
;;
;; (2) When $a + b = 1$, find the minimum value of $S$ and the values of
;; $a$ and $b$ that give the minimum value.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (S)
  (&&
   (<= 0 a)
   (<= 0 b)
   (= S (area-of (shape-enclosed-by (list-of (graph-of (fun (Lam x (+ (^ x 3) (* b (^ x 2)))))) (graph-of (fun (Lam x (+ (* a (^ x 2)) (* a b x))))))))))))

(def-directive
  p2
  (Find (a_b_minS)
  (exists (a b minS)
    (&&
     (minimum (set-by-def (PLam S (exists (a b)
                   (&&
              (<= 0 a)
              (<= 0 b)
              (= (+ a b) 1)
              (= S (area-of (shape-enclosed-by (list-of (graph-of (fun (Lam x (+ (^ x 3) (* b (^ x 2)))))) (graph-of (fun (Lam x (+ (* a (^ x 2)) (* a b x))))))))))))) minS)
     (<= 0 a)
     (<= 0 b)
     (= (+ a b) 1)
     (= minS (area-of (shape-enclosed-by (list-of (graph-of (fun (Lam x (+ (^ x 3) (* b (^ x 2)))))) (graph-of (fun (Lam x (+ (* a (^ x 2)) (* a b x)))))))))
     (= a_b_minS (list-of a b minS))))))

(def-answer p1 (PLam S (&& (= S (* (/ 1 12) (+ (^ a 4) (* 2 (^ a 3) b) (* 2 a (^ b 3)) (^ b 4))))
               (<= 0 a)
         (<= 0 b))))

(def-answer p2 (PLam a_b_minS (= a_b_minS (list-of (/ 1 2) (/ 1 2) (/ 1 32)))))

