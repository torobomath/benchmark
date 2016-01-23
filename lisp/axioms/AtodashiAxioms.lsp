(import "axioms/ComplexTypes.lsp")
(namespace complex)

(axiom
  complex_pow7
  (a1 a2)
  (= (^ (complex a1 a2) 7)
     (* (complex a1 a2) 
        (^ (complex a1 a2) 6))))
(axiom
  complex_pow8
  (a1 a2)
  (= (^ (complex a1 a2) 8)
     (* (complex a1 a2) 
        (^ (complex a1 a2) 7))))
(axiom
  complex_pow9
  (a1 a2)
  (= (^ (complex a1 a2) 9)
     (* (complex a1 a2) 
        (^ (complex a1 a2) 8))))

(import "axioms/Geom3DTypes.lsp")
(namespace 3d)

(axiom
  def-sides-of-square-pyramid
  (O A B C D)
  (= (sides-of (square-pyramid O A B C D))
     (list-of (seg O A)
              (seg O B)
              (seg O C)
              (seg O D)
              (seg A B)
              (seg B C)
              (seg C D)
              (seg D A))))

(import "axioms/Geom2DTypes.lsp")
(namespace 2d)

(axiom
  def-is-slope-of-poly-fun-graph-1
  (a b s)
  (<-> (is-slope-of s (graph-of (poly-fun (list-of b a)))) ;; y = ax + b
       (= s a)))

(axiom
  def-is-slope-of-poly-fun-graph-0
  (b s)
  (<-> (is-slope-of s (graph-of (poly-fun (list-of b)))) ;; y = b
       (= s 0)))

(axiom
  def-is-slope-of-poly-fun-graph-00
  (s)
  (<-> (is-slope-of s (graph-of (poly-fun (nil)))) ;; y = 0
       (= s 0)))

;; TORIAEZU
(axiom
  def-length-of-union-of-shapes
  (ss)
  (= (length-of (union ss))
     (sum (map (Lam x (length-of x)) ss))))

;(axiom
;  def-line-parameter-of-poly-fun-graph-deg1
;  (b a)
;  (= (line-parameter (graph-of (poly-fun (list-of b a))))
;     (list-of a -1 b)))

(default-namespace)
(import "axioms/DefaultTypes.lsp")

(def-fun hold-open :: Prop => Bool)
(axiom
  def-hold-open
  (p)
  (<-> (hold-open (prop p))
       (PLamApp p (_))))

;; IA
(namespace 2d)
(axiom
 def-translation-of-parabola
 (c b a v)
 (= (translate (graph-of (poly-fun (list-of c b a))) v)
    (graph-of (poly-fun (list-of (+ (* a (^ (vec-x-coord v) 2))
                                             (- (* b (vec-x-coord v)))
                                             c
                                             (vec-y-coord v))
                                          (- b (* 2 a (vec-x-coord v)))
                                          a)))))
;(axiom
;  def-translation-of-fun-graph
;  (f v)
;  (= (translate (graph-of (fun f)) v)
;     (graph-of (fun (Lam x (+ (funapp f (- x (vec-x-coord v))) (vec-y-coord v)))))))
(axiom
  def-translation-of-fun-graph
  (f v)
  (= (translate (graph-of f) v)
     (graph-of (fun (Lam x (+ (funapp f (- x (vec-x-coord v))) (vec-y-coord v)))))))

(axiom
  def-are-intersection-points-of-line-and-circle
  (c r p q Ps)
  (<-> (are-intersection-points-of Ps (list-of (line p q) (circle c r)))
       (|| (&& (= Ps (nil))
               (! (intersect (circle c r) (line p q))))
           (exists (P)
               (&& (= Ps (list-of P))
                   (tangent (circle c r) (line p q))))
           (exists (P Q)
               (&& (= Ps (list-of P Q))
                   (intersect (circle c r) (line p q) P)
                   (intersect (circle c r) (line p q) Q)
                   (! (= P Q)))))))
(axiom
  def-are-intersection-points-of-circle-and-line
  (c r p q Ps)
  (<-> (are-intersection-points-of Ps (list-of (circle c r) (line p q)))
       (are-intersection-points-of Ps (list-of (line p q) (circle c r)))))

(axiom
  def-are-intersection-points-of-seg-and-circle
  (c r p q Ps)
  (<-> (are-intersection-points-of Ps (list-of (seg p q) (circle c r)))
       (|| (&& (= Ps (nil))
               (! (intersect (circle c r) (seg p q))))
           (exists (P)
               (&& (= Ps (list-of P))
                   (tangent (circle c r) (seg p q))))
           (exists (P Q)
               (&& (= Ps (list-of P Q))
                   (intersect (circle c r) (seg p q) P)
                   (intersect (circle c r) (seg p q) Q)
                   (! (= P Q)))))))
(axiom
  def-are-intersection-points-of-circle-and-seg
  (c r p q Ps)
  (<-> (are-intersection-points-of Ps (list-of (circle c r) (seg p q)))
       (are-intersection-points-of Ps (list-of (seg p q) (circle c r)))))
