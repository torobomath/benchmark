%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E149
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   8 equality;  18 variable)
%            Maximal formula depth :   14 (   9 average)
%            Number of connectives :   36 (   0   ~;   0   |;   6   &;  30   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_answer: $real] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_a: $real] :
        ( ( V_answer = V_a )
        & ( V_l1
          = ( '2d.line2d/3' @ ( $difference @ V_a @ 1.0 ) @ -4.0 @ -2.0 ) )
        & ( V_l2
          = ( '2d.line2d/3' @ 1.0 @ ( $difference @ V_a @ 5.0 ) @ -3.0 ) )
        & ( '2d.perpendicular/2' @ V_l1 @ V_l2 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_answer: $real] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_a: $real] :
        ( ( V_answer = V_a )
        & ( V_l1
          = ( '2d.line2d/3' @ ( $difference @ V_a @ 1.0 ) @ -4.0 @ -2.0 ) )
        & ( V_l2
          = ( '2d.line2d/3' @ 1.0 @ ( $difference @ V_a @ 5.0 ) @ -3.0 ) )
        & ( '2d.parallel/2' @ V_l1 @ V_l2 ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: $real] :
      ( V_answer_dot_0
      = ( $quotient @ 19.0 @ 3.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: $real] : ( V_answer_dot_0 = 3.0 ) ),
    answer_to(p2_question,[])).

