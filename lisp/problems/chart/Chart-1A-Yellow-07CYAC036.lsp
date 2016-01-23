;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAC036
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive
  p
  (Find (r1r2)
        (exists (r1 r2)
                (&& (< r1 r2)
                    (< 0 r1)
                    (< 0 r2)
                    (forall (K1 K2)
                            (-> (&& (circle-type K1)
                                    (circle-type K2)
                                    (= r1 (radius-of K1))
                                    (= r2 (radius-of K2))
                                    (= (distance (center-of K1) (center-of K2)) 7))
                                (is-circumscribed-about K1 K2)))
                    (forall (K1 K2)
                            (-> (&& (circle-type K1)
                                    (circle-type K2)
                                    (= r1 (radius-of K1))
                                    (= r2 (radius-of K2))
                                    (= (distance (center-of K1) (center-of K2)) 4))
                                (is-inscribed-in K1 K2)))
                    (= r1r2 (list-of r1 r2))))))

(def-answer p (PLam r1r2 (= r1r2 (list-of (/ 3 2) (/ 11 2)))))

