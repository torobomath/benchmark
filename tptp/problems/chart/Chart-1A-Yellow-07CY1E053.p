%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E053
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   81 (   4 equality;  20 variable)
%            Maximal formula depth :   13 (  10 average)
%            Number of connectives :   70 (   1   ~;   3   |;   8   &;  58   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   23 (   2 pred;    5 func;   16 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( 'int.is-natural-number/1' @ V_x )
        & ( $lesseq @ 10 @ V_x )
        & ( $less @ V_x @ 100 )
        & ( $less @ 5 @ ( $sum @ ( $product @ 6 @ V_x ) @ ( $product @ 8 @ ( $difference @ 4 @ V_x ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
        ( ? [V_x_dot_0: $real] :
            ( ( $less @ ( $product @ 5.0 @ ( $difference @ V_x_dot_0 @ 1.0 ) ) @ ( $product @ 2.0 @ ( $sum @ ( $product @ 2.0 @ V_x_dot_0 ) @ V_a ) ) )
            & ( $lesseq @ 6.0 @ V_x_dot_0 )
            & ( $less @ V_x_dot_0 @ 7.0 ) )
        & ~ ( ? [V_x: $real] :
                ( ( $less @ ( $product @ 5.0 @ ( $difference @ V_x @ 1.0 ) ) @ ( $product @ 2.0 @ ( $sum @ ( $product @ 2.0 @ V_x ) @ V_a ) ) )
                & ( $lesseq @ 7.0 @ V_x ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = 10 )
      | ( V_x_dot_0 = 11 )
      | ( V_x_dot_0 = 12 )
      | ( V_x_dot_0 = 13 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( $less @ ( $quotient @ ( $to_real @ 1 ) @ ( $to_real @ 2 ) ) @ V_a_dot_0 )
      & ( $lesseq @ V_a_dot_0 @ ( $to_real @ 1 ) ) ) ),
    answer_to(p2_question,[])).

