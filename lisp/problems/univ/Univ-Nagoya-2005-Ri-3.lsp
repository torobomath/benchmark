;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2005, Science Course, Problem 3
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-07-30
;;
;; <PROBLEM-TEXT>
;; Consider the regular tetrahedron $OABC$ whose side length is $1$, and
;; define $\vec{OA} =\vec{a}$, $\vec{OB} =\vec{b}$, and
;; $\vec{OC} =\vec{c}$. The point $P$ starts to move on the side $OA$
;; from $O$ to $A$ at the speed of $1$ per second, the point $Q$, on the
;; side $AB$ from $A$ to $B$ at the speed of $\frac{1}{2}$ per second,
;; the point $R$, on the side $BC$ from $B$ to $C$ at the speed of $1$
;; per second, and the point $S$, on the side $CO$ from $C$ to $O$ at
;; the speed of $\frac{1}{2}$ per second, simultaneously.
;;
;; (1) Represent the vectors $\vec{OP}$, $\vec{OQ}$, $\vec{OR}$, and
;; $\vec{OS}$ $t$ seconds ( $0\le t\le 1$) after the start using
;; $\vec{a}$, $\vec{b}$, $\vec{c}$ and $t$.
;;
;; (2) When the line segments $PR$ and $QS$ have the intersection $M$,
;; find the value of $t$ ( $0\le t\le 1$), and represent the vector
;; $\vec{OM}$ using $\vec{a}$, $\vec{b}$, and $\vec{c}$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (op)
  (let* ((O (origin)))
    (exists (A B C P Q R S)
      (&& (= 1 (distance O A))
          (= 1 (distance O B))
          (= 1 (distance O C))
          (= 1 (distance A B))
          (= 1 (distance A C))
          (= 1 (distance B C))
          (is-tetrahedron O A B C)
          (= a (vec O A))
          (= b (vec O B))
          (= c (vec O C))
          (|| (on P (seg O A)) (= P O) (= P A))
          (= t (distance O P))
          (= (/ t 2) (distance A Q))
          (on Q (seg A B))
          (= t (distance B R))
          (on R (seg B C))
          (= (/ t 2) (distance C S))
          (on S (seg C O))
          (<= 0 t)
          (<= t 1)
          (= op (vec O P))
)))))

(def-answer
  p1
  (PLam op (= op (sv* t a))))

(def-directive
  p2
  (Find (oq)
  (let* ((O (origin)))
    (exists (A B C P Q R S)
      (&& (= 1 (distance O A))
          (= 1 (distance O B))
          (= 1 (distance O C))
          (= 1 (distance A B))
          (= 1 (distance A C))
          (= 1 (distance B C))
          (is-tetrahedron O A B C)
          (= a (vec O A))
          (= b (vec O B))
          (= c (vec O C))
          (= t (distance O P))
          (on P (seg O A))
          (= (/ t 2) (distance A Q))
          (on Q (seg A B))
          (= t (distance B R))
          (on R (seg B C))
          (= (/ t 2) (distance C S))
          (on S (seg C O))
          (<= 0 t)
          (<= t 1)
          (= oq (vec O Q)))))))

(def-answer
  p2
  (PLam oq (= oq (v+ (sv* (- 1 (/ t 2)) a) (sv* (/ t 2) b)))))

(def-directive
  p3
  (Find (or)
  (let* ((O (origin)))
    (exists (A B C P Q R S)
      (&& (= 1 (distance O A))
          (= 1 (distance O B))
          (= 1 (distance O C))
          (= 1 (distance A B))
          (= 1 (distance A C))
          (= 1 (distance B C))
          (is-tetrahedron O A B C)
          (= a (vec O A))
          (= b (vec O B))
          (= c (vec O C))
          (= t (distance O P))
          (on P (seg O A))
          (= (/ t 2) (distance A Q))
          (on Q (seg A B))
          (= t (distance B R))
          (on R (seg B C))
          (= (/ t 2) (distance C S))
          (on S (seg C O))
          (<= 0 t)
          (<= t 1)
          (= or (vec O R)))))))

(def-answer
  p3
  (PLam or (= or (v+ (sv* (- 1 t) b) (sv* t c)))))

(def-directive
  p4
  (Find (os)
  (let* ((O (origin)))
    (exists (A B C P Q R S)
      (&& (= 1 (distance O A))
          (= 1 (distance O B))
          (= 1 (distance O C))
          (= 1 (distance A B))
          (= 1 (distance A C))
          (= 1 (distance B C))
          (is-tetrahedron O A B C)
          (= a (vec O A))
          (= b (vec O B))
          (= c (vec O C))
          (= t (distance O P))
          (on P (seg O A))
          (= (/ t 2) (distance A Q))
          (on Q (seg A B))
          (= t (distance B R))
          (on R (seg B C))
          (= (/ t 2) (distance C S))
          (on S (seg C O))
          (<= 0 t)
          (<= t 1)
          (= os (vec O S)))))))

(def-answer
  p4
  (PLam os (= os (sv* (- 1 (/ t 2)) c))))

(def-directive
  p5
  (Find (t)
  (let* ((O (origin)))
    (exists (A B C P Q R S a b c)
      (&& (= 1 (distance O A))
          (= 1 (distance O B))
          (= 1 (distance O C))
          (= 1 (distance A B))
          (= 1 (distance A C))
          (= 1 (distance B C))
          (is-tetrahedron O A B C)
          (= a (vec O A))
          (= b (vec O B))
          (= c (vec O C))
          (= t (distance O P))
          (on P (seg O A))
          (= (/ t 2) (distance A Q))
          (on Q (seg A B))
          (= t (distance B R))
          (on R (seg B C))
          (= (/ t 2) (distance C S))
          (on S (seg C O))
          (<= 0 t)
          (<= t 1)
          (intersect (seg P R) (seg Q S)))))))

(def-answer
  p5
  (PLam t (= t (/ 2 3))))

(def-directive
  p6
  (Find (om)
  (let* ((O (origin)))
    (exists (A B C P Q R S M)
      (exists (t)
      (&& (= 1 (distance O A))
          (= 1 (distance O B))
          (= 1 (distance O C))
          (= 1 (distance A B))
          (= 1 (distance A C))
          (= 1 (distance B C))
          (is-tetrahedron O A B C)
          (= a (vec O A))
          (= b (vec O B))
          (= c (vec O C))
          (= t (distance O P))
          (on P (seg O A))
          (= (/ t 2) (distance A Q))
          (on Q (seg A B))
          (= t (distance B R))
          (on R (seg B C))
          (= (/ t 2) (distance C S))
          (on S (seg C O))
          (<= 0 t)
          (<= t 1)
          (intersect (seg P R) (seg Q S) M)
          (= om (vec O M))))))))

(def-answer
  p6
  (PLam om (= om (v+ (sv* (/ 1 3) a) (sv* (/ 1 6) b) (sv* (/ 1 3) c)))))

