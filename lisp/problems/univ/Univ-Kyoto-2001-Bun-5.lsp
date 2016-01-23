;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2001, Humanities Course, Problem 5
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-08
;;
;; <PROBLEM-TEXT>
;; Consider the region $D$ defined by $-1\le y\le 1$ and the circle $C$
;; centered at $P$ and passing through the origin $O$ on the $xy$ plane.
;; Assuming that $C$ is included in $D$, draw the movable region of $P$
;; and find the area of the region.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p_1
  (Find (E)
        (exists (D)
          (&& (= D (shape-of-cpfun (PLam p (&& (<= -1 (y-coord p))
                       (<= (y-coord p) 1)))))
              (= E (shape-of-cpfun (PLam p (exists (C)
                     (&& (circle-type C)
                         (= p (center-of C))
                         (on (origin) C)
                         (inside-of C D))))))))))

(def-directive
  p_2
  (Find (S)
        (exists (D E)
                (&& (= D (shape-of-cpfun (PLam p (&& (<= -1 (y-coord p))
                                                     (<= (y-coord p) 1)))))
                    (= E (shape-of-cpfun (PLam p (exists (C)
                                                         (&& (circle-type C)
                                                             (= p (center-of C))
                                                             (on (origin) C)
                                                             (inside-of C D))))))
                    (= S (area-of E))))))

(def-answer p_1 (PLam E (= E (shape-of-cpfun (PLam P (&& (! (= P (origin)))
               (<= (- (* (/ 1 2) (^ (x-coord P) 2)) (/ 1 2)) (y-coord P))
               (<= (y-coord P) (+ (- (* (/ 1 2) (^ (x-coord P) 2))) (/ 1 2)))))))))

(def-answer p_2 (PLam S (= S (/ 4 3))))

