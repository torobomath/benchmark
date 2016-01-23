;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2005, Humanities Course, Problem 4
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-10-02
;;
;; <PROBLEM-TEXT>
;; Find the length of the side of the regular tetrahedron inscribed in a
;; sphere of the radius of $1$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (l)
  (exists (o a b c d)
    (&& (is-inscribed-in (tetrahedron a b c d) (sphere o 1))
        (is-regular-tetrahedron a b c d)
        (= l (distance a b))))))

(def-answer
  p1
  (PLam l (= l (* (/ 2 3) (sqrt 6)))))

