(import "axioms/DefaultTypes.lsp")
(import "axioms/IntegerTypes.lsp")

;;@-----------------------------------------------------------------------------
;;@ Number Sequences
;;@-----------------------------------------------------------------------------
(namespace seq)

;;@ sequences
(def-type Seq)

;;@ indices for sequences
(def-type Index)

;;@ index(n) = n of the type Index
(def-fun index :: Z => Index)

;;@ index-value-of(index(n)) = n
(def-fun index-value-of :: Index => Z)

;;@-----------------------------------------------------------------------------
;;@ Constructors
;;@-----------------------------------------------------------------------------
;;@ seq(a(*)) = the sequence (an), where a(*) is a function from integers to 
;;@ real numbers
(def-fun seq :: (Z -> R) => Seq)

;;@ int-seq(a(*)) = the sequence (an), where a(*) is a function from integers to
;;@ integers
(def-fun int-seq :: (Z -> Z) => Seq)

;;@ seq-by-rec1(a1, a(*,*)) = the sequence of which initial term is a1 and 
;;@ recurrence relation is an+1 = a(n, an)
(def-fun seq-by-rec1 :: R -> (Z -> R -> R) => Seq)

;;@ seq-by-rec1(a1, a(*,*,*)) = the sequence of which initial term is a1 and 
;;@ recurrence relation is an+2 = a(n, an+1, an)
(def-fun seq-by-rec2 :: R -> R -> (Z -> R -> R -> R) => Seq)

;;@ seq-by-rec1(a1, a(*,*,*,*)) = the sequence of which initial term is a1 and 
;;@ recurrence relation is an+3 = a(n, an+2, an+1, an)
(def-fun seq-by-rec3 :: R -> R -> R -> (Z -> R -> R -> R -> R) => Seq)

;;@ arith-seq(a1,d) = the arithmetic sequence of which initial term is a1 and 
;;@ common difference is d
(def-fun arith-seq :: R -> R => Seq)

;;@ geom-seq(a1,r) = the geometric sequence of which initial term is a1 and common 
;;@ ratio is r
(def-fun geom-seq :: R -> R => Seq)

;;------------------------------------------------------------------------------
;; typing trigger
;;------------------------------------------------------------------------------
;;@ trivially true for any Seq
(def-pred is-sequence :: Seq => Bool)

;;@ is-arith-seq(seq) <-> seq is an arithmetic sequence
(def-pred is-arith-seq :: Seq => Bool)

;;@ is-geom-seq(seq) <-> seq is a geometric sequence
(def-pred is-geom-seq :: Seq => Bool)

;;@ is-integer-seq(seq) <-> seq is a sequence in integers
(def-pred is-integer-seq :: Seq => Bool)

;;@-----------------------------------------------------------------------------
;;@ Operations & Predicates
;;@-----------------------------------------------------------------------------
;;@ fun-of(seq) = the function of which value at n is the n-th term of seq
(def-fun fun-of :: Seq => (Z -> R)) 

;;@ nth-term-of(seq, i) = the i-th term of seq
(def-fun nth-term-of :: Seq -> Index => R)

;;@ seq+(s1,s2) = the sum of s1 and s2 in sequence space
(def-fun seq+ :: Seq -> Seq => Seq)

;;@ seq-(s1,s2) = the difference of s1 and s2 in sequence space
(def-fun seq- :: Seq -> Seq => Seq)

;;@ seq*(s1,s2) = the componentwise product of s1 and s2
;;@ not implemented yet
(def-fun seq* :: Seq -> Seq => Seq)

;;@ seq*(s1,s2) = the componentwise quotient of s1 and s2
;;@ not implemented yet
(def-fun seq/ :: Seq -> Seq => Seq)

;;@ s*(c, {a_i}) = { c * a_i }
(def-fun s* :: R -> Seq => Seq)

;;@ diff-seq-of(seq) = the difference sequence of seq
(def-fun diff-seq-of :: Seq => Seq)

;;@ sum-seq(seq) = the sequence of which n-th term is the sum from the first term 
;;@ to the n-th term of seq
(def-fun sum-seq :: Seq => Seq)

;;@ prod-seq(seq) = the sequence of which n-th term is the product from the first 
;;@ term to the n-th term of seq
(def-fun prod-seq :: Seq => Seq)

;;@ sum-from-to(seq,m,n) = the sum from m-th term to n-th term of seq
(def-fun sum-from-to :: Seq -> Index -> Index => R)

;;@ prod-from-to(seq,m,n) = the product from m-th term to n-th term of seq
(def-fun prod-from-to :: Seq -> Index -> Index => R)

;;@ common-diff-of(seq) = the common difference of seq
;;@ common-diff-of(seq) is the difference of the second and the first term of 
;;@ seq if seq is not an arithmetic sequence
(def-fun common-diff-of :: Seq => R)

;;@ common-ratio-of(seq) = the common ratio of seq
;;@ common-ratio-of(seq) is the quotient of the second and the first term of seq 
;;@ if seq is not an geometric sequence
(def-fun common-ratio-of :: Seq => R)

;;@ is-limit-of(a, seq) <-> a is the limit of seq
(def-pred is-limit-of :: R -> Seq => Bool)

;;@ is-infinite-sum-of(a, seq) <-> a is the limit of series for seq
(def-pred is-infinite-sum-of :: R -> Seq => Bool)

;;@ seq-of-fractional-part(a) = the sequence of the fractional part of a in decimal form
(def-fun seq-of-fractional-part :: R => Seq)

;;@ is-divergent(seq) <-> seq is divergent
(def-fun is-divergent :: Seq => Bool)

; ;;@ list-from-to((an), i, j) = the list [ai, ..., aj]
;(def-fun list-from-to :: Seq -> Index -> Index => (ListOf R))

;;@ is-strictly-increasing(seq) <-> seq is strictly increasing
(def-pred is-strictly-increasing :: Seq => Bool)

;;@ is-non-decreasing(seq) <-> seq is nondecreasing
(def-pred is-non-decreasing :: Seq => Bool)

;;@ is-strictly-decreasing(seq) <-> seq is strictly decreasing
(def-pred is-strictly-decreasing :: Seq => Bool)

;;@ is-non-increasing(seq) <-> seq is nonincreasing
(def-pred is-non-increasing :: Seq => Bool)

;;@ is-bounded(seq) <-> seq is bounded
(def-pred is-bounded :: Seq => Bool)

;;@-----------------------------------------------------------------------------
;;@-----------------------------------------------------------------------------
(def-pred is-fin-arith-seq :: (ListOf R) => Bool)
(def-pred is-fin-geom-seq :: (ListOf R) => Bool)

(def-fun finseq-common-diff-of :: (ListOf R) => R)
(def-fun finseq-common-ratio-of :: (ListOf R) => R)
