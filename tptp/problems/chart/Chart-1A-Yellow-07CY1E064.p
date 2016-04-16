%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E064
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  124 (  10 equality;  24 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :  104 (   0   ~;   4   |;   8   &;  92   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   4   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   17 (   2 pred;    3 func;   12 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) )
        & ( $is_int @ V_x )
        & ( $is_int @ V_y )
        & ( 0
          = ( $sum @ ( $sum @ ( $product @ ( $product @ 2 @ V_x ) @ V_y ) @ ( $product @ -2 @ V_x ) ) @ ( $product @ -5 @ V_y ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) )
        & ( $is_int @ V_x )
        & ( $is_int @ V_y )
        & ( 60
          = ( $difference @ ( 'int.^/2' @ V_x @ 2 ) @ ( 'int.^/2' @ V_y @ 2 ) ) )
        & ( $less @ 0 @ V_x )
        & ( $less @ 0 @ V_y ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 6 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 5 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ -4 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 0 @ ( 'cons/2' @ $int @ 0 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 16 @ ( 'cons/2' @ $int @ 14 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 8 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p2_question,[])).

