;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1997, Humanities Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; Let $r$ be a positive number. Consider the origin $O(0, 0, 0)$ and
;; the points $A(1, 0, 0)$, $B(0, 1, 0)$, and $C(0, 0, 1)$ in the $xyz$
;; space. Find the condition that $r$ must satisfy in order that there
;; exist two points $P$ in the $xyz$ space that satisfy
;; $|\vec{PA}|=|\vec{PB}|=r |\vec{PO}|$ and $|\vec{PC}|=|\vec{PO}|$.
;; Represent the coordinates of these two points using $r$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (r)
        (exists (O A B C P1 P2)
                (&& (= O (origin))
                    (= A (point 1 0 0))
                    (= B (point 0 1 0))
                    (= C (point 0 0 1))
                    (! (= P1 P2))
                    (= (radius (vec P1 A)) (radius (vec P1 B)))
                    (= (radius (vec P1 B)) (* r (radius (vec P1 O))))
                    (= (radius (vec P1 C)) (radius (vec P1 O)))
                    (= (radius (vec P2 A)) (radius (vec P2 B)))
                    (= (radius (vec P2 B)) (* r (radius (vec P2 O))))
                    (= (radius (vec P2 C)) (radius (vec P2 O)))
                    ))))

(def-directive
  p2
  (Find (Ps)
        (exists (O A B C P1 P2)
                (&& (= O (origin))
                    (= A (point 1 0 0))
                    (= B (point 0 1 0))
                    (= C (point 0 0 1))
                    (! (= P1 P2))
                    (= (radius (vec P1 A)) (radius (vec P1 B)))
                    (= (radius (vec P1 B)) (* r (radius (vec P1 O))))
                    (= (radius (vec P1 C)) (radius (vec P1 O)))
                    (= (radius (vec P2 A)) (radius (vec P2 B)))
                    (= (radius (vec P2 B)) (* r (radius (vec P2 O))))
                    (= (radius (vec P2 C)) (radius (vec P2 O)))
                    (= Ps (list-of P1 P2))
                    ))))

(def-answer p1 (PLam r (|| (&& (< (sqrt (- 3 (sqrt 6))) r)
                               (< r 1))
                           (&& (< 1 r)
                               (< r (sqrt (+ 3 (sqrt 6))))))))

(def-answer p2 (PLam Ps (exists (P1 P2) (&&
                                          (||
                                            (= Ps (list-of P1 P2))
                                            (= Ps (list-of P2 P1))
                                            )
                                          (= P1 (point (/ (+ -2 (sqrt (* (- 2) (+ (- (^ r 4) (* 6 (^ r 2))) 3))))
                                                          (* 4 (- (^ r 2) 1)))
                                                       (/ (+ -2 (sqrt (* (- 2) (+ (- (^ r 4) (* 6 (^ r 2))) 3))))
                                                          (* 4 (- (^ r 2) 1)))
                                                       (/ 1 2)))
                                          (= P2 (point (/ (- -2 (sqrt (* (- 2) (+ (- (^ r 4) (* 6 (^ r 2))) 3))))
                                                          (* 4 (- (^ r 2) 1)))
                                                       (/ (- -2 (sqrt (* (- 2) (+ (- (^ r 4) (* 6 (^ r 2))) 3))))
                                                          (* 4 (- (^ r 2) 1)))
                                                       (/ 1 2)))
                                          ))))

