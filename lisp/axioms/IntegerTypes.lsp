(namespace int)
(import "axioms/DefaultTypes.lsp")

;;@-----------------------------------------------------------------------------
;;@ Integer arithmetic
;;@-----------------------------------------------------------------------------

;; typing triggers
;;@ trivially true for any Z
(def-pred is-integer :: Z => Bool)

;;@ is-natural-number(n) <-> n is a natural number i.e. n is an integer and 1 <= n
(def-pred is-natural-number :: Z => Bool)

;;@ a + b = the sum of a and b in integers
(def-fun +   :: Z -> Z => Z)

;;@ a - b = the difference of a and b in integers
(def-fun -   :: Z -> Z => Z)

;;@ - a = the negation of a in integers
(def-fun -   :: Z => Z)

;;@ a * b = the product of a and b in integers
(def-fun *   :: Z -> Z => Z)

;;@ a ^ b = the power of a to b in integers
(def-fun ^   :: Z -> Z => Z)

;;@ div(a,b) = the quotient of a and b by division with remainders in integers
(def-fun div :: Z -> Z => Z)

;;@ mod(a,b) = the remainder of a and b by division with remainders in integers
(def-fun mod :: Z -> Z => Z)

;;@ sum([a1,...,an]) = the sum of a1,...,an in integers
(def-fun sum :: (ListOf Z) => Z)

;;@ product([a1,...,an]) = the product of a1,...,an in integers
(def-fun product :: (ListOf Z) => Z)

;;@ division between two integers
(def-type IntegerDivision)
(def-fun integer-division :: Z -> Z => IntegerDivision)
(def-fun quot-of :: IntegerDivision => Z)
(def-fun rem-of  :: IntegerDivision => Z)

;;@ set-to-list(set) = the list of all elements in set
;;@ effective only if set is a finite set
(def-fun set-to-list :: (SetOf Z) => (ListOf Z))

;;@ is-cardinality-of(n, set) <-> the number of elements in set is n
;;@ effective only if set is a finite set
(def-pred is-cardinality-of :: Z -> (SetOf Z) => Bool)

;;@ cardinality-of(set) = the number of elements in set
;;@ effective only if set is a finite set
(def-fun cardinality-of :: (SetOf Z) => Z)

;;@ abs(a) = the absolute value of a
(def-fun abs :: Z => Z)

;;@ sign(a) = the sign of a
;;@ 0 if a is 0
(def-fun sign :: Z => Z) 

;;@ min(a,b) = a if a<=b holds, and b otherwise
(def-fun min :: Z -> Z => Z)

;;@ max(a,b) = b if a<=b holds, and a otherwise
(def-fun max :: Z -> Z => Z)

;;@ factorial(n) = the factorial of n
(def-fun factorial :: Z => Z)

;;@ permutation(n,k) = the number of k-permutations of n
(def-fun permutation :: Z -> Z => Z)

;;@ combination(n,k) = the number of k-combinations of n
(def-fun combination :: Z -> Z => Z)

;;@ a <= b <-> a is less than or equal to b
(def-pred <= :: Z -> Z => Bool)

;;@ a < b <-> a is less than b
(def-pred <  :: Z -> Z => Bool)

;;@ a >= b <-> a is greater than or equal to b
(def-pred >= :: Z -> Z => Bool)

;;@ a > b <-> a is greater than b
(def-pred >  :: Z -> Z => Bool)

;;@ is-zero(a) <-> a is equal to 0
(def-pred is-zero  :: Z => Bool)

;;@ is-prime(a) <-> a is a prime number
(def-pred is-prime :: Z => Bool)

;;@ is-common-divisor-of(n, list) <-> n is a common divisor of the integers in list
(def-pred is-common-divisor-of :: Z -> (ListOf Z) => Bool)

;;@ is-common-multiple-of(n, list) <-> n is a common multiple of the integers in list
(def-pred is-common-multiple-of :: Z -> (ListOf Z) => Bool)

;;@ lcm(a,b) = the least common multiple of a and b
(def-fun lcm :: Z -> Z => Z)

;;@ lcm(list) = the least common multiple of the integers in list
(def-fun lcm :: (ListOf Z) => Z)

;;@ gcd(a,b) = the greatest common divisor of a and b
(def-fun gcd :: Z -> Z => Z)

;;@ gcd(list) = the greatest common divisor of the integers in list
(def-fun gcd :: (ListOf Z) => Z)

;;@ int2decimal(a) = the list of digits of a in decimal form
(def-fun int2decimal :: Z => (ListOf Z))

;;@ int2binary(a) = the list of digits of a in binary form
(def-fun int2binary :: Z => (ListOf Z))

;;@ ordinal(n) = the list [0,...,n-1]
(def-fun ordinal :: Z => (ListOf Z))

;;@ num-of-digits(n) = the number of digits of n in decimal base
(def-fun num-of-digits :: Z => Z)

;;@ maximum(set,n) <-> n is the maximum in set
(def-pred maximum :: (SetOf Z) -> Z => Bool)

;;@ minimum(set,n) <-> n is the minimum in set
(def-pred minimum :: (SetOf Z) -> Z => Bool)

;; concepts
;;@ is-odd-number(n) <-> n is an odd number
(def-pred is-odd-number :: Z => Bool)

;;@ is-even-number(n) <-> n is an even number
(def-pred is-even-number :: Z => Bool)

;;@ are-coprime(list) <-> the greatest common divisor of the integers in list is 1
(def-pred are-coprime :: (ListOf Z) => Bool)

;;@ are-coprime(a,b) <-> the greatest common divisor of a and b is 1
(def-pred are-coprime :: Z -> Z => Bool)

;;@ is-divisible-by(a,b) <-> a is divisible by b
(def-pred is-divisible-by :: Z -> Z => Bool)

;;lattice
;;@ is-lattice-point(list) <-> list is a list of integers of length two
(def-pred is-lattice-point :: (ListOf Z) => Bool)

;;@ x-coord([a,b]) = a
;;@ effective only if the argument is of length two
(def-fun x-coord :: (ListOf Z) => Z)

;;@ y-coord([a,b]) = b
;;@ effective only if the argument is of length two
(def-fun y-coord :: (ListOf Z) => Z)

;;@ is-square-number(n) <-> n is a square number
(def-pred is-square-number :: Z => Bool)

;; (finseq from to f) = [f(from), f(from+1), ..., f(to)]
;;@ finseq(f(*), m, n) = the list [f(m), ...., f(n)]
(def-fun finseq :: (Z -> Z) -> Z -> Z => (ListOf Z))

;;@-----------------------------------------------------------------------------
;;@ finiteness of a set of integers
;;@-----------------------------------------------------------------------------
(def-pred is-finite-set :: (SetOf Z) => Bool)
(def-pred is-infinite-set :: (SetOf Z) => Bool)

;;------------------------------------------------------------
;;------------------------------------------------------------
;;@ iota(m,n) = the list [m, ..., n]
;;@ iota(m,n) is [m, m+1, ..., n] if m <= n, and [m, m-1, ..., n] if n < m
(def-fun iota :: Z -> Z => (ListOf Z))
