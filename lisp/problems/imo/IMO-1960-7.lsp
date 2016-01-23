;; DOMAIN:    Geometry, quadrangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1960, Problem 7
;; SCORE:     5
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-04
;;
;; <PROBLEM-TEXT>
;; An isosceles trapezoid with bases $a$ and $c$ and altitude $h$ is given.
;; (a) On the axis of symmetry of this trapezoid, find all points $P$ such that
;; both legs of the trapezoid subtend right angles at $P$.
;; (b) Calculate the distance of $P$ from either base.
;; (c) Determine under what conditions such points $P$ actually exist. (Discuss
;; various cases that might arise.)
;; </PROBLEM-TEXT>

(namespace 2d)

;;@ NOTE: coordinates are fixed for writing answers in terms of a, b, and h

(def-directive p1
  (Find (P)
  (exists (A B C D)
    (&& (< 0 h)
        (< 0 a)
        (< 0 b)
        (= A (point (- (/ b 2)) 0))
        (= B (point (/ b 2) 0))
        (= C (point (/ a 2) h))
        (= D (point ( - (/ a 2)) h))
        (= (rad-of-angle (angle B P C)) (/ (Pi) 2))
        (= (rad-of-angle (angle A P D)) (/ (Pi) 2))
        (on P (y-axis))))))

(def-answer
  p1
  (PLam P (exists (Px Py)
      (||
       (&& (< 0 h)
     (< 0 a)
     (< 0 b)
     (>= (^ h 2) (* a b))
     (= Px 0)
     (= Py (- (/ h 2) (/ (sqrt (- (^ h 2) (* a b))) 2)))
     (= P (point Px Py)))
       (&& (< 0 h)
     (< 0 a)
     (< 0 b)
     (>= (^ h 2) (* a b))
     (= Px 0)
     (= Py (+ (/ h 2) (/ (sqrt (- (^ h 2) (* a b))) 2)))
     (= P (point Px Py)))))))

(def-directive p2
  (Find (Dist)
  (exists (A B C D P)
    (&& (< 0 h)
            (< 0 a)
            (< 0 b)
            (= A (point (- (/ b 2)) 0))
            (= B (point (/ b 2) 0))
            (= C (point (/ a 2) h))
            (= D (point ( - (/ a 2)) h))
      (= (rad-of-angle (angle B P C)) (/ (Pi) 2))
      (= (rad-of-angle (angle A P D)) (/ (Pi) 2))
            (on P (y-axis))
      (= Dist (point-shape-distance P (line A B)))))))

(def-answer
  p2
  (PLam Dist (|| (&& (< 0 h)
                     (< 0 a)
                     (< 0 b)
                     (>= (^ h 2) (* a b))
                     (= Dist (- (/ h 2) (/ (sqrt (- (^ h 2) (* a b))) 2))))
        (&& (< 0 h)
      (< 0 a)
      (< 0 b)
      (>= (^ h 2) (* a b))
      (= Dist (+ (/ h 2) (/ (sqrt (- (^ h 2) (* a b))) 2)))))))

(def-directive
  p3
  (Find (abh)
       (exists (A B C D P)
         (&& (= abh (list-of a b h))
       (< 0 h)
       (< 0 a)
       (< 0 b)
       (= A (point (- (/ b 2)) 0))
       (= B (point (/ b 2) 0))
       (= C (point (/ a 2) h))
       (= D (point ( - (/ a 2)) h))
       (= (rad-of-angle (angle B P C)) (/ (Pi) 2))
       (= (rad-of-angle (angle A P D)) (/ (Pi) 2))
       (on P (y-axis))))))

(def-answer
  p3
  (PLam abh (&& (= abh (list-of a b h))
                (< 0 h)
                (< 0 a)
                (< 0 b)
                (>= (^ h 2) (* a b)))))

