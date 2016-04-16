;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2001, Science Course, Problem 4
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-23
;;
;; <PROBLEM-TEXT>
;; For the tetrahedron $OABC$, assume that $\vec{a} =\vec{OA}$,
;; $\vec{b} =\vec{OB}$, and $\vec{c} =\vec{OC}$. Let $L$, $M$, $N$, $P$,
;; $Q$, and $R$ be the middle points of the line segments $OA$, $OB$,
;; $OC$, $BC$, $CA$, and $AB$, respectively, and assume that
;; $\vec{p} =\vec{LP}$, $\vec{q} =\vec{MQ}$, and $\vec{r} =\vec{NR}$.
;;
;; (1) Prove that the line segments $LP$, $MQ$, and $NR$ intersect with
;; one another at a point.
;;
;; (2) Represent $\vec{a}$, $\vec{b}$, and $\vec{c}$ using $\vec{p}$,
;; $\vec{q}$, and $\vec{r}$.
;;
;; (3) Assume that the straight lines $LP$, $MQ$, and $NR$ are
;; orthogonal to one another. Let $X$ be the point in a space such that
;; $\vec{AX} =\vec{LP}$. Represent the volumes of the tetrahedrons
;; $XABC$ and $OABC$ using $|\vec{p}|$, $|\vec{q}|$, and $|\vec{r}|$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Show
   (forall (A B C L M N P Q R S)
     (->
      (&&
       (is-tetrahedron (origin) A B C)
       (= L (seg-midpoint-of (seg (origin) A)))
       (= M (seg-midpoint-of (seg (origin) B)))
       (= N (seg-midpoint-of (seg (origin) C)))
       (= P (seg-midpoint-of (seg B C)))
       (= Q (seg-midpoint-of (seg C A)))
       (= R (seg-midpoint-of (seg A B)))
       (on S (seg L P))
       (on S (seg M Q))
       (on S (seg N R)))
      (forall (T)
        (->
         (&&
          (on T (seg L P))
          (on T (seg M Q))
          (on T (seg N R)))
         (= S T)))))))

(def-directive
  p2
  (Find (a_b_c)
   (exists (A B C L M N P Q R a b c)
     (&&
      (is-tetrahedron (origin) A B C)
      (= a (vec (origin) A))
      (= b (vec (origin) B))
      (= c (vec (origin) C))
      (= L (seg-midpoint-of (seg (origin) A)))
      (= M (seg-midpoint-of (seg (origin) B)))
      (= N (seg-midpoint-of (seg (origin) C)))
      (= P (seg-midpoint-of (seg B C)))
      (= Q (seg-midpoint-of (seg C A)))
      (= R (seg-midpoint-of (seg A B)))
      (= p (vec L P))
      (= q (vec M Q))
      (= r (vec N R))
      (= a_b_c (list-of a b c))))))

(def-directive
  p3
  (Find (Vs)
   (exists (A B C L M N P Q R a b c p q r X V_XABC V_OABC)
     (&&
      (is-tetrahedron (origin) A B C)
      (= a (vec (origin) A))
      (= b (vec (origin) B))
      (= c (vec (origin) C))
      (= L (seg-midpoint-of (seg (origin) A)))
      (= M (seg-midpoint-of (seg (origin) B)))
      (= N (seg-midpoint-of (seg (origin) C)))
      (= P (seg-midpoint-of (seg B C)))
      (= Q (seg-midpoint-of (seg C A)))
      (= R (seg-midpoint-of (seg A B)))
      (= p (vec L P))
      (= q (vec M Q))
      (= r (vec N R))
      (= 0 (inner-prod (vec L P) (vec M Q)))
      (= 0 (inner-prod (vec M Q) (vec N R)))
      (= 0 (inner-prod (vec N R) (vec L P)))
      (= (vec A X) (vec L P))
      (= p_abs (radius p))
      (= q_abs (radius q))
      (= r_abs (radius r))
      (= V_XABC (volume-of (tetrahedron X A B C)))
      (= V_OABC (volume-of (tetrahedron O A B C)))
      (= Vs (list-of V_XABC V_OABC))))))

(def-answer p2 (PLam a_b_c (= a_b_c (list-of (v+ q r) (v+ p r) (v+ p q)))))

(def-answer p3 (PLam Vs (= Vs (list-of
  (* (/ 1 6) p_abs q_abs r_abs)
  (* (/ 1 3) p_abs q_abs r_abs)
))))

