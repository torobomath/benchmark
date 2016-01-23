;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R104
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p3
  (Find (a)
    (exists (A B C b c) (&&
      (= a (length-of (seg B C)))
      (= b (length-of (seg A C)))
      (= c (length-of (seg A B)))
      (= (rad-of-angle (angle A B C)) (* 30 (Degree)))
      (= b (sqrt 2))
      (= c 2)
    ))
  )
)

(def-answer p3 (PLam a (|| (= a (- (sqrt 3) 1)) (= a (+ (sqrt 3) 1)))))

(def-directive p2
  (Find (ACB)
    (exists (A B C b c) (&&
       (= b (length-of (seg A C)))
       (= c (length-of (seg A B)))
       (= (rad-of-angle (angle A B C)) (* 30 (Degree)))
       (= b (sqrt 2))
       (= c 2)
       (= ACB (rad-of-angle (angle A C B)))
    ))
  )
)

(def-answer p2 (PLam ACB (|| (= ACB (* 45 (Degree))) (= ACB (* 135 (Degree))))))

(def-directive p1
  (Find (BAC)
    (exists (A B C b c) (&&
       (= b (length-of (seg A C)))
       (= c (length-of (seg A B)))
       (= (rad-of-angle (angle A B C)) (* 30 (Degree)))
       (= b (sqrt 2))
       (= c 2)
       (= BAC (rad-of-angle (angle B A C)))
    ))
  )
)

(def-answer p1 (PLam BAC (|| (= BAC (* 105 (Degree))) (= BAC (* 15 (Degree))))))

