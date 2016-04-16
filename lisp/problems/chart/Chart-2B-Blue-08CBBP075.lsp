;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP075
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (P Q R a b O A B c1 c2 d1 d2) (&&
      (= P (internally-dividing-point O A t))
      (= Q (internally-dividing-point A B t))
      (= R (internally-dividing-point B O t))
      (= a (vec O A))
      (= b (vec O B))
      (< 0 t) (< t 1)
      (is-triangle O A B)
      (= (vec P Q) (v+ (sv* c1 a) (sv* c2 b)))
      (= (vec P R) (v+ (sv* d1 a) (sv* d2 b)))
      (= answer (list-of c1 c2 d1 d2))
    ))
  )
)

(def-directive p2
  (Find (answer)
      (exists (O A B OA OB AB) (&&
        (is-triangle O A B)
        (= OA (distance O A))
        (= OB (distance O B))
        (= AB (distance A B))
        (= answer (list-of OA OB AB))
            (forall (t P Q R)
                   (-> (&& (< 0 t) (< t 1)
                           (= P (internally-dividing-point O A t))
                           (= Q (internally-dividing-point A B t))
                           (= R (internally-dividing-point B O t)))
                       (= (* OA (distance P Q)) (* OB (distance P R)))))))))

(def-answer p1 (PLam answer
  (exists (c1 c2 d1 d2)
   (&&
  (= answer (list-of c1 c2 d1 d2))
  (< 0 t) (< t 1)
  (= (- 1 (* 2 t)) c1)
  (= t c2)
  (= (- t) d1)
  (= (- 1 t) d2)
))))

(def-answer p2 (PLam answer (exists (OA OB AB) (&&
  (= answer (list-of OA OB AB))
  (< 0 OA)
  (= OA OB)
  (= OB AB)
))))

