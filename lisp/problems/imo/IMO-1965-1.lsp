;; DOMAIN:    Geometry, trigonometric functions
;; THEORY:    trans
;; SOURCE:    International Mathematical Olympiad, 1965, Problem 1
;; SCORE:     4
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-17
;;
;; <PROBLEM-TEXT>
;; Determine all values $x$ in the interval $0 \leq x \leq 2\pi$ which satisfy
;; the inequality\[
;; 2 \cos x \leq | \sqrt{1 + \sin 2x} - \sqrt{1 - \sin 2x}| \leq \sqrt{2}.
;; \]
;; </PROBLEM-TEXT>

(def-directive p
  (Find (x)
  (&& (<= 0 x)
        (<= x (* 2 (Pi)))
        (<= (* 2 (cos x))
            (abs (- (sqrt (+ 1 (sin (* 2 x)))) (sqrt (- 1 (sin (* 2 x)))))))
      (<= (abs (- (sqrt (+ 1 (sin (* 2 x)))) (sqrt (- 1 (sin (* 2 x))))))
            (sqrt 2)))))

(def-answer p (PLam x (&& (<= (/ (Pi) 4) x)
              (<= x (/ (* (Pi) 7) 4)))))

