%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E118
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   87 (   6 equality;  26 variable)
%            Maximal formula depth :   28 (  18 average)
%            Number of connectives :   75 (   0   ~;   0   |;  10   &;  65   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   5   ?;   5   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    2 func;    8 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_p: $int,V_q: $int,V_max: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_p @ ( 'cons/2' @ $int @ V_q @ ( 'cons/2' @ $int @ V_max @ ( 'nil/0' @ $int ) ) ) ) )
        & ( 'int.is-natural-number/1' @ V_p )
        & ( 'int.is-natural-number/1' @ V_q )
        & ( $less @ ( $sum @ V_p @ V_q ) @ 30 )
        & ( ( $quotient @ ( $sum @ V_p @ 1 ) @ ( $sum @ V_q @ 3 ) )
          = ( $quotient @ 2 @ 5 ) )
        & ( V_max
          = ( $sum @ V_p @ V_q ) )
        & ( 'minimum/3' @ $int
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_v: $int] :
              ? [V_p0: $int,V_q0: $int] :
                ( ( 'int.is-natural-number/1' @ V_p0 )
                & ( 'int.is-natural-number/1' @ V_q0 )
                & ( $less @ ( $sum @ V_p0 @ V_q0 ) @ 30 )
                & ( ( $quotient @ ( $sum @ V_p0 @ 1 ) @ ( $sum @ V_q0 @ 3 ) )
                  = ( $quotient @ 2 @ 5 ) )
                & ( V_v
                  = ( $sum @ V_p0 @ V_q0 ) ) ) )
          @ ^ [V_lhs: $int,V_rhs: $int] :
              ( $less @ V_lhs @ V_rhs )
          @ V_max ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $int @ 7 @ ( 'cons/2' @ $int @ 17 @ ( 'cons/2' @ $int @ 24 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p_question,[])).

