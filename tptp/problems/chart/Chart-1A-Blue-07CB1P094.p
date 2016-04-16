%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P094
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   66 (   4 equality;  13 variable)
%            Maximal formula depth :   22 (  15 average)
%            Number of connectives :   58 (   0   ~;   1   |;   3   &;  54   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    2 func;    9 numbers)

include('axioms.ax').

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) )
        & ( $is_int @ V_x )
        & ( $is_int @ V_y )
        & ( 0
          = ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $product @ 2 @ ( 'int.^/2' @ V_x @ 2 ) ) @ ( $product @ 3 @ ( $product @ V_x @ V_y ) ) ) @ ( $product @ -2 @ ( 'int.^/2' @ V_y @ 2 ) ) ) @ ( $product @ -3 @ V_x ) ) @ ( $product @ 4 @ V_y ) ) @ -5 ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ -1 @ ( 'cons/2' @ $int @ 0 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p2_question,[])).

