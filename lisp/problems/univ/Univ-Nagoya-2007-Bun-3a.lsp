;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2007, Humanities Course, Problem 3a
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-07-12
;;
;; <PROBLEM-TEXT>
;; (a) Let $p$ be a real number. Assume that equation
;; $x^4 +(8 - 2 p)x^2 + p = 0$ has four different real solutions, and
;; the solutions form an arithmetic progression when they are arranged
;; in ascending order. Find this $p$.
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Find (p)
  (exists (x1 x2 x3 x4 m f) (&&
      (= f (fun (Lam x (+ (^ x 4) (* (- 8 (* 2 p)) (^ x 2)) p))))
      (= 0 (funapp f x1))
      (= 0 (funapp f x2))
      (= 0 (funapp f x3))
      (= 0 (funapp f x4))
      (< 0 m)
      (= x1 (+ x2 m))
      (= x2 (+ x3 m))
      (= x3 (+ x4 m))
  ))))

(def-answer p1 (PLam p (= p 9)))

