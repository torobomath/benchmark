;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2003, Science Course, Problem 4a
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-08-04
;;
;; <PROBLEM-TEXT>
;; (a)
;;
;; (1) For the parallelogram $>ABCD$, let $AB = CD = a$, $BC = AD = b$,
;; $BD = c$, and $AC = d$. Then, prove that
;; $a^2 + b^2 =\frac{1}{2}(c^2 + d^2)$ is true.
;;
;; (2) When the $3$ positive numbers $a$, $b$, and $c$ satisfy
;; $a^2 + b^2 > c^2$, prove that it is possible to make a tetrahedron
;; whose faces are triangles with side lengths of $a$, $b$, and $c$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Show
   (forall (A B C D)
     (-> (&& (is-parallelogram A B C D)
       (= (distance A B) (distance C D))
       (= (distance B C) (distance A D)))
         (= (+ (^ (distance A B) 2) (^ (distance B C) 2))
      (/ (+ (^ (distance B D) 2) (^ (distance A C) 2)) 2))))))

(def-directive
  p2
  (Show
   (forall (a b c)
     (-> (&& (< 0 a)
       (<= a b)
       (<= b c)
       (< (^ c 2) (+ (^ a 2) (^ b 2))))
         (exists (A B C D)
           (&& (is-tetrahedron A B C D)
         (= a (distance A B))
         (= b (distance B C))
         (= c (distance C A))
         (= b (distance A D))
         (= c (distance B D))
         (= a (distance C D))))))))

