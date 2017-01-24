;;-----------------------------------------------------------------------------
;;
;;
;;-----------------------------------------------------------------------------
(default-namespace)
(import "axioms/DefaultTypes.lsp")
(import "axioms/IntegerTypes.lsp")

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
;;# DONT_EXPORT
(def-pred comma :: (Unit -> Bool) -> (Unit -> Bool) => Bool)

;;@ 1-place predicate that is always true:
;;@ anything(x) <-> true
(def-pred anything :: a => Bool)

(def-fun set :: (a -> Bool) => (SetOf a))
(axiom
  def-set-synonym
  (f)
  (= (set f)
     (set-by-def f)))

;;------------------------------------------------------------------------------
;; Cardinal number (= semantic type of number + classifier; only for NLP)
;;------------------------------------------------------------------------------
(def-type Cardinal)
(def-fun card :: Z => Cardinal)
(def-fun card->int :: Cardinal => Z)

;;------------------------------------------------------------------------------
;; Integer division
;;------------------------------------------------------------------------------
;; division between two integers
(def-type IntegerDivision)
(def-fun integer-division :: Z -> Z => IntegerDivision)
(def-fun quot-of :: IntegerDivision => Z)
(def-fun rem-of  :: IntegerDivision => Z)

;;------------------------------------------------------------------------------
;; for NLP: intentional interpretation of variable names
;;------------------------------------------------------------------------------
;;# DONT_EXPORT: Polymorphic intent set of type a
(def-type (IntentSetOf a))

;;# DONT_EXPORT
(def-fun intent-set :: a -> (Unit -> Bool) => (IntentSetOf a))

;;# DONT_EXPORT
(def-pred cond-of :: (IntentSetOf a) => Bool)

;;# DONT_EXPORT
(def-fun extent-of :: (IntentSetOf a) => a)

(def-fun  extent-all :: (ListOf (IntentSetOf a)) => (ListOf a))
(def-pred cond-all :: (ListOf (IntentSetOf a)) => Bool)
(def-fun setify :: (IntentSetOf a) -> Bool => (SetOf a))
(def-fun setify-all :: (ListOf (IntentSetOf a)) -> Bool => (ListOf (SetOf a)))
(def-fun iset-map :: (a -> b) -> (ListOf (IntentSetOf a)) => (ListOf (IntentSetOf b)))
;; (iset-rename-all [{x|cond1}], [{y|cond2}]) = [{y|cond1;cond2;x=y}]
(def-fun iset-rename-all :: (ListOf (IntentSetOf a)) -> 
                            (ListOf (IntentSetOf a)) => 
                            (ListOf (IntentSetOf a)))
(def-fun iset-add-cond-all :: (a -> Bool) ->
                              (ListOf (IntentSetOf a)) => 
                              (ListOf (IntentSetOf a)))

;;------------------------------------------------------------------------------
;; for NLP: same as comma
;;------------------------------------------------------------------------------
;;# DONT_EXPORT
;(def-fun icomma :: (IntentSetOf a) -> (IntentSetOf a) => (IntentSetOf a))

;;------------------------------------------------------------------------------
;; Problem type (only for language processing; do not appear in the semantic representation)
;;------------------------------------------------------------------------------
(def-type Problem)
(def-fun problem :: => Problem)

;;------------------------------------------------------------------------------
;; Discourse structure marker: only for NLP
;;------------------------------------------------------------------------------
(def-pred @Always :: Bool => Bool)
(def-pred @RegardlessOf :: a -> Bool => Bool)
(def-pred @Constant :: a => Bool)
(def-pred @Closure :: Bool => Bool)
(def-pred @CLOSURE :: a -> Bool => Bool)
(def-pred @Bound :: a => Bool)
;(def-pred @UnivBound :: a => Bool)
(def-pred @Free  :: a => Bool)

(def-pred @NonAssert :: Bool => Bool)

;;------------------------------------------------------------------------------
;; Equality represented by an apposition: e.g., P(x,y) --> P == (x,y)
;; NOTE: == should be replaced with = in discourse processing
;;------------------------------------------------------------------------------
(def-pred == :: a -> a => Bool)

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(def-pred @nth-elem-by :: a -> (IntentSetOf a)
                            -> b
                            -> OrderDir 
                            -> Z => Bool)

(def-pred @nth-fun-value :: b -> (IntentSetOf a)
                              -> b
                              -> OrderDir 
                              -> Z => Bool)

;;------------------------------------------------------------------------------
;;       --> (order-by-dir |x+y| (descending-order))
;;------------------------------------------------------------------------------
(def-type (OrderDirBy a))
(def-fun order-dir-by :: OrderDir -> a => (OrderDirBy a))
(def-fun order-dir-of :: (OrderDirBy a) => OrderDir)
(def-fun order-term-of :: (OrderDirBy a) => a)

(axiom
   def-order-dir-of
   (dir term)
   (= (order-dir-of (order-dir-by dir term)) dir))

(axiom
   def-order-term-of
   (dir term)
   (= (order-term-of (order-dir-by dir term)) term))

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(def-type (SeqOf a))
(def-fun and-so-on :: (ListOf a) => (SeqOf a))

;;------------------------------------------------------------------------------
;; ProblemLabel
;;------------------------------------------------------------------------------
(def-type ProblemLabel)
(def-fun problem-label :: => ProblemLabel)

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(def-type NumeralSystem)

;;@ numeral-system-of-base(n) = the numeral system of base n
(def-fun numeral-system-of-base :: Z => NumeralSystem)

;;@ ns-base-of(numeral-system-of-base(k)) = k
(def-fun ns-base-of :: NumeralSystem => Z)

;;@ a notation of a number in some numeral system
(def-type NumberNotation)

;;@ for type inference
(def-pred is-number-notation :: NumberNotation => Bool)

;;@ number-in-nn(n, k) = the notation of number n in base k
(def-fun number-in-nn :: Z -> Z => NumberNotation)

;;@ digits-in-nn([n1, n2, ..., n_m], k) = number-in-nn(n_m * k^{m-1} + ... + n2 * k + n1, k)
(def-fun digits-in-nn :: (ListOf Z) -> Z => NumberNotation)

;;@ (nn-base-of nn) = the base of number notation nn
(def-fun nn-base-of :: NumberNotation => Z)

;;@ (nn-value-of nn) = the value of number notation nn
(def-fun nn-value-of :: NumberNotation => Z)

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(def-type MathExprSymbol)

(def-fun abs-symbol :: => MathExprSymbol) 

;;------------------------------------------------------------------------------
;; implementation
;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
;; intentional interpretation of variable names: for NLP
;;------------------------------------------------------------------------------

; (IntentSetOf a) => (SetOf a)
;;# DONT_EXPORT
;(axiom
; def_setify
; (term def)
; (= (setify (intent-set term def))
;    (set-by-def def)))

(axiom
 def_cond_of
 (term def)
 (<-> (cond-of (intent-set term def))
      (PLamApp def (_))))

; (IntentSetOf a) => a
;;# DONT_EXPORT
(axiom
 def_extent_of
 (term def)
 (= (extent-of (intent-set term def))
    term))

;;# DONT_EXPORT
;(axiom
;  def_intent_set_eq
;  (t1 t2 f1 f2)
;  (<-> (= (intent-set t1 f1) (intent-set t2 f2))
;       (= f1 f2)))

;;------------------------------------------------------------------------------
;; 1-place predicate that is always true
;;------------------------------------------------------------------------------


; a => Bool
(axiom
 def_anything
 (x)
 (anything x))

;;------------------------------------------------------------------------------
;; Cardinal number (for NLP only)
;;------------------------------------------------------------------------------
;;# DONT_EXPORT
(axiom
  def-card->int
  (n)
  (= (card->int (card n))
     n))

;;------------------------------------------------------------------------------
;; integer division
;;------------------------------------------------------------------------------
(axiom
  def-integer-quot-of
  (n m)
  (= (quot-of (integer-division n m))
     (int.div n m)))

(axiom
  def-integer-rem-of
  (n m)
  (= (rem-of (integer-division n m))
     (int.mod n m)))

;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
(axiom
  def-is-number-notation
  (nn)
  (<-> (is-number-notation nn)
       (true)))

(axiom
  def-ns-base-of
  (k)
  (= (ns-base-of (numeral-system-of-base k)) k))

(axiom
  def-eq-numeral-system
  (k1 k2)
  (<-> (= (numeral-system-of-base k1) (numeral-system-of-base k2))
       (= k1 k2)))

(axiom
  def-eq-number-notation1
  (n1 k1 n2 k2)
  (<-> (= (number-in-nn n1 k1) (number-in-nn n2 k2))
       (&& (= n1 n2)
           (= k1 k2))))

(axiom
  def-eq-number-notation2
  (ds1 k1 ds2 k2)
  (<-> (= (digits-in-nn ds1 k1) (digits-in-nn ds2 k2))
       (&& (= ds1 ds2)
           (= k1 k2))))

(axiom
  def-eq-number-notation3
  (ds k1 n k2)
  (<-> (= (digits-in-nn ds k1) (number-in-nn n k2))
       (&& (= (int.number-in-base ds k1) n)
           (= k1 k2))))

(axiom
  def-nn-base-of-number-notation
  (n k)
  (= (nn-base-of (number-in-nn n k))
     k))

(axiom
  def-nn-base-of-number-in-base
  (ds k)
  (= (nn-base-of (digits-in-nn ds k))
     k))

(axiom
  def-nn-value-of-number-notation
  (n k)
  (= (nn-value-of (number-in-nn n k))
     n))

(axiom
  def-nn-value-of-number-in-base
  (ds k)
  (= (nn-value-of (digits-in-nn ds k))
     (int.number-in-base ds k)))
