%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R037
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  112 (   9 equality;  27 variable)
%            Maximal formula depth :   23 (  12 average)
%            Number of connectives :  100 (   0   ~;   0   |;  10   &;  90   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   0   !;   6   ?;   8   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    2 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'is-cardinality-of/2' @ ( 'Pair' @ $int @ $int ) @ V_n
        @ ( 'set-by-def/1' @ ( 'Pair' @ $int @ $int )
          @ ^ [V_pair: ( 'Pair' @ $int @ $int )] :
            ? [V_x: $int,V_y: $int] :
              ( ( V_x
                = ( 'fst/1' @ $int @ $int @ V_pair ) )
              & ( V_y
                = ( 'snd/1' @ $int @ $int @ V_pair ) )
              & ( 'int.is-natural-number/1' @ V_x )
              & ( 'int.is-natural-number/1' @ V_y )
              & ( 33
                = ( $sum @ ( $product @ 2 @ V_x ) @ ( $product @ 3 @ V_y ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int] :
        ( ( 'minimum/3' @ ( 'Pair' @ $int @ $int )
          @ ( 'set-by-def/1' @ ( 'Pair' @ $int @ $int )
            @ ^ [V_pair: ( 'Pair' @ $int @ $int )] :
              ? [V_x0: $int,V_y0: $int] :
                ( ( V_x0
                  = ( 'fst/1' @ $int @ $int @ V_pair ) )
                & ( V_y0
                  = ( 'snd/1' @ $int @ $int @ V_pair ) )
                & ( 'int.is-natural-number/1' @ V_x0 )
                & ( 'int.is-natural-number/1' @ V_y0 )
                & ( 33
                  = ( $sum @ ( $product @ 2 @ V_x0 ) @ ( $product @ 3 @ V_y0 ) ) )
                & ( $lesseq @ 10 @ V_x0 ) ) )
          @ ^ [V_lhs: ( 'Pair' @ $int @ $int ),V_rhs: ( 'Pair' @ $int @ $int )] :
              ( $less @ ( 'fst/1' @ $int @ $int @ V_lhs ) @ ( 'fst/1' @ $int @ $int @ V_rhs ) )
          @ ( 'pair/2' @ $int @ $int @ V_x @ V_y ) )
        & ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 5 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $int @ 12 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) ) ),
    answer_to(p2_question,[])).

