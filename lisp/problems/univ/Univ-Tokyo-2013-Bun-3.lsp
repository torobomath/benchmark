;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2013, Humanities Course, Problem 3
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2013-11-11
;;
;; <PROBLEM-TEXT>
;; Let $a$ and $b$ be constant real numbers. When the real numbers $x$
;; and $y$ satisfy both $x^2+y^2\le 25$ and $2 x+y\le 5$, find the
;; minimum value of $z=x^2+y^2-2 a x-2 b y$.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (m)
        (minimum (set-by-def
                   (PLam z (exists (x y)
                                   (&& (<= (+ (^ x 2) (^ y 2)) 25)
                                       (<= (+ (* 2 x) y) 5)
                                       (= z (+ (^ x 2)
                                               (^ y 2)
                                               (- (* 2 a x))
                                               (- (* 2 b y))))))))
                 m)))

(def-answer p (PLam m (|| (&& (<= (+ (^ a 2) (^ b 2)) 25)
                              (<= b (- 5 (* 2 a)))
                              (= m (- (+ (^ a 2) (^ b 2)))))
                          (&& (>= (+ (^ a 2) (^ b 2)) 25)
                              (|| (<= a 0)
                                  (<= b (* (- (/ 3 4)) a)))
                              (= m (- 25 (* 10 (sqrt (+ (^ a 2) (^ b 2)))))))
                          (&& (>= b (- 5 (* 2 a)))
                              (<= b (+ (* (/ 1 2) a) 5))
                              (>= b (- 5 (* (/ 1 2) a)))
                              (= m (* (/ 1 5) (+ (- (^ a 2)) (- (* 4 (^ b 2))) (* 4 a b) (- (* 20 a)) (- (* 10 b)) 25))))
                          (&& (>= a 0)
                              (>= b (+ (* (/ 1 2) a) 5))
                              (= m (- 25 (* 10 b))))
                          (&& (>= b (* (- (/ 3 4)) a))
                              (<= b (- (* (/ 1 2) a) 5))
                              (= m (+ 25 (- (* 8 a)) (* 6 b)))))))

