%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE021
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   25 (   1 equality;   7 variable)
%            Maximal formula depth :   14 (   8 average)
%            Number of connectives :   21 (   0   ~;   0   |;   3   &;  18   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   0   !;   0   ?;   3   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    3 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_m: $int] :
              ( ( 'int.is-natural-number/1' @ V_m )
              & ( $lesseq @ 10 @ V_m )
              & ( $less @ V_m @ 100 )
              & ( 'int.is-even-number/1' @ ( $product @ ( $quotient_f @ V_m @ 10 ) @ ( $remainder_f @ V_m @ 10 ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 65 ) ),
    answer_to(p_question,[])).

