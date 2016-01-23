;; DOMAIN:    Quadratic Functions
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2001, Humanities Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-08-06
;;
;; <PROBLEM-TEXT>
;; Consider the function $g(x)= - |2 f(x)- 1| + 1$ ( $0\le x\le 1$),
;; where the function $f(x)= - |2 x - 1| + 1$ ( $0\le x\le 1$). When
;; $0 < c < 1$, find $x$ that satisfies $g(x)= c$.
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Find (x)
  (let* ((f (Lam x (+ (- (abs (- (* 2 x) 1))) 1)))
         (g (Lam x (+ (- (abs (- (* 2 (LamApp f x)) 1))) 1))))
    (&& (<= 0 x)
        (<= x 1)
        (< 0 c)
        (< c 1)
        (= c (LamApp g x))))))

(def-answer p1 (PLam x (&&
  (< 0 c) (< c 1)
  (||
  (= x (/ c 4))
  (= x (- (/ (- c 2) 4)))
  (= x (/ (+ c 2) 4))
  (= x (- (/ (- c 4) 4)))))))

