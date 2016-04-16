;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2013, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-14
;;
;; <PROBLEM-TEXT>
;; Consider the quadrangular pyramid $POABC$ whose base is the square
;; $OABC$ with the side length of $1$ and whose vertex satisfies
;; $OP = AP = BP = CP$. Let $D$ be the point that internally divides the
;; side $AP$ in a ratio of $1 : 3$, $E$, the middle point of the side
;; $CP$, and $Q$, the point that internally divides the side $BC$ in a
;; ratio of $Q$. Answer the following questions:
;;
;; (1) Represent the vectors $\vec{OD}$ and $\vec{OE}$ using $\vec{OA}$,
;; $\vec{OC}$, and $\vec{OP}$.
;;
;; (2) Represent the vector $\vec{PQ}$ using $\vec{OA}$, $\vec{OC}$,
;; $\vec{OP}$, and $t$.
;;
;; (3) Find the value of the inner product $\vec{OA}\cdot\vec{OP}$.
;;
;; (4) When the straight line $PQ$ is perpendicular to the plane $ODE$,
;; find the value of $t$ and the length of the segment $OP$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1_1
  (Find (vecOD)
        (exists (O A B C P D E)
                (&& (is-regular-square O A B C)
                    (= (distance O A) 1)
                    (= (distance O P) (distance A P))
                    (= (distance A P) (distance B P))
                    (= (distance B P) (distance C P))
                    (divide-internally D (seg A P) 1 3)
                    (= E (midpoint-of C P))
                    (= vecOD (vec O D))
                    (= vecOA (vec O A))
                    (= vecOC (vec O C))
                    (= vecOP (vec O P))))))

(def-directive
  p1_2
  (Find (OE)
        (exists (O A B C P D E)
                (&& (is-regular-square O A B C)
                    (= (distance O A) 1)
                    (= (distance O P) (distance A P))
                    (= (distance A P) (distance B P))
                    (= (distance B P) (distance C P))
                    (divide-internally D (seg A P) 1 3)
                    (= E (midpoint-of C P))
                    (= OE (vec O E))
                    (= vecOA (vec O A))
                    (= vecOC (vec O C))
                    (= vecOP (vec O P))))))

(def-directive
  a2
  (Find (PQ)
        (exists (O A B C P Q)
                (&& (is-regular-square O A B C)
                    (= (distance O A) 1)
                    (= (distance O P) (distance A P))
                    (= (distance A P) (distance B P))
                    (= (distance B P) (distance C P))
                    (= vecOA (vec O A))
                    (= vecOC (vec O C))
                    (= vecOP (vec O P))
                    (divide-internally Q (seg B C) t (- 1 t))
                    (= PQ (vec P Q))))))

(def-directive
    a3
    (Find (x)
                (exists (O A B C P)
                                (&& (is-regular-square O A B C)
                                        (= (distance O A) 1)
                                        (= (distance O P) (distance A P))
                                        (= (distance A P) (distance B P))
                                        (= (distance B P) (distance C P))
                                        (= x (inner-prod (vec O A) (vec O P)))))))

(def-directive
    a4
    (Find (tOP)
         (exists (O A B C P D E Q PQ ODE t)
             (&& (= tOP (list-of t (distance O P)))
             (is-regular-square O A B C)
             (= (distance O A) 1)
             (= (distance O P) (distance A P))
             (= (distance A P) (distance B P))
             (= (distance B P) (distance C P))
             (is-square-pyramid P O A B C)
             (divide-internally D (seg A P) 1 3)
             (= E (midpoint-of C P))
             (divide-internally Q (seg B C) t (- 1 t))
             (= ODE (plane1 O D E))
             (= PQ (vec P Q))
             (is-normal-vector-of PQ ODE)))))

(def-answer p1_1 (PLam OD (= OD (v+ (sv* (/ 3 4) vecOA) (sv* (/ 1 4) vecOP)))))

(def-answer p1_2 (PLam OE (= OE (v+ (sv* (/ 1 2) vecOC) (sv* (/ 1 2) vecOP)))))

(def-answer a2 (PLam PQ (= PQ (v+ (sv* (- 1 t) vecOA) vecOC (sv* -1 vecOP)))))

(def-answer a3 (PLam x (= x (/ 1 2))))

(def-answer a4 (PLam tOP (exists (tOP1 tOP2) (&& (= tOP1 (/ 1 3))
                         (= tOP2 (/ 2 (sqrt 3)))
                             (= tOP (list-of tOP1 tOP2))))))

(def-answer a1 (PLam OD_OE (= OD_OE (list-of
                                      (v+ (sv* (/ 3 4) vecOA) (sv* (/ 1 4) vecOP))
                                      (v+ (sv* (/ 1 2) vecOC) (sv* (/ 1 2) vecOP))
                                      ))))

