;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2009, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-25
;;
;; <PROBLEM-TEXT>
;; Consider the triangle $OAB$ on a plane, and let $\vec{a} =\vec{OA}$,
;; $\vec{b} =\vec{OB}$, and $t =\frac{|\vec{a}|}{2 |\vec{b}|}$. Let $C$
;; be the point that internally divide the side $OA$ into the ratio
;; $1 : 2$, and let $C$ be the point that satisfies
;; $\vec{OD} = t\vec{b}$. Assuming that $\vec{AD}$ is orthogonal to
;; $\vec{OB}$, and $\vec{BC}$ is orthogonal to $\vec{OA}$, answer the
;; following questions:
;;
;; (1) Find the value of $\angle AOB$.
;;
;; (2) Find the value of $t$.
;;
;; (3) Let $P$ be the intersection of $AD$ and $BC$, represent
;; $\vec{OP}$ using $\vec{a}$ and $\vec{b}$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (AOB) (exists (O A B a b t C D)
                      (&& (is-triangle O A B)
                          (= a (vec O A))
                          (= b (vec O B))
                          (= t (/ (radius a)
                                  (* 2 (radius b))))
                          (divide-internally C (seg O A) 1 2)
                          (= (vec O D)
                             (sv* t b))
                          (perpendicular (line A D) (line O B))
                          (perpendicular (line B C) (line O A))
                          (= AOB (rad-of-angle (angle A O B)))))))

(def-answer p1 (PLam AOB (= AOB (* 60 (Degree)))))

(def-directive
  p2
  (Find (t) (exists (O A B a b C D)
                      (&& (is-triangle O A B)
            (= a (vec O A))
            (= b (vec O B))
            (= t (/ (radius a)
                    (* 2 (radius b))))
            (divide-internally C (seg O A) 1 2)
            (= (vec O D)
               (sv* t b))
            (perpendicular (line A D) (line O B))
            (perpendicular (line B C) (line O A))))))

(def-answer p2 (PLam t (= t (/ 3 4))))

(def-directive
  p3
  (Find (answer)
    (exists (O A B a b t C D P x y)
      (&& (= answer (list-of x y))
        (is-triangle O A B)
        (= a (vec O A))
        (= b (vec O B))
        (= t (/ (radius a) (* 2 (radius b))))
        (divide-internally C (seg O A) 1 2)
        (= (vec O D) (sv* t b))
        (perpendicular (line A D) (line O B))
        (perpendicular (line B C) (line O A))
        (intersect (line A D) (line B C) P)
        (= (vec O P) (v+ (sv* x a) (sv* y b)))))))

(def-answer p3 (PLam answer (= answer (list-of (/ 1 9) (/ 2 3)))))

