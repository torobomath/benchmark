;; DOMAIN:    Matrices
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2007, Humanities Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-02-15
;;
;; <PROBLEM-TEXT>
;; Answer the following questions.
;;
;; (1) When $A=(\begin{matrix} 2 & 4\\ -1 & -1\end{matrix})$ and
;; $E=(\begin{matrix} 1 & 0\\ 0 & 1\end{matrix})$, find
;; $A^6+2 A^4+2 A^3+2 A^2+2 A+3 E$.
;;
;; (2) Consider the quadrangular pyramid $OABCD$ whose base is the
;; quadrilateral $ABCD$. The point $P$ is at the vertex $O$ at the time
;; of $0$, and moves to any of the $5$ vertices of the quadrangular
;; pyramid every $1$ second according to the following rule: Rule: Move
;; to any of the vertices connected to the vertex where the point $P$
;; exists via one side with the same probability. Find the probability
;; that the point $P$ is at the vertex $O$ after $n$ seconds.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (x)
  (let* ((A (matrix 2 4 -1 -1)) (E (matrix 1 0 0 1)))
    (= x
       (m+ (m^ A 6) (sm* 2 (m^ A 4)) (sm* 2 (m^ A 3)) (sm* 2 (m^ A 2)) (sm* 2 A) (sm* 3 E))))))

(def-answer p1 (PLam x (= x (matrix 3 4 -1 0))))

