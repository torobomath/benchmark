;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R140
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 3d)

(def-directive
  p
  (Find (minL)
        (minimum
          (set-by-def
            (PLam L
                  (exists (O D A B H theta f S)
                          (&& (disk-type D)
                              (= S (right-conical-surface D O))
                              (= H (center-of D))
                              (is-diameter-of (seg A B) D)
                              (= a (length-of (seg O A)))
                              (= theta (rad-of-angle (angle A O H)))
                              (= (sin theta) (/ 1 3))
                              (forall (t)
                                      (-> (&& (<= 0 t)
                                              (<= t 1))
                                          (on (LamApp f t) S)))
                              (= (LamApp f 0) A)
                              (= (LamApp f 1) A)
                              (forall (t delta)
                                      (-> (&& (<= 0 t)
                                              (<= t 1)
                                              (< 0 delta))
                                          (exists (eps)
                                                  (forall (tt)
                                                          (-> (< (abs (- t tt)) eps)
                                                              (< (distance (LamApp f t) (LamApp f tt)) delta))))))
                              (exists (t0)
                                      (&& (<= 0 t0)
                                          (<= t0 1)
                                          (on (LamApp f t0) (seg O B))))
                              (= L (length-of (shape-of-cpfun (PLam P (exists (t)
                                                                              (&& (<= 0 t)
                                                                                  (<= t 1)
                                                                                  (= P (LamApp f t))))))))))))
          minL)))

(def-answer p (PLam minL (= minL (* (sqrt 3) a))))

