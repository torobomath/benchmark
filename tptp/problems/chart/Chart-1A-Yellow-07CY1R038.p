%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R038
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  140 (  12 equality;  25 variable)
%            Maximal formula depth :   17 (  13 average)
%            Number of connectives :  116 (   0   ~;   6   |;   6   &; 104   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   4   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   1 pred;    2 func;   11 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) )
        & ( $is_int @ V_x )
        & ( $is_int @ V_y )
        & ( 5
          = ( $sum @ ( 'int.^/2' @ V_x @ 2 ) @ ( $product @ ( $product @ -2 @ V_x ) @ V_y ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) )
        & ( $is_int @ V_x )
        & ( $is_int @ V_y )
        & ( 0
          = ( $sum @ ( $sum @ ( $sum @ ( $product @ V_x @ V_y ) @ ( $product @ -3 @ V_x ) ) @ ( $product @ -2 @ V_y ) ) @ 3 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ -2 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 5 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ -1 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ -5 @ ( 'cons/2' @ $int @ -2 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 6 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 5 @ ( 'cons/2' @ $int @ 4 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 0 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ -1 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p2_question,[])).

