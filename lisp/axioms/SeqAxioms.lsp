;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Number sequence
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(namespace seq)
(import "axioms/SeqTypes.lsp")

;;------------------------------------------------------------------------------
;; typing trigger
;;------------------------------------------------------------------------------
(def-typing-trigger
 (is-sequence s)
 (f)
 (= s (seq f)))

(def-typing-trigger
  (is-integer-seq s)
  (f)
  (= s (int-seq f))
)

(def-typing-trigger
  (is-arith-seq s)
  (ini d)
  (= s (arith-seq ini d)))

(def-typing-trigger
  (is-geom-seq s)
  (ini r)
  (= s (geom-seq ini r)))


(axiom
  def-index-value-of
  (n)
  (= (index-value-of (index n)) n))
;;------------------------------------------------------------------------------
;; equality
;;------------------------------------------------------------------------------
(axiom
  seq-equality1
  (f1 s2)
  (<-> (= (seq f1) s2)
       (= f1 (fun-of s2))))

(axiom
  seq-equality2
  (a1 f s)
  (<-> (= (seq-by-rec1 a1 f) s)
       (= (fun-of (seq-by-rec1 a1 f)) (fun-of s))))

(axiom
  seq-equality3
  (a1 a2 f s)
  (<-> (= (seq-by-rec2 a1 a2 f) s)
       (= (fun-of (seq-by-rec2 a1 a2 f)) (fun-of s))))

(axiom
  seq-equality4
  (a1 a2 a3 f s)
  (<-> (= (seq-by-rec3 a1 a2 a3 f) s)
       (= (fun-of (seq-by-rec3 a1 a2 a3 f)) (fun-of s))))

(axiom
  seq-equality5
  (a1 d s)
  (<-> (= (arith-seq a1 d) s)
       (= (fun-of (arith-seq a1 d)) (fun-of s))))

(axiom
  seq-equality6
  (a1 r s)
  (<-> (= (geom-seq a1 r) s)
       (= (fun-of (geom-seq a1 r)) (fun-of s))))

;;------------------------------------------------------------------------------
;; Conversion to function Z -> R
;;------------------------------------------------------------------------------
(axiom
  def-fun-of-seq
  (f)
  (= (fun-of (seq f))
     f))

(axiom
  def-fun-of-arith-seq
  (a1 d)
  (= (fun-of (arith-seq a1 d))
     (Lam n (+ a1 (* d (- (int->real n) 1))))))

(axiom
  def-fun-of-geom-seq
  (a1 r)
  (= (fun-of (geom-seq a1 r))
     (Lam n (* a1 (^ r (- (int->real n) 1))))))

(axiom
  def-fun-of-int-seq
  (f)
  (= (fun-of (int-seq f))
     (Lam n (int->real (LamApp f n)))
     )
)

;;------------------------------------------------------------------------------
;; nth-term-of
;;------------------------------------------------------------------------------
(axiom
  def-nth-term-of-seq
  (s n)
  (= (nth-term-of s (index n))
     (LamApp (fun-of s) n)))

;;------------------------------------------------------------------------------
;; plus/minus/scalar product
;;------------------------------------------------------------------------------
(axiom
 def-seq-plus
 (s1 s2)
 (= (seq+ s1 s2)
    (seq (Lam n (+ (LamApp (fun-of s1) n)
                   (LamApp (fun-of s2) n))))))

(axiom
 def-seq-minus
 (s1 s2)
 (= (seq- s1 s2)
    (seq (Lam n (- (LamApp (fun-of s1) n)
                   (LamApp (fun-of s2) n))))))

(axiom
  def-seq-scalar-mult
  (c s)
  (= (s* c s)
     (seq (Lam n (* c (LamApp (fun-of s) n))))))

;;------------------------------------------------------------------------------
;; difference sequence
;;------------------------------------------------------------------------------
;; diff-seq-of :: Seq => Seq
(axiom
  def-diff-seq-of
  (s)
  (= (diff-seq-of s)
     (seq (Lam n (- (nth-term-of s (index (int.+ n 1)))
                    (nth-term-of s (index n)))))))

;;------------------------------------------------------------------------------
;; sum and product
;;------------------------------------------------------------------------------
(axiom
 def-sum-seq
 (s)
 (= (sum-seq s)
    (seq-by-rec1 (nth-term-of s (index 1))
                 (Lam n (Lam pre (+ pre (nth-term-of s (index n))))))))

(axiom
 def-prod-seq
 (s)
 (= (prod-seq s)
    (seq-by-rec1 (nth-term-of s (index 1))
                 (Lam n (Lam pre (* pre (nth-term-of s (index n))))))))

;(axiom
;  def-sum-from-to-const-range
;  (s @from @to)
;  (= (sum-from-to s (index @from) (index @to))
;     (sum (map (Lam k (nth-term-of s (index k)))
;               (int.iota @from @to)))))
(axiom
  def-sum-from-to-const-range
  (s @from @to)
  (= (sum-from-to s (index @from) (index @to))
     (if (= @from @to)
       (nth-term-of s (index @from))
       (+ (nth-term-of s (index @from))
          (sum-from-to s (index (int.+ 1 @from)) (index @to))))))

(axiom
 def-sum-from-to
 (s from to)
 (= (sum-from-to s (index from) (index to))
    (let ((sum (sum-seq s)))
         (- (nth-term-of sum (index to)) (nth-term-of sum (index (int.- from 1)))))))

(axiom
  def-prod-from-to-const-range
  (s @from @to)
  (= (sum-from-to s (index @from) (index @to))
     (product (map (Lam k (nth-term-of s (index k)))
                   (int.iota @from @to)))))

(axiom
 def-prod-from-to
 (s from to)
 (= (prod-from-to s (index from) (index to))
    (let ((prod (prod-seq s)))
         (/ (nth-term-of prod (index to)) (nth-term-of prod (index (int.- from 1)))))))

;;------------------------------------------------------------------------------
;; properties of named sequences
;;------------------------------------------------------------------------------
(axiom
  def-common-diff-of-arith-seq
  (a1 d)
  (= (common-diff-of (arith-seq a1 d))
     d))

(axiom
  def-common-diff-of-other-seq
  (s)
  (= (common-diff-of s)
     (- (nth-term-of s (index 2)) (nth-term-of s (index 1)))))

(axiom
  def-common-ratio-of-geom-seq
  (a1 r)
  (= (common-ratio-of (geom-seq a1 r))
     r))

(axiom
  def-common-ratio-of-other-seq
  (s)
  (= (common-ratio-of s)
     (/ (nth-term-of s (index 2)) (nth-term-of s (index 1)))))


(axiom
  def-is-infinite-sum-of
	(a s)
	(<-> (is-infinite-sum-of a s)
			 (is-limit-of a (sum-seq s))))

;seq->ListOf E
;(axiom
; def-list-of-seq-from-to
; (a from to)
; (= (list-from-to a (index from) (index to))
;    (cond ((! (= from to)) (cons (nth-term-of a (index from)) (list-from-to a (index (int.+ from 1)) (index to))))
;	  ((= from to) (nil))
;     )
; )
;)



;;------------------------------------------------------------------------------
;; monotonicity
;;------------------------------------------------------------------------------

(axiom
  def-is-strictly-increasing
  (s)
  (<-> (is-strictly-increasing s)
       (forall (m n)
               (-> (< (int->real m) (int->real n))
                   (< (nth-term-of s (index m))
                      (nth-term-of s (index n)))))))


(axiom
  def-is-non-decreasing
  (s)
  (<-> (is-non-decreasing s)
       (forall (m n)
               (-> (<= (int->real m) (int->real n))
                   (<= (nth-term-of s (index m))
                       (nth-term-of s (index n)))))))

(axiom
  def-is-strictly-decreasing
  (s)
  (<-> (is-strictly-decreasing s)
       (forall (m n)
               (-> (< (int->real m) (int->real n))
                   (> (nth-term-of s (index m))
                      (nth-term-of s (index n)))))))

(axiom
  def-is-non-increasing
  (s)
  (<-> (is-non-increasing s)
       (forall (m n)
               (-> (<= (int->real m) (int->real n))
                   (>= (nth-term-of s (index m))
                       (nth-term-of s (index n)))))))


;;------------------------------------------------------------------------------
;; boundedness
;;------------------------------------------------------------------------------
(axiom
  def-is-bounded
  (s)
  (<-> (is-bounded s)
       (exists (C) (forall (n)
                           (&& (<= (nth-term-of s (index n)) C)
                               (<= (- C) (nth-term-of s (index n))))))))

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(axiom
  def-is-fin-arith-seq
  (xs) 
  (<-> (is-fin-arith-seq xs)
       (exists (d)
               (all (PLam v (= v d))
                    (zip-with (Lam x1 (Lam x2 (- x2 x1)))
                              xs
                              (cdr xs))))))

(axiom
  def-is-fin-geom-seq
  (xs) 
  (<-> (is-fin-arith-seq xs)
       (exists (r)
               (all (PLam v (= v r))
                    (zip-with (Lam x1 (Lam x2 (/ x2 x1)))
                              xs
                              (cdr xs))))))
(axiom
  def-finseq-common-diff-of-base
  (x1 x2 d)
  (<-> (= (finseq-common-diff-of (list-of x1 x2)) d)
       (= (- x2 x1) d)))

(axiom
  def-finseq-common-diff-of-rec
  (x1 x2 x3 xs d)
  (<-> (= (finseq-common-diff-of (cons x1 (cons x2 (cons x3 xs)))) d)
       (&& (= (- x2 x1) d)
           (= (finseq-common-diff-of (cons x2 (cons x3 xs))) d))))

(axiom
  def-finseq-common-ratio-of-base
  (x1 x2 r)
  (<-> (= (finseq-common-ratio-of (list-of x1 x2)) r)
       (= (/ x2 x1) r)))

(axiom
  def-finseq-common-ratio-of-rec
  (x1 x2 x3 xs r)
  (<-> (= (finseq-common-ratio-of (cons x1 (cons x2 (cons x3 xs)))) r)
       (&& (= (- x2 x1) r)
           (= (finseq-common-ratio-of (cons x2 (cons x3 xs))) r))))

;(axiom
;  def-finseq-common-diff-of
;  (x1 x2 xs)
;  (= (finseq-common-diff-of (cons x1 (cons x2 xs)))
;     (- x2 x1)))
;
;(axiom
;  def-finseq-common-ratio-of
;  (x1 x2 xs)
;  (= (finseq-common-ratio-of (cons x1 (cons x2 xs)))
;     (/ x2 x1)))
