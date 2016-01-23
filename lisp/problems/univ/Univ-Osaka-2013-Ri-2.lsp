;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2013, Science Course, Problem 2
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-06-30
;;
;; <PROBLEM-TEXT>
;; Draw the region represented by the inequality
;; $1\le ||x| - 2| + ||y| - 2|\le 3$ on the $x y$ plane.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Draw(P)
    (&&
      (<= 1
        (+ (abs(- (abs(x-coord P)) 2 ))
          (abs(- (abs(y-coord P)) 2 ))))
      (<= (+ (abs(- (abs(x-coord P)) 2 ))
          (abs(- (abs(y-coord P)) 2 )))
        3 ))))

(def-answer p (shape-
  (union (list-of
    (with-boundary (square (point -1 2) (point 2 -1) (point 5 2) (point 2 5)))
    (with-boundary (square (point -5 2) (point -2 -1) (point 1 2) (point -2 5)))
    (with-boundary (square (point -5 -2) (point -2 -5) (point 1 -2) (point -2 1)))
    (with-boundary (square (point -1 -2) (point 2 -5) (point 5 -2) (point 2 1)))
  ))
  (union (list-of
    (inner-part-of (square (point 1 2) (point 2 1) (point 3 2) (point 2 3)))
    (inner-part-of (square (point -3 2) (point -2 1) (point -1 2) (point -2 3)))
    (inner-part-of (square (point -3 -2) (point -2 -3) (point -1 -2) (point -2 -1)))
    (inner-part-of (square (point 1 -2) (point 2 -3) (point 3 -2) (point 2 -1)))
  ))
))

