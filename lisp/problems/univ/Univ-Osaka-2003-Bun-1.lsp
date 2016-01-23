;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2003, Humanities Course, Problem 1
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-30
;;
;; <PROBLEM-TEXT>
;; For the planar vectors $\vec{p} =(p_1, p_2)$ and
;; $\vec{q} =(q_1, q_2)$, define
;; $\{\vec{p}, \vec{q}\} = p_1 q_2 - p_2 q_1$.
;;
;; (1) For the planar vectors $\vec{a}$, $\vec{b}$, and $\vec{c}$,
;; define $\{\vec{a}, \vec{b}\} = l$, $\{\vec{b}, \vec{c}\} = m$, and
;; $\{\vec{c}, \vec{a}\} = n$, then prove that
;; $l\vec{c} + m\vec{a} + n\vec{b} =\vec{0}$ is true.
;;
;; (2) Let $l$, $m$, and $n$ be all positive in (1). Then, prove that an
;; arbitrary planar vector $\vec{d}$ can be represented as
;; $\vec{d} = r\vec{a} + s\vec{b} + t\vec{c}$ using real numbers $r$,
;; $s$, and $t$, which are equal to or larger than $0$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show
   (exists (func)
     (&&
      (= func (Lam p (Lam q (- (* (x-coord p) (y-coord q)) (* (y-coord p) (x-coord q))))))
      (forall (a b c)
        (exists (l m n)
          (&&
           (= (LamApp (LamApp func a) b) l)
           (= (LamApp (LamApp func b) c) m)
           (= (LamApp (LamApp func c) a) n)
           (= (v-sum (list-of (sv* l (vec (origin) c)) (sv* m (vec (origin) a)) (sv* n (vec (origin) b)))) (zero-vector)))))))))

(def-directive
  p2
  (Show
   (exists (func)
           (&&
            (= func (Lam p (Lam q (- (* (x-coord p) (y-coord q)) (* (y-coord p) (x-coord q))))))
      (forall (a b c l m n)
        (->
         (&&
          (= (LamApp (LamApp func a) b) l)
          (= (LamApp (LamApp func b) c) m)
          (= (LamApp (LamApp func c) a) n)
          (< 0 l)
          (< 0 m)
          (< 0 n))
         (forall (d)
           (exists (r s t)
             (&&
              (<= 0 r)
              (<= 0 s)
              (<= 0 t)
              (= d (v-sum (list-of (sv* r (vec (origin) c)) (sv* s (vec (origin) a)) (sv* t (vec (origin) b))))))))))))))

(def-directive
  p2_1
  (Show
   (exists (func a b c l m n)
           (&&
            (= func (Lam p (Lam q (- (* (x-coord p) (y-coord q)) (* (y-coord p) (x-coord q))))))
            (= (LamApp (LamApp func a) b) l)
            (= (LamApp (LamApp func b) c) m)
            (= (LamApp (LamApp func c) a) n)
      (->
       (&&
        (< 0 l)
        (< 0 m)
        (< 0 n))
       (forall (d)
         (exists (r s t)
           (&&
            (<= 0 r)
            (<= 0 s)
            (<= 0 t)
            (= d (v-sum (list-of (sv* r (vec (origin) c)) (sv* s (vec (origin) a)) (sv* t (vec (origin) b)))))))))))))

