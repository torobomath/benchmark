;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2005, Humanities Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-09-27
;;
;; <PROBLEM-TEXT>
;; Answer the following questions:
;;
;; (1) Find the range of the value of the real number $k$ such that the
;; quadratic equation of $x$, $x^2-2 k x-3 k^2+1=0$ has imaginary
;; solutions.
;;
;; (2) Find the minimum and maximum values of
;; $F(k)=\int_0^k(x^2 - 2 k x - 3 k^2 + 1)d x$ in the range of $k$ found
;; in (1).
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Find (k)
  (complex.has-complex-solution (complex.quad-equation (+ (- (* 3 (^ k 2))) 1) (- (* 2 k)) 1))))

(def-answer
  p1
  (PLam k (&& (< (- (/ 1 2)) k)
        (< k (/ 1 2)))))

(def-directive
  p2
  (Find (maxfk)
        (maximum (set-by-def (PLam fk (exists (k)
                                              (&& (= fk
                                                     (integration (poly-fun (list-of (+ (- (* 3 (^ k 2))) 1) (- (* 2 k)) 1)) 0 k))
                                                  (complex.has-complex-solution (complex.quad-equation (+ (- (* 3 (^ k 2))) 1) (- (* 2 k)) 1))))))
                 maxfk)))

(def-answer
  p2
  (PLam maxfk (= maxfk (* (/ 2 33) (sqrt 11)))))

(def-directive
  p3
  (Find (minfk)
        (minimum (set-by-def (PLam fk (exists (k)
                                              (&& (= fk
                                                     (integration (poly-fun (list-of (+ (- (* 3 (^ k 2))) 1) (- (* 2 k)) 1)) 0 k))
                                                  (complex.has-complex-solution (complex.quad-equation (+ (- (* 3 (^ k 2))) 1) (- (* 2 k)) 1))))))
                 minfk)))

(def-answer
  p3
  (PLam minfk (= minfk (- (* (/ 2 33) (sqrt 11))))))

