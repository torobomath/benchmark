%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R047
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  135 (   8 equality;  26 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :  119 (   0   ~;   2   |;  12   &; 105   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   5   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    4 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) )
        & ( $is_int @ V_x )
        & ( $less @ 0 @ V_x )
        & ( $is_int @ V_y )
        & ( $less @ 0 @ V_y )
        & ( ( $quotient @ 1 @ 2 )
          = ( $sum @ ( $quotient @ 1 @ ( $product @ 3 @ V_x ) ) @ ( $quotient @ 1 @ ( $product @ 3 @ V_y ) ) ) ) ) )).

thf(p2_qustion,question,
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
        & ( ( $to_rat @ 1 )
          = ( $sum @ ( $sum @ ( $quotient @ 1 @ ( $product @ 3 @ V_x ) ) @ ( $quotient @ 1 @ ( $product @ 3 @ V_y ) ) ) @ ( $quotient @ 1 @ ( $product @ 2 @ V_z ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

