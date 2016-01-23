;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A White Book, Problem 07CW1E305
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (A B C) (&&
      (is-triangle A B C)
      (= a (distance B C))
      (= b (distance C A))
      (= c (distance A B))
      (= (* a (sin-of-angle (angle C A B))) (* b (sin-of-angle (angle A B C))))
      (= answer (list-of a b c)))
    )
  )
)

(def-directive p2
  (Find (answer)
    (exists (A B C) (&&
      (is-triangle A B C)
      (= a (distance B C))
      (= b (distance C A))
      (= c (distance A B))
      (= (* (cos-of-angle (angle A B C)) (sin-of-angle (angle B C A))) (sin-of-angle (angle C A B)))
      (= answer (list-of a b c)))
    )
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of a b c))
  (< 0 a)
  (< 0 b)
  (< 0 c)
  (< a (+ b c))
  (< b (+ c a))
  (< c (+ a b))
  (= a b)
)))

(def-answer p2 (PLam answer (&&
  (= answer (list-of a b c))
  (< 0 a)
  (< 0 b)
  (< 0 c)
  (< a (+ b c))
  (< b (+ c a))
  (< c (+ a b))
  (= (+ (^ a 2) (^ b 2)) (^ c 2))
)))

