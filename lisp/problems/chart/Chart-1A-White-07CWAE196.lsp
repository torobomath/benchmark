;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAE196
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (A B C D E s t) (&&
      (is-triangle A B C)
      (on D (seg A B))
      (on E (seg A C))
      (! (= A D))
      (! (= B D))
      (! (= A E))
      (! (= C E))
      (= (* (^ 3 2) (distance^2 A D)) (* (^ 2 2) (distance^2 A E)))
      (= (distance^2 B D) (* (^ 3 2) (distance^2 C E)))
      (exists (circle) (&&
        (circle-type circle)
        (on B circle)
        (on C circle)
        (on E circle)
        (on D circle)
      ))
      (< 0 s)
      (< 0 t)
      (= (distance^2 A D) (* (^ s 2) (distance^2 B D)))
      (= (distance^2 A B) (* (^ t 2) (distance^2 A C)))
      (= answer (list-of s t))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (A B C D E F s t) (&&
      (is-triangle A B C)
      (on D (seg A B))
      (on E (seg A C))
      (! (= A D))
      (! (= B D))
      (! (= A E))
      (! (= C E))
      (= (* (^ 3 2) (distance^2 A D)) (* (^ 2 2) (distance^2 A E)))
      (= (distance^2 B D) (* (^ 3 2) (distance^2 C E)))
      (exists (circle) (&&
        (circle-type circle)
        (on B circle)
        (on C circle)
        (on E circle)
        (on D circle)
      ))
      (intersect (line D E) (line B C) F)
      (< 0 s)
      (< 0 t)
      (= (distance^2 B C) (* (^ s 2) (distance^2 C F)))
      (= (distance^2 D E) (* (^ t 2) (distance^2 E F)))
      (= answer (list-of s t))
    ))
  )
)

(def-answer p1 (PLam answer (= answer (list-of (/ 2 5) (/ 3 2)))))

(def-answer p2 (PLam answer (= answer (list-of (/ 7 2) 1))))

