%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P070
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   55 (   5 equality;  11 variable)
%            Maximal formula depth :   16 (  10 average)
%            Number of connectives :   41 (   0   ~;   1   |;   3   &;  37   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   2 pred;    3 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_max: $real] :
        ( V_max
        = ( 'list-max/1'
          @ ( 'list-int->real/1'
            @ ( 'int.set-to-list/1'
              @ ( 'set-by-def/1' @ $int
                @ ^ [V_x: $int] :
                    ( ( $is_int @ V_x )
                    & ( $less @ 7 @ ( $sum @ ( $product @ 4 @ ( $difference @ V_x @ 2 ) ) @ ( $product @ 5 @ ( $difference @ 6 @ V_x ) ) ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_a: $int] :
        ( ( $is_int @ V_a )
        & ( 4.0
          = ( 'list-min/1'
            @ ( 'list-int->real/1'
              @ ( 'int.set-to-list/1'
                @ ( 'set-by-def/1' @ $int
                  @ ^ [V_x: $int] :
                      ( ( $is_int @ V_x )
                      & ( $less @ ( $product @ 2 @ V_a ) @ ( $sum @ ( $product @ 3 @ V_x ) @ 1 ) ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_max_dot_0: $real] : ( V_max_dot_0 = 14.0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_dot_0: $int] :
      ( ( V_a_dot_0 = 5 )
      | ( V_a_dot_0 = 6 ) ) ),
    answer_to(p2_question,[])).

