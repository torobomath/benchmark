%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E072
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  232 (  17 equality;  35 variable)
%            Maximal formula depth :   20 (  16 average)
%            Number of connectives :  198 (   0   ~;  11   |;  10   &; 177   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   5   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   15 (   2 pred;    3 func;   10 numbers)

include('axioms.ax').

thf(p1_qustion,question,
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
        & ( 15
          = ( $sum @ ( $sum @ ( $product @ 4 @ V_x ) @ ( $product @ 2 @ V_y ) ) @ V_z ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) )
        & ( $is_int @ V_x )
        & ( $is_int @ V_y )
        & ( 2
          = ( $sum @ ( $sum @ ( $product @ 2 @ ( 'int.^/2' @ V_x @ 2 ) ) @ ( $product @ V_x @ V_y ) ) @ ( $uminus @ ( 'int.^/2' @ V_y @ 2 ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 9 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 7 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 5 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 4 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 5 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 5 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 0 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ -1 @ ( 'cons/2' @ $int @ 0 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ -1 @ ( 'cons/2' @ $int @ -1 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p2_question,[])).

