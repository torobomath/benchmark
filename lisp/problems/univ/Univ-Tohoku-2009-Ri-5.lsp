;; DOMAIN:    Matrices
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2009, Science Course, Problem 5
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, $c$, $d$, $p$, and $q$ be the real numbers that satisfy
;; $a d - b c > 0$, $p > 0$, and $q > 0$. Assume that the two matrices
;; $A =(\begin{matrix} a & b\\ c & d\end{matrix})$ and
;; $P =(\begin{matrix} p & 0\\ 0 & q\end{matrix})$ satisfy
;; $A P A = P^2$. Answer the following questions:
;;
;; (1) Prove that $P^3 A = A P^3$.
;;
;; (2) Represent $A$ using $p$ and $q$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show
   (forall (a b c d p q A P)
     (->
      (&&
       (> (- (* a d) (* b c)) 0)
       (> p 0)
       (> q 0)
       (= A (matrix a b c d))
       (= P (matrix p 0 0 q))
       (= (m* A P A) (m^ P 2)))
      (= (m* (m^ P 3) A) (m* A (m^ P 3)))))))

(def-directive
  p2
  (Find (A)
   (exists (a b c d P)
           (&&
            (> (- (* a d) (* b c)) 0)
            (> p 0)
            (> q 0)
            (= A (matrix a b c d))
            (= P (matrix p 0 0 q))
            (= (m* A P A) (m^ P 2))))))

(def-answer p2 (PLam A (&&
  (< 0 p) (< 0 q)
  (|| (= A (matrix (sqrt p) 0 0 (sqrt q)))
      (= A (sm* -1 (matrix (sqrt p) 0 0 (sqrt q)))))
)))

