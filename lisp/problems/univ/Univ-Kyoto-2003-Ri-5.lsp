;; DOMAIN:    Matrices
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2003, Science Course, Problem 5
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-08
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, $c$, and $d$ be real numbers. For the second-order
;; square matrix $A=(\begin{matrix} a & b\\ c & d\end{matrix})$ and the
;; second-order unit matrix $E$, define the set $L(A)$ as
;; $L(A)=\{r E+s A| r and s are real numbers\}$. Find the necessary and
;; sufficient condition that $a$, $b$, $c$, and $d$ must satisfy in
;; order that the following condition (*) is true: (*) The element $B$
;; of $L(A)$ has an inverse matrix unless it is a zero matrix.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (abcd)
        (exists (a b c d A E)
                (&& (= abcd (list-of a b c d))
                    (= A (matrix a b c d))
                    (= E (identity-matrix))
                    (forall (r s)
                            (-> (! (= (m+ (sm* r E)
                                          (sm* s A))
                                      (zero-matrix)))
                                (is-non-singular (m+ (sm* r E)
                                                     (sm* s A)))))))))

(def-answer p (PLam abcd (exists (a b c d) (&&
  (= abcd (list-of a b c d))
  (|| (&& (= a d) (= b 0) (= c 0))
      (< (^ (+ a d) 2) (* 4 (- (* a d) (* b c))))
  )
))))

