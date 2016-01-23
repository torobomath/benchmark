;; DOMAIN:    Geometry, geometric inequalities
;; THEORY:    RCF+PA(comb)
;; SOURCE:    International Mathematical Olympiad, 2006, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-31
;;
;; <PROBLEM-TEXT>
;; Assign to each side b of a convex polygon P the maximum area of a triangle
;; that has b as a side and is contained in P. Show that the sum of the areas
;; assigned to the sides of P is at least twice the area of P .
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (Ps poly sides max-areas)
     (-> (&& (is-convex-shape (polygon Ps))
               (= poly (polygon Ps))
               (are-the-sides-of sides poly)
               (all2 (Lam s (PLam m (maximum
                                      (set-by-def
                                        (PLam a
                                              (exists (triangle)
                                                      (&& (triangle-type triangle)
                                                          (is-a-side-of s triangle)
                                                          (inside-of triangle polygon)
                                                          (= a (area-of triangle))))))
                                      m)))
                     sides
                     max-areas))
         (>= (sum max-areas) (* (area-of (polygon Ps)) 2))))))

