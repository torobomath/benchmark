;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1966, Problem 1
;; SCORE:     6
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-24
;;
;; <PROBLEM-TEXT>
;; In a mathematical contest, three problems, $A$, $B$, $C$ were posed. Among the
;; participants there were $25$ students who solved at least one problem each.
;; Of all the contestants who did not solve problem $A$,  the number who solved
;; $B$ was twice the number who solved $C$. The number of students who solved
;; only problem $A$ was one more than the number of students who solved $A$
;; and at least one other problem. Of all students who solved just one problem,
;; half did not solve problem $A$. How many students solved only problem $B$?
;; </PROBLEM-TEXT>

(namespace int)

;;@ A student is represented by a triple (A, B, C)

;;@ where A, B, C in {0, 1} and x = 1 iff s/he solved problem x.

(def-directive
  p
  (Find (numOnlyB)
    (exists (Students)
       (&& (forall (ABC)
              (-> (member ABC Students)
                  (exists (A B C)
                     (&& (= ABC (triple A B C))
                         (is-integer A)
                         (is-integer B)
                         (is-integer C)
                         (|| (= A 0) (= A 1))
                         (|| (= B 0) (= B 1))
                         (|| (= C 0) (= C 1))))))
           (= 25 (list-len (filter (PLam ABC (! (= ABC (triple 0 0 0)))) Students)))
           (= (list-len (filter (PLam ABC (|| (= ABC (triple 0 1 0)) (= ABC (triple 0 1 1)))) Students))
              (* 2 (list-len (filter (PLam ABC (|| (= ABC (triple 0 0 1)) (= ABC (triple 0 1 1)))) Students))))
           (= (list-len (filter (PLam ABC (= ABC (triple 1 0 0))) Students))
              (+ 1 (list-len (filter (PLam ABC (|| (= ABC (triple 1 0 1))
                                                   (= ABC (triple 1 0 1))
                                                   (= ABC (triple 1 1 1)))) Students))))
           (= (list-len (filter (PLam ABC (|| (= ABC (triple 1 0 0))
                                              (= ABC (triple 0 1 0))
                                              (= ABC (triple 0 0 1)))) Students))
              (* 2 (list-len (filter (PLam ABC (|| (= ABC (triple 0 1 0))
                                                   (= ABC (triple 0 0 1)))) Students))))
           (= numOnlyB (list-len (filter (PLam ABC (= ABC (triple 0 1 0))) Students)))))))

(def-answer
  p
  (PLam numOnlyB (= numOnlyB 6))
)

