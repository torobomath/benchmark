%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E065
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  220 (  13 equality;  40 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :  192 (   0   ~;   4   |;  19   &; 169   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   0   !;   8   ?;   6   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    4 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int,V_z: $int] :
        ( ( V_x = 1 )
        & ( V_answer
          = ( 'cons/2' @ $int @ V_y @ ( 'cons/2' @ $int @ V_z @ ( 'nil/0' @ $int ) ) ) )
        & ( $is_int @ V_y )
        & ( $less @ 0 @ V_y )
        & ( $is_int @ V_z )
        & ( $less @ 0 @ V_z )
        & ( ( $quotient @ ( $to_rat @ 4 ) @ ( $to_rat @ 3 ) )
          = ( $sum @ ( $sum @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ V_x ) ) @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ ( $product @ 2 @ V_y ) ) ) ) @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ ( $product @ 3 @ V_z ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( $less @ 0 @ V_x )
        & ? [V_y: $int,V_z: $int] :
            ( ( $is_int @ V_y )
            & ( $less @ 0 @ V_y )
            & ( $is_int @ V_z )
            & ( $less @ 0 @ V_z )
            & ( ( $quotient @ ( $to_rat @ 4 ) @ ( $to_rat @ 3 ) )
              = ( $sum @ ( $sum @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ V_x ) ) @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ ( $product @ 2 @ V_y ) ) ) ) @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ ( $product @ 3 @ V_z ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int,V_z: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'cons/2' @ $int @ V_z @ ( 'nil/0' @ $int ) ) ) ) )
        & ( $is_int @ V_x )
        & ( $less @ 0 @ V_x )
        & ( $is_int @ V_y )
        & ( $less @ 0 @ V_y )
        & ( $is_int @ V_z )
        & ( $less @ 0 @ V_z )
        & ( ( $quotient @ ( $to_rat @ 4 ) @ ( $to_rat @ 3 ) )
          = ( $sum @ ( $sum @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ V_x ) ) @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ ( $product @ 2 @ V_y ) ) ) ) @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ ( $product @ 3 @ V_z ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 4 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = 1 )
      | ( V_x_dot_0 = 2 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 4 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) ) ) ) ),
    answer_to(p3_question,[])).

