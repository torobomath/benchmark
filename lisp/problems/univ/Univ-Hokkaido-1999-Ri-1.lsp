;; DOMAIN:    Trigonometric Functions
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 1999, Science Course, Problem 1
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-14
;;
;; <PROBLEM-TEXT>
;; When the area of the triangle $ABC$ is $1$ and $AB = 2$, find the
;; magnitude of $\angle BAC$ that gives the minimum value of
;; $BC^2 +(2\sqrt{3} - 1)AC^2$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (angleBAC)
        (exists (A B C)
                (&& (= 1 (area-of (triangle A B C)))
                    (= 2 (length-of (seg A B)))
                    (= angleBAC (rad-of-angle (angle B A C)))
                    (minimum
                      (set-by-def (PLam x (exists (A0 B0 C0)
                                                  (&& (= 1 (area-of (triangle A0 B0 C0)))
                                                      (= 2 (length-of (seg A0 B0)))
                                                      (= x (+ (^ (length-of (seg B0 C0)) 2)
                                                              (* (- (* 2 (sqrt 3)) 1)
                                                                 (^ (length-of (seg A0 C0)) 2))))))))
                      (+ (^ (length-of (seg B C)) 2)
                         (* (- (* 2 (sqrt 3)) 1)
                            (^ (length-of (seg A C)) 2))))))))

(def-answer p (PLam angleBAC (= angleBAC (/ (Pi) 3))))

