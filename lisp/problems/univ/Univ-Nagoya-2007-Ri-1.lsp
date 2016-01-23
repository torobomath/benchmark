;; DOMAIN:    Matrices
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2007, Science Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-07-12
;;
;; <PROBLEM-TEXT>
;; Consider the $2$ x $2$ matrix
;; $(\begin{matrix} a & b\\ c & d\end{matrix})$. If $a$, $b$, and $d$
;; are real numbers and $c = 0$, the matrix
;; $(\begin{matrix} a & b\\ 0 & d\end{matrix})$ is called an upper
;; triangular matrix. Define
;; $E =(\begin{matrix} 1 & 0\\ 0 & 1\end{matrix})$.
;;
;; (1) Find all the upper triangular matrices $A$ that satisfy
;; $A^2 = E$.
;;
;; (2) Find all the upper triangular matrices $A$ that satisfy
;; $A^3 = E$.
;;
;; (3) When the upper triangular matrix $A$ satisfies $A^4 = E$, prove
;; that $A^2 = E$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (As)
  (exists (A)
    (&& (= (m^ A 2) (identity-matrix))
        (= A (matrix a b 0 d))
        (= As (list-of a b d))
        )
  )
))

(def-answer
  p1
  (PLam As (|| (&& (= b 0) (= a 1) (= d 1) (= As (list-of 1 0 1)))
    (&& (= b 0) (= a (- 1)) (= d (- 1)) (= As (list-of (- 1) 0 (- 1))))
    (&& (|| (<= b 0) (< 0 b)) (= a 1) (= d (- 1)) (= As (list-of 1 b (- 1))))
    (&& (|| (<= b 0) (< 0 b)) (= a (- 1)) (= d 1) (= As (list-of (- 1) b 1)))
      )
))

(def-directive
  p2
  (Find (As)
  (exists (A)
    (&& (= (m^ A 3) (identity-matrix))
        (= A (matrix a b 0 d))
        (= As (list-of a b d))
        )))
)

(def-answer
  p2
  (PLam As (&& (= a 1) (= d 1) (= b 0)
         (= As (list-of 1 0 1)))))

(def-directive
  p3
  (Show
   (forall (A a b d)
     (-> (&& (= (m^ A 4) (identity-matrix))
       (= A (matrix a b 0 d)))
         (= (m^ A 2) (identity-matrix))))))

