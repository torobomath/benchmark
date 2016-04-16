%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1E017
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  184 (   6 equality;  49 variable)
%            Maximal formula depth :   33 (  19 average)
%            Number of connectives :  172 (   0   ~;   2   |;  20   &; 150   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   0   !;   8   ?;  10   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_a: $int,V_b: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_a @ ( 'cons/2' @ $int @ V_b @ ( 'nil/0' @ $int ) ) ) )
        & ( 'int.is-natural-number/1' @ V_a )
        & ( 'int.is-natural-number/1' @ V_b )
        & ( $less @ V_a @ V_b )
        & ( $less @ ( $sum @ ( $quotient @ 1 @ V_a ) @ ( $quotient @ 1 @ V_b ) ) @ ( $quotient @ 1 @ 4 ) )
        & ( 'minimum/3' @ $int
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_b0: $int] :
                ( ( 'int.is-natural-number/1' @ V_b0 )
                & ? [V_a0: $int] :
                    ( ( 'int.is-natural-number/1' @ V_a0 )
                    & ( $less @ V_a0 @ V_b0 )
                    & ( $less @ ( $sum @ ( $quotient @ 1 @ V_a0 ) @ ( $quotient @ 1 @ V_b0 ) ) @ ( $quotient @ 1 @ 4 ) ) ) ) )
          @ ^ [V_lhs: $int,V_rhs: $int] :
              ( $less @ V_lhs @ V_rhs )
          @ V_b ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_a: $int,V_b: $int,V_c: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_a @ ( 'cons/2' @ $int @ V_b @ ( 'cons/2' @ $int @ V_c @ ( 'nil/0' @ $int ) ) ) ) )
        & ( 'int.is-natural-number/1' @ V_a )
        & ( 'int.is-natural-number/1' @ V_b )
        & ( 'int.is-natural-number/1' @ V_c )
        & ( $less @ V_a @ V_b )
        & ( $less @ V_b @ V_c )
        & ( $less @ ( $sum @ ( $sum @ ( $quotient @ 1 @ V_a ) @ ( $quotient @ 1 @ V_b ) ) @ ( $quotient @ 1 @ V_c ) ) @ ( $quotient @ 1 @ 3 ) )
        & ( 'minimum/3' @ $int
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_c0: $int] :
                ( ( 'int.is-natural-number/1' @ V_c0 )
                & ? [V_a0: $int,V_b0: $int] :
                    ( ( 'int.is-natural-number/1' @ V_b0 )
                    & ( 'int.is-natural-number/1' @ V_c0 )
                    & ( $less @ V_a0 @ V_b0 )
                    & ( $less @ V_b0 @ V_c0 )
                    & ( $less @ ( $sum @ ( $sum @ ( $quotient @ 1 @ V_a0 ) @ ( $quotient @ 1 @ V_b0 ) ) @ ( $quotient @ 1 @ V_c0 ) ) @ ( $quotient @ 1 @ 3 ) ) ) ) )
          @ ^ [V_lhs: $int,V_rhs: $int] :
              ( $less @ V_lhs @ V_rhs )
          @ V_c ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $int @ 8 @ ( 'cons/2' @ $int @ 9 @ ( 'nil/0' @ $int ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 8 @ ( 'cons/2' @ $int @ 10 @ ( 'cons/2' @ $int @ 11 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 9 @ ( 'cons/2' @ $int @ 10 @ ( 'cons/2' @ $int @ 11 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 8 @ ( 'cons/2' @ $int @ 9 @ ( 'cons/2' @ $int @ 11 @ ( 'nil/0' @ $int ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

