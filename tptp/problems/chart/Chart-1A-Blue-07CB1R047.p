%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1R047
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  196 (  13 equality;  40 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :  168 (   0   ~;   4   |;  19   &; 145   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   0   !;   8   ?;   6   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int,V_z: $int] :
        ( ( V_z = 1 )
        & ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) )
        & ( $is_int @ V_x )
        & ( $less @ 0 @ V_x )
        & ( $is_int @ V_y )
        & ( $less @ 0 @ V_y )
        & ( ( $quotient @ 4 @ 3 )
          = ( $sum @ ( $sum @ ( $quotient @ 1 @ ( $product @ 3 @ V_x ) ) @ ( $quotient @ 1 @ ( $product @ 2 @ V_y ) ) ) @ ( $quotient @ 1 @ V_z ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_z: $int] :
        ( ( $is_int @ V_z )
        & ( $less @ 0 @ V_z )
        & ? [V_x: $int,V_y: $int] :
            ( ( $is_int @ V_x )
            & ( $less @ 0 @ V_x )
            & ( $is_int @ V_y )
            & ( $less @ 0 @ V_y )
            & ( ( $quotient @ 4 @ 3 )
              = ( $sum @ ( $sum @ ( $quotient @ 1 @ ( $product @ 3 @ V_x ) ) @ ( $quotient @ 1 @ ( $product @ 2 @ V_y ) ) ) @ ( $quotient @ 1 @ V_z ) ) ) ) ) )).

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
        & ( ( $quotient @ 4 @ 3 )
          = ( $sum @ ( $sum @ ( $quotient @ 1 @ ( $product @ 3 @ V_x ) ) @ ( $quotient @ 1 @ ( $product @ 2 @ V_y ) ) ) @ ( $quotient @ 1 @ V_z ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 4 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_z_dot_0: $int] :
      ( ( V_z_dot_0 = 1 )
      | ( V_z_dot_0 = 2 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 4 @ ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) ) ) ) ),
    answer_to(p3_question,[])).

