;; DOMAIN:    Geometry, trigonometric functions
;; THEORY:    trans
;; SOURCE:    International Mathematical Olympiad, 1959, Problem 3
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-23
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, $c$ be real numbers. Consider the quadratic equation in $\cos x$:\[
;; a \cos^2 x + b \cos x + c = 0.
;; \]Using the numbers $a$, $b$, $c$, form a quadratic equation in $\cos 2x$, whose roots
;; are the same as those of the original equation. Compare the equations in
;; $\cos x$ and $\cos 2x$ for $a = 4$, $b = 2$, $c = -1$.
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Find (BC)
    (exists (B C) (&&
            (= BC (list-of B C))
            (forall (x)
                (<-> (&& (! (= a 0))
                     (= (+ (* a (^ (cos x) 2)) (* b (cos x)) c) 0))
                   (&& (! (= a 0))
                     (= (+ (^ (cos (* 2 x)) 2) (* B (cos (* 2 x))) C) 0))))))))

(def-answer
  p1
  (PLam BC (= BC (list-of (/ (+ (* 2 (^ a 2)) (* 4 a c) (- (* 2 (^ b 2))))
                             (^ a 2))
                          (/ (+ (^ (+ a (* 2 c)) 2) (- (* 2 (^ b 2))))
                             (^ a 2))))))

(def-directive
  p2
  (Find (x)
        (= (- (+ (* 4 (^ (cos x) 2)) (* 2 (cos x))) 1) 0)))

(def-answer
   p2
   (PLam x (exists (n)
                   (|| (= x (+ (* (/ 2 5) (Pi)) (* 2 (int->real n) (Pi))))
                       (= x (+ (* (/ 4 5) (Pi)) (* 2 (int->real n) (Pi))))))))

