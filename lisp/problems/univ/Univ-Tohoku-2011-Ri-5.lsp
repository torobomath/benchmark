;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2011, Science Course, Problem 5
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; Let $a$ be a real number, and $z$, a complex number other than $0$.
;; Represent the complex number conjugate to $z$ as $\overline{z}$.
;;
;; (1) Find $z$ that satisfies the following: $z - 1 -\frac{a}{z} = 0$.
;;
;; (2) Find the range of $a$ such that there exists $z$ that satisfies
;; the following: $\overline{z} + 1 -\frac{a}{z} = 0$.
;;
;; (3) Find the range of $a$ such that there exists $z$ that satisfies
;; the following: $z(\overline{z})^2 +\overline{z} -\frac{a}{z} = 0$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1
  (Find (z)
        (&& (! (= z (complex 0 0)))
      (= (+ z (complex 1 0) (- (/ (real->complex a) z)))
         (complex 0 0)))))

(def-directive
  p2
  (Find (a)
        (exists (z)
          (&& (! (= z (complex 0 0)))
        (= (+ (conjugate z)
        (complex 1 0)
        (- (/ (real->complex a) z)))
           (complex 0 0))))))

(def-directive
  p3
  (Find (a)
        (exists (z)
          (&& (! (= z (complex 0 0)))
        (= (+ (* z (^ (conjugate z) 2))
        (conjugate z)
        (- (/ (real->complex a) z)))
           (complex 0 0))))))

(def-answer p1 (PLam z (|| (&& (.<= (./ (.- 1) 4) a) (.< a 0) (|| (= z (real->complex (./ (.+ (.- 1) (sqrt (.+ 1 (.* 4 a)))) 2)))
                     (= z (real->complex (./ (.- (.- 1) (sqrt (.+ 1 (.* 4 a)))) 2)))
                     )
             )
      (&& (.< 0 a) (|| (= z (real->complex (./ (.+ (.- 1) (sqrt (.+ 1 (.* 4 a)))) 2)))
              (= z (real->complex (./ (.- (.- 1) (sqrt (.+ 1 (.* 4 a)))) 2)))
              )
          )
      (&& (.< a (./ (.- 1) 4)) (|| (= z (complex (.- (./ 1 2)) (./ (sqrt (.- (.+ 1 (.* 4 a)))) 2)))
               (= z (complex (.- (./ 1 2)) (./ (.- (sqrt (.- (.+ 1 (.* 4 a))))) 2)))
               ))
      (&& (= a 0) (= z (real->complex (.- 1)))))))

(def-answer p2 (PLam a (.>= a (./ (.- 1) 4))))

(def-answer p3 (PLam a (.> a 0)))

