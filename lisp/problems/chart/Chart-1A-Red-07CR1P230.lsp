;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P230
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-23

(namespace 3d)

(def-directive p1
  (Find (PQ)
    (exists (A B C D L M N P Q) (&&
      (is-acute-triangle A B C)
      (= (* 2 a) (distance B C))
      (= (* 2 b) (distance C A))
      (= (* 2 c) (distance A B))
      (= a (distance L D))
      (= b (distance M D))
      (= c (distance N D))
      (= L (midpoint-of B C))
      (= M (midpoint-of C A))
      (= N (midpoint-of A B))
      (= P (midpoint-of M N))
      (= Q (midpoint-of D L))
      (= PQ (distance P Q))
    ))
  )
)

(def-directive p2
  (Find (V)
    (exists (A B C D L M N) (&&
      (is-acute-triangle A B C)
      (= (* 2 a) (distance B C))
      (= (* 2 b) (distance C A))
      (= (* 2 c) (distance A B))
      (= a (distance L D))
      (= b (distance M D))
      (= c (distance N D))
      (= L (midpoint-of B C))
      (= M (midpoint-of C A))
      (= N (midpoint-of A B))
      (= V (volume-of (tetrahedron L M N D)))
    ))
  )
)

(def-answer p1 (PLam PQ (&&
  (< 0 a)
  (< 0 b)
  (< 0 c)
  (< a (+ b c))
  (< b (+ c a))
  (< c (+ a b))
  (< (^ a 2) (+ (^ b 2) (^ c 2)))
  (< (^ b 2) (+ (^ c 2) (^ a 2)))
  (< (^ c 2) (+ (^ a 2) (^ b 2)))
  (= PQ (sqrt (/ (+ (^ b 2) (- (^ c 2) (^ a 2))) 2)))
)))

(def-answer p2 (PLam V (&&
  (< 0 a)
  (< 0 b)
  (< 0 c)
  (< a (+ b c))
  (< b (+ c a))
  (< c (+ a b))
  (< (^ a 2) (+ (^ b 2) (^ c 2)))
  (< (^ b 2) (+ (^ c 2) (^ a 2)))
  (< (^ c 2) (+ (^ a 2) (^ b 2)))
  (= V (/ (sqrt (* 2 (* (+ (^ a 2) (- (^ b 2) (^ c 2))) (* (+ (^ b 2) (- (^ c 2) (^ a 2))) (+ (^ c 2) (- (^ a 2) (^ b 2))))))) 12))
)))

