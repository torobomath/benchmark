;; DOMAIN:    Geometry, tetrahedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1969, Problem 3
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-18
;;
;; <PROBLEM-TEXT>
;; For each value of $k = 1, 2, 3, 4, 5$, find necessary and suffcient
;; conditions on the number $a > 0$ so that there exists a tetrahedron
;; with $k$ edges of length $a$, and the remaining $6 - k$ edges of length $1$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p1
  (Find (a)
  (exists (A B C D)
    (&& (is-tetrahedron A B C D)
        (= (length-of (seg A B)) a)
        (= (length-of (seg A C)) 1)
        (= (length-of (seg A D)) 1)
        (= (length-of (seg B C)) 1)
        (= (length-of (seg D B)) 1)
        (= (length-of (seg D C)) 1)
     )
   )
   )
)

(def-directive p2
  (Find (a)
  (exists (A B C D)
    (&& (is-tetrahedron A B C D)
        (|| (&& (= (length-of (seg A B)) a)
                    (= (length-of (seg A C)) a)
                    (= (length-of (seg A D)) 1)
                    (= (length-of (seg B C)) 1)
                    (= (length-of (seg D B)) 1)
                    (= (length-of (seg D C)) 1)
                    )
                (&& (= (length-of (seg A B)) a)
                    (= (length-of (seg A C)) 1)
                    (= (length-of (seg A D)) 1)
                    (= (length-of (seg B C)) 1)
                    (= (length-of (seg D B)) 1)
                    (= (length-of (seg D C)) a)
                    )
                )
     )
   )
   )
)

(def-directive p3
  (Find (a)
  (exists (A B C D)
    (&& (is-tetrahedron A B C D)
        (|| (&& (= (length-of (seg A B)) a)
                    (= (length-of (seg A C)) a)
                    (= (length-of (seg A D)) 1)
                    (= (length-of (seg B C)) a)
                    (= (length-of (seg D B)) 1)
                    (= (length-of (seg D C)) 1)
                    )
                (&& (= (length-of (seg A B)) a)
                    (= (length-of (seg A C)) a)
                    (= (length-of (seg A D)) 1)
                    (= (length-of (seg B C)) 1)
                    (= (length-of (seg D B)) 1)
                    (= (length-of (seg D C)) a)
                    )
                (&& (= (length-of (seg A B)) a)
                    (= (length-of (seg A C)) a)
                    (= (length-of (seg A D)) a)
                    (= (length-of (seg B C)) 1)
                    (= (length-of (seg D B)) 1)
                    (= (length-of (seg D C)) 1)
                    )
                )
     )
   )
   )
)

(def-directive p4
  (Find (a)
  (exists (A B C D)
    (&& (is-tetrahedron A B C D)
        (|| (&& (= (length-of (seg A B)) 1)
                    (= (length-of (seg A C)) 1)
                    (= (length-of (seg A D)) a)
                    (= (length-of (seg B C)) a)
                    (= (length-of (seg D B)) a)
                    (= (length-of (seg D C)) a)
                    )
                (&& (= (length-of (seg A B)) 1)
                    (= (length-of (seg A C)) a)
                    (= (length-of (seg A D)) a)
                    (= (length-of (seg B C)) a)
                    (= (length-of (seg D B)) a)
                    (= (length-of (seg D C)) 1)
                    )
                )
     )
   )
   )
)

(def-directive p5
  (Find (a)
  (exists (A B C D)
    (&& (is-tetrahedron A B C D)
        (= (length-of (seg A B)) 1)
        (= (length-of (seg A C)) a)
        (= (length-of (seg A D)) a)
        (= (length-of (seg B C)) a)
        (= (length-of (seg D B)) a)
        (= (length-of (seg D C)) a)
     )
   )
   )
)

(def-answer p1 (PLam a (&& (< 0 a) (< a (sqrt 3)))))

(def-answer p2 (PLam a (||
  (&& (< 0 a) (< a (sqrt 2)))
  (&& (< (sqrt (- 2 (sqrt 3))) a) (< a (sqrt (+ 2 (sqrt 3))))))))

(def-answer p3 (PLam a (> a 0)))

(def-answer p4 (PLam a (> a (sqrt (- 2 (sqrt 3))))))

(def-answer p5 (PLam a (> a (/ 1 (sqrt 3)))))

