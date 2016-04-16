(default-namespace)
(import "axioms/DefaultTypes.lsp")

;;@-------------------------------------------------------
;;@ Relations between two formulas
;;@-------------------------------------------------------
;;@ is-counter-example-of(A, B) <-> A and B contradicts
(def-pred is-counter-example-of :: Prop -> Prop => Bool)

;;@ is-contrapositive-of(A, B) <-> A is syntactically the contrapositive of B
(def-pred is-contrapositive-of :: Prop -> Prop => Bool)

;;@ is-converse-of(A, B) <-> A is syntactically the converse of B
(def-pred is-converse-of :: Prop -> Prop => Bool) 

;;@ is-inverse-of(A, B) <-> A is syntactically the inverse of B
(def-pred is-inverse-of :: Prop -> Prop => Bool) 

;;@ is-equivalent-to(A, B) <-> (A <-> B)
(def-pred is-equivalent-to :: Prop -> Prop => Bool)

;;@ is-equivalent-to(A, B) <-> (A -> B)
(def-pred is-necessary-condition-of :: Prop -> Prop => Bool)

;;@ is-equivalent-to(A, B) <-> (A <- B)
(def-pred is-sufficient-condition-of :: Prop -> Prop => Bool)

;;@ is-antecedent-of(A, B) <-> A is syntactically B's antecedent
(def-pred is-antecedent-of :: Prop -> Prop => Bool)

;;@ is-succedent-of(A, B) <-> A is syntactically B's succedent
(def-pred is-succedent-of :: Prop -> Prop => Bool)

;;@-------------------------------------------------------
;;@ partial functions frop Prop -> Prop
;;@ has value only when the argument is in the form of (impl _ _)
;;@-------------------------------------------------------
(def-fun contrapositive-of :: Prop => Prop)
(def-fun converse-of :: Prop => Prop)
(def-fun inverse-of :: Prop => Prop)
(def-fun antecedent-of :: Prop => Prop)
(def-fun succedent-of :: Prop => Prop)

;;@-------------------------------------------------------
;;@ Implementations
;;@-------------------------------------------------------
;;@ is-proposition(P): trivially true for any object of type Prop
(axiom
  def-is-proposition
  (p)
  (is-proposition p))

;;------------------------------------------------------------------------------
;; nominalization
;;------------------------------------------------------------------------------
; Prop => Bool
; 2015-09-15
;(axiom
;  def_hold
;  (p)
;  (<-> (hold (prop p))
;       (PLamApp p (_))))
;
;(axiom
;  def-hold-and
;  (p q)
;  (<-> (hold (and p q))
;       (&& (hold p)
;           (hold q))))
;(axiom
;  def-hold-or
;  (p q)
;  (<-> (hold (or p q))
;       (|| (hold p)
;           (hold q))))
;(axiom
;  def-hold-impl
;  (p q)
;  (<-> (hold (impl p q))
;       (-> (hold p)
;           (hold q))))
;(axiom
;  def-hold-equiv
;  (p q)
;  (<-> (hold (equiv p q))
;       (<-> (hold p)
;            (hold q))))
;
;(axiom
;  def-hold-not
;  (p)
;  (<-> (hold (not p))
;       (! (hold p))))

;;@ NOTE: conflicts with the definitions about the syntactic properties
;;@ TODO: replace this with syntactic identity
(axiom
 def-prop-equality
 (p q)
 (<-> (= (prop p) (prop q))
      (= p q)))

(axiom
  def_contrapositive
  (p q r s)
  (<-> (is-contrapositive-of (impl p q) (impl r s))
       (&& (is-equivalent-to (not q) r)
           (is-equivalent-to (not p) s))))
(axiom
   def-is-converse-of
   (p q r s)
   (<-> (is-converse-of (impl p q) (impl r s))
        (&& (is-equivalent-to p s)
            (is-equivalent-to q r))))
(axiom
   def-is-inverse-of
   (p q r s)
   (<-> (is-inverse-of (impl p q) (impl r s))
        (&& (is-equivalent-to p (not r))
            (is-equivalent-to q (not s)))))

(axiom
  def-is-antecedent-of
  (p q r)
  (<-> (is-antecedent-of p (impl q r))
       (is-equivalent-to p q)))

(axiom
  def-is-succedent-of
  (p q r)
  (<-> (is-antecedent-of p (impl q r))
       (is-equivalent-to p r)))


;(axiom
;  def-is-equivalent-to
;  (p q)
;  (<-> (is-equivalent-to p q)
;       (<-> (hold p) (hold q))))
;
(axiom
  def-contrapositive-of
  (p q)
  (= (contrapositive-of (impl p q))
     (impl (not q) (not p))))

(axiom
  def-converse-of
  (p q)
  (= (converse-of (impl p q))
     (impl q p)))

(axiom
  def-inverse-of
  (p q)
  (= (inverse-of (impl p q))
     (impl (not p) (not q))))

(axiom
  def-antecedent-of
  (p q)
  (= (antecedent-of (impl p q))
     p))

(axiom
  def-succedent-of
  (p q)
  (= (succedent-of (impl p q))
     q))

;; TORIAEZU
(axiom
  def-hold-open
  (p)
  (<-> (hold-open (prop p))
       (PLamApp p (_))))
