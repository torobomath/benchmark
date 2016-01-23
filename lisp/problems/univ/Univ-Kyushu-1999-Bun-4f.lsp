;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 1999, Humanities Course, Problem 4f
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2014-01-25
;;
;; <PROBLEM-TEXT>
;; Assume that the spatial vectors $\vec{a}$, $\vec{b}$, and $\vec{c}$
;; with a magnitude of 1 satisfy
;; $\vec{a}\cdot\vec{b} =\vec{b}\cdot\vec{c} = -\frac{1}{2}$ and
;; $\vec{a}\cdot\vec{c} = 0$. When the spatial vectors $\vec{d}$,
;; $\vec{e}$, and $\vec{f}$ satisfy $\vec{a}\cdot\vec{d} = 1$,
;; $\vec{b}\cdot\vec{d} = 0$, $\vec{c}\cdot\vec{d} = 0$,
;; $\vec{a}\cdot\vec{e} = 0$, $\vec{b}\cdot\vec{e} = 1$,
;; $\vec{c}\cdot\vec{e} = 0$, $\vec{a}\cdot\vec{f} = 0$,
;; $\vec{b}\cdot\vec{f} = 0$, and $\vec{c}\cdot\vec{f} = 1$, answer the
;; following questions about the points $D(\vec{d})$, $E(\vec{e})$,
;; $F(\vec{f})$, and the origin $O$.
;;
;; (1) Represent the real numbers $x$, $y$, and $z$ such that
;; $\vec{d} = x\vec{a} + y\vec{b} + z\vec{c}$. Also represent $\vec{f}$
;; using $\vec{a}$, $\vec{b}$, and $\vec{c}$.
;;
;; (2) Find the magnitudes of the vector $\vec{d}$, $\vec{f}$, and
;; $\vec{d} -\vec{f}$.
;;
;; (3) Find the area of the triangle $ODF$.
;;
;; (4) Find the volume of the tetrahedron $ODEF$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1_1
  (Find (xyz)
   (exists (a b c d e f O x y z D E F)
    (&& (= 1 (radius a))
        (= 1 (radius b))
        (= 1 (radius c))
        (= (inner-prod a b) (- (/ 1 2)))
        (= (inner-prod b c) (- (/ 1 2)))
        (= (inner-prod a c) 0)
        (= (inner-prod a d) 1) (= (inner-prod b d) 0) (= (inner-prod c d) 0)
        (= (inner-prod a e) 0) (= (inner-prod b e) 1) (= (inner-prod c e) 0)
        (= (inner-prod a f) 0) (= (inner-prod b f) 0) (= (inner-prod c f) 1)
        (= D (vec->point d))
        (= E (vec->point e))
        (= F (vec->point f))
        (= O (origin))
        (= d (v+ (sv* x a) (v+ (sv* y b) (sv* z c))))
        (= xyz (list-of x y z))))))

(def-directive
  p1_2
  (Find (f)
   (exists (d e O D E F)
    (&& (= 1 (radius a))
        (= 1 (radius b))
        (= 1 (radius c))
        (= (inner-prod a b) (- (/ 1 2)))
        (= (inner-prod b c) (- (/ 1 2)))
        (= (inner-prod a c) 0)
        (= (inner-prod a d) 1) (= (inner-prod b d) 0) (= (inner-prod c d) 0)
        (= (inner-prod a e) 0) (= (inner-prod b e) 1) (= (inner-prod c e) 0)
        (= (inner-prod a f) 0) (= (inner-prod b f) 0) (= (inner-prod c f) 1)
        (= D (vec->point d))
        (= E (vec->point e))
        (= F (vec->point f))
        (= O (origin))))))

(def-directive
  p2
  (Find (ans)
   (exists (a b c d e f O D E F)
    (&& (= 1 (radius a))
        (= 1 (radius b))
        (= 1 (radius c))
        (= (inner-prod a b) (- (/ 1 2)))
        (= (inner-prod b c) (- (/ 1 2)))
        (= (inner-prod a c) 0)
        (= (inner-prod a d) 1) (= (inner-prod b d) 0) (= (inner-prod c d) 0)
        (= (inner-prod a e) 0) (= (inner-prod b e) 1) (= (inner-prod c e) 0)
        (= (inner-prod a f) 0) (= (inner-prod b f) 0) (= (inner-prod c f) 1)
        (= D d)
        (= E e)
        (= F f)
        (= O (origin))
        (= ans (list-of (radius d) (radius f) (radius (v- d f))))))))

(def-directive
  p3
  (Find (areaODF)
   (exists (a b c d e f O D E F)
    (&& (= 1 (radius a))
        (= 1 (radius b))
        (= 1 (radius c))
        (= (inner-prod a b) (- (/ 1 2)))
        (= (inner-prod b c) (- (/ 1 2)))
        (= (inner-prod a c) 0)
        (= (inner-prod a d) 1) (= (inner-prod b d) 0) (= (inner-prod c d) 0)
        (= (inner-prod a e) 0) (= (inner-prod b e) 1) (= (inner-prod c e) 0)
        (= (inner-prod a f) 0) (= (inner-prod b f) 0) (= (inner-prod c f) 1)
        (= D (vec->point d))
        (= E (vec->point e))
        (= F (vec->point f))
        (= O (origin))
        (= areaODF (area-of (triangle O D F)))))))

(def-directive
  p4
  (Find (volumeODEF)
   (exists (a b c d e f O D E F)
    (&& (= 1 (radius a))
        (= 1 (radius b))
        (= 1 (radius c))
        (= (inner-prod a b) (- (/ 1 2)))
        (= (inner-prod b c) (- (/ 1 2)))
        (= (inner-prod a c) 0)
        (= (inner-prod a d) 1) (= (inner-prod b d) 0) (= (inner-prod c d) 0)
        (= (inner-prod a e) 0) (= (inner-prod b e) 1) (= (inner-prod c e) 0)
        (= (inner-prod a f) 0) (= (inner-prod b f) 0) (= (inner-prod c f) 1)
        (= D (vec->point d))
        (= E (vec->point e))
        (= F (vec->point f))
        (= O (origin))
        (= volumeODEF (volume-of (tetrahedron O D E F)))))))

(def-answer p1_1 (PLam xyz (= xyz (list-of (/ 3 2) 1 (/ 1 2)))))

(def-answer p1_2 (PLam f (= f (v+ (sv* (/ 1 2) a) b (sv* (/ 3 2) c)))))

(def-answer p2 (PLam ans (= ans (list-of (/ (sqrt 6) 2) (/ (sqrt 6) 2) (sqrt 2)))))

(def-answer p3 (PLam areaODF (= areaODF (/ (sqrt 2) 2))))

(def-answer p4 (PLam volumeODEF (= volumeODEF (/ (sqrt 2) 6))))

