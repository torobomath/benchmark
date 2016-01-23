;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAE019
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p1
  (Show (forall (A B C O l m A_ B_ P Q R)
          (-> (&& (line-type l)
                  (on A l)
                  (on B l)
                  (on C l)
                  (vec-same-direction (vec A B) (vec B C))
                  (circle-type O)
                  (is-diameter-of (seg A B) O)
                  (line-type m)
                  (on C m)
                  (! (= l m))
                  (intersect O m B_)
                  (intersect O m A_)
                  (> (distance C A_) (distance C B_))
                  (intersect (line A A_) (line B B_) P)
                  (intersect (line A B_) (line B A_) Q)
                  (intersect (line P Q) l R))
              (= (/ (length-of (seg A R)) (length-of (seg R B)))
                 (/ (length-of (seg A C)) (length-of (seg C B))))))))

(def-directive
  p2
  (Show (forall (A B C O l m A_ B_ P Q R)
                (-> (&& (line-type l)
                        (on A l)
                        (on B l)
                        (on C l)
                        (vec-same-direction (vec A B) (vec B C))
                        (circle-type O)
                        (is-diameter-of (seg A B) O)
                        (line-type m)
                        (on C m)
                        (! (= l m))
                        (intersect O m B_)
                        (intersect O m A_)
                        (> (distance C A_) (distance C B_))
                        (intersect (line A A_) (line B B_) P)
                        (intersect (line A B_) (line B A_) Q)
                        (intersect (line P Q) l R))
                    (perpendicular (line P R) l)))))

(def-directive
  p3
  (Find (locP)
        (= locP (set-by-def (PLam P
                                  (exists (m O A_ B_ Q R)
                                          (&& (line-type l)
                                              (on A l)
                                              (on B l)
                                              (on C l)
                                              (vec-same-direction (vec A B) (vec B C))
                                              (circle-type O)
                                              (is-diameter-of (seg A B) O)
                                              (line-type m)
                                              (on C m)
                                              (! (= l m))
                                              (intersect O m B_)
                                              (intersect O m A_)
                                              (> (distance C A_) (distance C B_))
                                              (intersect (line A A_) (line B B_) P)
                                              (intersect (line A B_) (line B A_) Q)
                                              (intersect (line P Q) l R))))))))

(def-answer
  p3
  (PLam locP (= locP (set-by-def
                       (PLam P (let ((R (vec->point (v+ (sv* (/ (length-of (seg B C)) (+ (length-of (seg A C))
                       (length-of (seg B C))))
                   (vec (origin) A))
              (sv* (/ (length-of (seg A C)) (+ (length-of (seg A C))
                       (length-of (seg B C))))
                   (vec (origin) B)))))
                                     (Center (midpoint-of A B)))
                                 (&& (perpendicular l (line P R))
                                     (> (distance^2 P Center) (distance^2 Center A)))))))))

