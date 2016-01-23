;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1E024
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p1
  (Find (L)
        (exists (Cir A B C D)
                (&& (circle-type Cir)
                    (= (radius-of Cir) 1)
                    (is-square A B C D)
                    (is-inscribed-in (square A B C D) Cir)
                    (= L (+ (^ (length-of (seg A B)) 2)
                            (- (^ (length-of (seg B C)) 2))
                            (- (^ (length-of (seg C D)) 2))
                            (^ (length-of (seg D A)) 2)))
                    (= S (area-of (triangle A B D)))
                    (= T (area-of (triangle B C D)))
                    (= theta (rad-of-angle (angle D A B)))
                    (< (* 0 (Degree)) theta)
                    (< theta (* 90 (Degree)))))))

(def-directive
  p2
  (Find (maxL)
        (maximum (set-by-def (PLam L
                                   (exists (Cir A B C D)
                                           (&& (circle-type Cir)
                                               (= (radius-of Cir) 1)
                                               (is-square A B C D)
                                               (is-inscribed-in (square A B C D) Cir)
                                               (= L (+ (^ (length-of (seg A B)) 2)
                                                       (- (^ (length-of (seg B C)) 2))
                                                       (- (^ (length-of (seg C D)) 2))
                                                       (^ (length-of (seg D A)) 2)))
                                               (= S (area-of (triangle A B D)))
                                               (= T (area-of (triangle B C D)))
                                               (= theta (rad-of-angle (angle D A B)))
                                               (< (* 0 (Degree)) theta)
                                               (< theta (* 90 (Degree)))))))
                 maxL)))

(def-answer
  p1
  (PLam L (= L (* (/ 4 (tan (/ theta (Degree)))) (+ S T)))))

(def-answer
  p2
  (PLam maxL (= maxL (* 8 (cos (/ theta (Degree)))))))

