;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1959, Problem 5
;; SCORE:     8
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2015-01-27
;;
;; <PROBLEM-TEXT>
;; An arbitrary point $M$ is selected in the interior of the segment $AB$. The
;; squares $AMCD$ and $MBEF$ are constructed on the same side of $AB$, with
;; the segments $AM$ and $MB$ as their respective bases. The circles circumscribed
;; about these squares, with centers $P$ and $Q$, intersect at $M$ and also
;; at another point $N$. Let $N'$ denote the point of intersection of the straight
;; lines $AF$ and $BC$.
;; (a) Prove that the points $N$ and $N'$ coincide.
;; (b) Prove that the straight lines $MN$ pass through a fixed point $S$ independent
;; of the choice of $M$.
;; (c) Find the locus of the midpoints of the segments $PQ$ as $M$ varies between
;; $A$ and $B$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p1
  (Show
   (forall (A B M C D E F K1 K2 P Q N)
     (-> (&& (! (= A B))
       (on M (seg A B)) (! (= M A)) (! (= M B))
       (is-regular-square A M C D)
       (is-regular-square M B E F)
       (vec-same-direction (vec M C) (vec M F))
       (circle-type K1)
       (circle-type K2)
       (is-inscribed-in (square A M C D) K1)
       (is-inscribed-in (square B M F E) K2)
       (= P (center-of K1))
       (= Q (center-of K2))
       (intersect K1 K2 N)
       (!(= M N))
    )
         (intersect (line F A) (line B C) N)
      )
    )
   )
)

(def-directive p2
  (Show
   (forall (A B)
     (-> (! (= A B))
         (exists (S)
          (forall (M C D E F K1 K2 P Q N)
          (-> (&& (on M (seg A B)) (! (= M A)) (! (= M B))
                      (is-regular-square A M C D)
                      (is-regular-square M B E F)
                      (vec-same-direction (vec M C) (vec M F))
                      (circle-type K1)
                      (circle-type K2)
          (is-inscribed-in (square A M C D) K1)
          (is-inscribed-in (square B M F E) K2)
                      (= P (center-of K1))
                      (= Q (center-of K2))
                      (intersect K1 K2 N)
                      (!(= M N))
                      )
                  (on S (line M N)))))))))

(def-directive p3
  (Find (Sp)
  (= Sp
     (shape-of-cpfun (PLam R
         (exists (A B M C D E F K1 K2 P Q N)
           (&& (! (= A B))
                         (= A (point Ax Ay))
               (= B (point Bx By))
               (on M (seg A B)) (! (= M A)) (! (= M B))
               (is-regular-square A M C D)
               (is-regular-square M B E F)
               (vec-same-direction (vec M C) (vec M F))
               (circle-type K1)
               (circle-type K2)
               (is-inscribed-in (polygon (list-of A M C D)) K1)
               (is-inscribed-in (polygon (list-of B M F E)) K2)
               (= P (center-of K1))
               (= Q (center-of K2))
               (intersect K1 K2 N)
               (!(= M N))
               (= R (midpoint-of P Q))
           )
         )
          )
      )
     )
   )
)

(def-answer p3 (PLam Sp (exists (A B)
                          (&& (! (= A B))
                              (= A (point Ax Ay))
                    (= B (point Bx By))
                              (segment-type Sp)
                              (parallel Sp (line A B))
                              (= (line-line-distance (seg-extention-of Sp) (line A B))
                                 (/ (distance A B) 4))
                              (perpendicular (line A B)
                                             (line (midpoint-of A B)
                                                   (seg-midpoint-of Sp)))))))

