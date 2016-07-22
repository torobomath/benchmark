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
(def-pred @Bound :: a => Bool)
;(def-pred @UnivBound :: a => Bool)
(def-pred @Free  :: a => Bool)

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

