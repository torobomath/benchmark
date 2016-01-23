;; DOMAIN:    Differentiation and its Applications
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 1999, Science Course, Problem 3
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2014-01-25
;;
;; <PROBLEM-TEXT>
;; (1) For the real number $k\ge 0$, find the equation of the curve that
;; satisfies
;; $\int_0^{2 {\pi}}\{y(x\cos {\theta} +\frac{1}{2} x^2)-(x\cos {\theta} +\frac{1}{2} x^2)^2\}\cos {\theta} d {\theta} = 2 k {\pi}$
;; on the $x y$ plane.
;;
;; (2) Find the range of the value of the real number $a$ such that the
;; curve found in (1) and the straight line $y = a$ have only one common
;; point.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (C)
        (&& (<= 0 k)
            (= C (set-of-cfun (Lam x (PLam y (= (integration (fun (Lam theta
                                                                       (* (- (* y (+ (* x (cos theta)) (* (/ 1 2) (^ x 2))))
                                                                             (^ (+ (* x (cos theta)) (* (/ 1 2) (^ x 2))) 2))
                                                                          (cos theta))))
                                                             0
                                                             (* 2 (Pi)))
                                                (* 2 k (Pi))))))))))

(def-directive
  p2
  (Find (a)
        (exists (C)
                (&& (<= 0 k)
                    (= C (set-of-cfun (Lam x (PLam y (= (integration (fun (Lam theta
                                                                               (* (- (* y (+ (* x (cos theta)) (* (/ 1 2) (^ x 2))))
                                                                                     (^ (+ (* x (cos theta)) (* (/ 1 2) (^ x 2))) 2))
                                                                                  (cos theta))))
                                                                     0
                                                                     (* 2 (Pi)))
                                                        (* 2 k (Pi)))))))
                    (exists (P)
                            (&& (on P C)
                                (on P (graph-of (poly-fun (list-of a))))))
                    (forall (P Q)
                            (-> (&& (on P C)
                                    (on P (graph-of (poly-fun (list-of a))))
                                    (on Q C)
                                    (on Q (graph-of (poly-fun (list-of a)))))
                                (= P Q)))))))

(def-answer p1 (PLam C (||
  (&& (> k 0)
    (= C (set-of-cfun (Lam x (PLam y (&&
      (! (= x 0))
      (= (- (* x y) (^ x 3)) (* 2 k))
    )))))
  )
  (&& (= k 0)
    (= C (set-of-cfun (Lam x (PLam y (||
      (= y (^ x 2))
      (= x 0)
    )))))
  )
)))

(def-answer p2 (PLam a (||
      (&& (> k 0) (< a (* 3 (^ k (/ 2 3)))))
      (&& (= k 0) (<= a 0))
)))

