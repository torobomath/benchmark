;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE117
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 3d)

(def-directive p1
  (Find (answer)
    (exists (a b O A B C P s t) (&&
      (= a (vec O A))
      (= b (vec O B))
      (= answer (list-of s t))
      (is-regular-tetrahedron O A B C)
      (on P (plane1 O A B))
      (= (sv* 3 (vec O P)) (v+ (sv* 2 (vec A P)) (vec P B)))
      (= (vec O P) (v+ (sv* s a) (sv* t b)))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (a b c O A B C P G Q s t u) (&&
      (= O (point 0 0 0))
      (= a (vec O A))
      (= b (vec O B))
      (= c (vec O C))
      (= answer (list-of s t u))
      (is-regular-tetrahedron O A B C)
      (on P (plane1 O A B))
      (= (sv* 3 (vec O P)) (v+ (sv* 2 (vec A P)) (vec P B)))
      (is-center-of-gravity-of G (triangle A B C))
      (intersect (line G P) (plane1 O B C) Q)
      (= (vec O Q) (v+ (v+ (sv* s a) (sv* t b)) (sv* u c)))
    ))
  )
)

(def-answer p1 (PLam answer (= answer (list-of -1 (/ 1 2)))))

(def-answer p2 (PLam answer (= answer (list-of 0 (/ 3 8) (/ 1 4)))))

