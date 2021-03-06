;; DOMAIN:    Combinatorics, misc
;; THEORY:    PA(comb)
;; SOURCE:    International Mathematical Olympiad, 2014, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-15
;;
;; <PROBLEM-TEXT>
;; Let $n \geq 2$ be an integer. Consider an $n \times n$ chessboard consisting of $n^2$
;; unit squares. A configuration of $n$ rooks on this board is peaceful if every
;; row and every column contains exactly one rook. Find the greatest positive
;; integer $k$ such that, for each peaceful configuration of $n$ rooks, there
;; is a $k \times k$ square which does not contain a rook on any of its $k^2$ unit
;; squares.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (max_k)
     (maximum (set-by-def (PLam k
     (forall (ps)
          (-> (&& (= (list-len ps) n)
                  (forall (i)
                          (-> (&& (<= 0 i) (< i n))
                              (&& (<= 1 (fst (nth i ps)))
                                  (<= (fst (nth i ps)) n)
                                  (<= 1 (snd (nth i ps)))
                                  (<= (snd (nth i ps)) n))))
                  (forall (k l)
                          (-> (&& (<= 0 k) (< k n)
                                  (<= 0 l) (< l n))
                              (&& (! (= (fst (nth k ps)) (fst (nth l ps))))
                                  (! (= (snd (nth k ps)) (snd (nth l ps))))))))
              (exists (x y)
                      (&& (<= 0 x) (< (+ x k) n)
                          (<= 0 y) (< (+ y k) n)
                          (forall (i j)
                                  (-> (&& (<= x i) (< i (+ x k))
                                          (<= y j) (< j (+ y k)))
                                      (! (member (pair i j) ps))))))))))
          max_k)))

(def-answer p
  (PLam k (&& (< n (^ (+ k 1) 2))
              (<= (^ k 2) n))))

