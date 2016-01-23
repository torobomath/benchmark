;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R101
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p1_1
  (Find (a)
    (exists (A B C b c) (&&
      (= b (length-of (seg A C)))
      (= c (length-of (seg A B)))
      (= b (- (sqrt 6) (sqrt 2)))
      (= c (* 2 (sqrt 3)))
      (= (rad-of-angle (angle C A B)) (* 45 (Degree)))
      (= a (length-of (seg B C)))
    ))
  )
)

(def-directive p1_2
  (Find (ACB)
    (exists (A B C b c) (&&
      (= b (length-of (seg A C)))
      (= c (length-of (seg A B)))
      (= b (- (sqrt 6) (sqrt 2)))
      (= c (* 2 (sqrt 3)))
      (= (rad-of-angle (angle C A B)) (* 45 (Degree)))
      (= ACB (rad-of-angle (angle A C B)))
    ))
  )
)

(def-directive p2
  (Find (c)
    (exists (A B C a b) (&&
      (= a (length-of (seg B C)))
      (= b (length-of (seg A C)))
      (= a 2)
      (= b (sqrt 6))
      (= (rad-of-angle (angle C B A)) (* 60 (Degree)))
      (= c (length-of (seg A B)))
    ))
  )
)

(def-answer p1_1 (PLam a (= a (* 2 (sqrt 2)))))

(def-answer p1_2 (PLam ACB (= ACB (* 120 (Degree)))))

(def-answer p2 (PLam c (= c (+ 1 (sqrt 3)))))

