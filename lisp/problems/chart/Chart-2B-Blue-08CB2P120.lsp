;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P120
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p1
  (Find (BC)
    (exists (l1 l2 A B C D Bx By Cx Cy)
      (&& (= l1 (graph-of (poly-fun (list-of 0 1))))
          (= l2 (graph-of (poly-fun (list-of 0 m))))
          (! (= m 1))
          (= A (point a b))
      (= B (point Bx By))
      (= C (point Cx Cy))
          (line-symmetry A B l1)
          (line-symmetry B C l2)
          (line-symmetry C D l1)
          (= BC (list-of Bx By Cx Cy))))))

(def-directive
  p2
  (Find (m)
        (&& (! (= m 1))
            (forall (l1 l2 A a b B C D)
                    (-> (&& (= l1 (graph-of (poly-fun (list-of 0 1))))
                            (= l2 (graph-of (poly-fun (list-of 0 m))))
                            (= A (point a b))
                            (line-symmetry A B l1)
                            (line-symmetry B C l2)
                            (line-symmetry C D l1))
                        (line-symmetry A D l2))))))

(def-answer
  p1
  (PLam BC (&&  (! (= m 1))
       (= BC (list-of b a
                          (/ (+ (* 2 m a) (* (- 1 (^ m 2)) b))
                                    (+ (^ m 2) 1))
                                 (/ (+ (* (- (^ m 2) 1) a) (* 2 m b))
                                    (+ (^ m 2) 1)))))))

(def-answer
   p2
   (PLam m (= m -1)))

