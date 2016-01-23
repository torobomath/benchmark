;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2009, Humanities Course, Problem 4
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2013-12-28
;;
;; <PROBLEM-TEXT>
;; Let $\triangle OBC$ be the triangle obtained by turning back the
;; acute triangle $\triangle OAB$ with respect to the side $OB$, let
;; $\triangle OCD$ be the triangle obtained by turning back
;; $\triangle OBC$ with respect to the side $OC$, and let
;; $\triangle ODE$ be the triangle obtained by turning back
;; $\triangle OCD$ with respect to the side $OD$. When the area ratio of
;; $\triangle OAB$ and $\triangle OBE$ is $2:3$, find the value of
;; $\sin\angle AOB$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (x)
  (exists(A B C D E) (&& (is-acute-triangle (triangle (origin) A B))
             (line-symmetry A C (line (origin) B))
             (line-symmetry B D (line (origin) C))
             (line-symmetry C E (line (origin) D))
             (= (area-of (triangle (origin) A B)) (* (/ 2 3) (area-of (triangle (origin) B E))))
             (= x (sin-of-angle (angle A (origin) B)))))))

(def-answer p1 (PLam x (= x (/ (sqrt 6) 4))))

