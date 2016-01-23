;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2001, Humanities Course, Problem 2
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-08-06
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, and $c$ be constants, where $a > 0$.
;;
;; (1) Prove that there exists only one tangent to the curve
;; $y = - a x^3 + b x + c$ at the point $(0, t)$ ( $t$ is a real
;; number).
;;
;; (2) Find the range of $t$ such that the tangent described in (1) has
;; a positive inclination.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show
  (forall (a b c) (->
    (< 0 a)
       (exists (l) (&&
        (line-type l)
        (tangent (graph-of (poly-fun (list-of c b 0 (- a)))) l)
        (on (point 0 t) l)
        (forall (m)
          (-> (&& (tangent (graph-of (poly-fun (list-of c b 0 (- a)))) m)
              (line-type m)
               (on (point 0 t) m))
          (= l m)))))))))

(def-directive
  p2
  (Find (t)
  (exists (l)
    (&& (line-type l)
        (tangent (graph-of (poly-fun (list-of c b 0 (- a)))) l)
        (on (point 0 t) l)
      (< 0 a)
        (exists (s)
          (&& (< 0 s)
        (is-slope-of s l)))))))

(def-answer
  p2
  (PLam t (&& (> b 0) (< 0 a)
        (< (- c (* (/ (* 2 b) 3) (sqrt (/ b (* 3 a))))) t)
        (< t (+ c (* (/ (* 2 b) 3) (sqrt (/ b (* 3 a)))))))))

