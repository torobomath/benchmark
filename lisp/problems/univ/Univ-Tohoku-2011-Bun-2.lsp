;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2011, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-09
;;
;; <PROBLEM-TEXT>
;; Let $C$ be the point that internally divides the side $AB$ of the
;; triangle $OAB$ in a ratio of $1 : 2$. Assume that the moving point
;; $D$ satisfies $\vec{OD} = x\vec{OA}$ $(x\ge 1)$, and let $E$ be the
;; intersection of the straight lines $CD$ and $OB$.
;;
;; (1) When the real number $y$ is defined as $\vec{OE} = y\vec{OB}$,
;; prove that the following equation is true:
;; $\frac{2}{x} +\frac{1}{y} = 3$
;;
;; (2) Let $S$ be the area of the triangle $OAB$, and let $T$ be the
;; area of the triangle $ODE$, then find the maximum value of
;; $\frac{S}{T}$ and $x$ that gives the value.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show (forall (O A B C D E x y)
                (-> (&& (is-triangle O A B)
                        (divide-internally C (seg A B) 1 2)
                        (>= x 1)
                        (= (vec O D) (sv* x (vec O A)))
                        (on E (intersection (line C D) (line O B)))
                        (= (vec O E) (sv* y (vec O B))))
                    (= (+ (/ 2 x) (/ 1 y)) 3)))))

(def-directive
  p2
  (Find (Ux)
        (exists (U_set U_max x_opt O A B C D E S T)
                (&& (maximum U_set U_max)
                    (= U_set (set-by-def (PLam U (exists (C D E x S T)
                                                         (&&
                                                             (divide-internally C (seg A B) 1 2)
                                                             (>= x 1)
                                                             (= (vec O D) (sv* x (vec O A)))
                                                             (on E (intersection (line C D) (line O B)))
                                                             (= S (area-of (triangle O A B)))
                                                             (= T (area-of (triangle O D E)))
                                                             (= U (/ S T)))))))
                    (is-triangle O A B)
                    (divide-internally C (seg A B) 1 2)
                    (>= x_opt 1)
                    (= (vec O D) (sv* x_opt (vec O A)))
                    (on E (intersection (line C D) (line O B)))
                    (= S (area-of (triangle O A B)))
                    (= T (area-of (triangle O D E)))
                    (= U_max (/ S T))
                    (= Ux (list-of U_max x_opt))))))

(def-answer p2 (PLam Ux (= Ux (list-of (/ 9 8) (/ 4 3)))))

