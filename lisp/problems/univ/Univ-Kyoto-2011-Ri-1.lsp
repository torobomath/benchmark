;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2011, Science Course, Problem 1
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-07-31
;;
;; <PROBLEM-TEXT>
;; Answer the following questions:
;;
;; (1) Same as Kyodai-2011-Bun-Zenki-Suugaku-1 (1).
;;
;; (2) Find the definite integral
;; $\int_0^{\frac{1}{2}}(x+1)\sqrt{1+2 x^2} dx$.
;; </PROBLEM-TEXT>

(def-directive
  p2
  (Find (I)
        (= I (integral (Lam x (* (+ x 1) (sqrt (- 1 (* 2 (^ x 2))))))
           0
           (/ 1 2)))))

(def-answer p2 (PLam I (= I (+ (/ (* (sqrt 2) (Pi)) 16) (/ (sqrt 2) 12) (/ 1 6)))))

