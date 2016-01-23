;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2007, Humanities Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2013-11-29
;;
;; <PROBLEM-TEXT>
;; Let $D$ be the region defined by the simultaneous inequalities
;; $y(y - |x^2 - 5| + 4)\le 0, y+x^2-2 x-3\le 0$.
;;
;; (1) Draw $D$.
;;
;; (2) Find the area of $D$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find(x)
    (= x
      (shape-of-cpfun (PLam p (&& (<= (* (y-coord p) (+ (y-coord p) (- (abs (- (^ (x-coord p) 2) 5))) 4))
                      0)
                  (<= (+ (y-coord p) (^ (x-coord p) 2) (- (* 2 (x-coord p))) -3)
                    0)))))))

(def-directive
  p2
  (Find (x)
    (= x
      (area-of (shape-of-cpfun (PLam p (&& (<= (* (y-coord p) (+ (y-coord p) (- (abs (- (^ (x-coord p) 2) 5))) 4))
                          0)
                        (<= (+ (y-coord p) (^ (x-coord p) 2) (- (* 2 (x-coord p))) -3) 0))))))))

(def-answer p1 (PLam x (= x (shape-of-cpfun (PLam p (|| (&& (<= 0 (y-coord p))
                                                            (<= (y-coord p) (- (abs (- (^ (x-coord p) 2) 5)) 4))
                                                            (<= -1 (x-coord p))
                                                            (<= (x-coord p) 1))
                                                        (&& (<= (- (abs (- (^ (x-coord p) 2) 5)) 4)
                                                                (y-coord p))
                                                            (<= (y-coord p) 0)
                                                            (<= 1 (x-coord p))
                                                            (<= (x-coord p) 3))))))))

(def-answer p2 (PLam x (= x (- 20 (* (/ 20 3) (sqrt 5))))))

