%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP024
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   73 (   9 equality;  22 variable)
%            Maximal formula depth :   15 (  10 average)
%            Number of connectives :   51 (   0   ~;   0   |;   5   &;  46   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   0   !;   7   ?;   4   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    1 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( ( '2d.vec2d/2' @ 2.0 @ 1.0 )
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( ( '2d.vec2d/2' @ V_x @ 1.0 )
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle-of-vectors/2' @ ( '2d.vec/2' @ V_O @ V_A ) @ ( '2d.vec/2' @ V_O @ V_B ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_H: '2d.Point',V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_H
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_B @ ( '2d.line/2' @ V_O @ V_A ) ) )
        & ( ( '2d.vec2d/2' @ 2.0 @ 1.0 )
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( ( '2d.vec2d/2' @ V_x @ 1.0 )
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( ( '2d.vec2d/2' @ ( $quotient @ -1.0 @ 2.0 ) @ ( $quotient @ -1.0 @ 4.0 ) )
          = ( '2d.vec/2' @ V_A @ V_H ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $quotient @ 1.0 @ 3.0 )
      = V_x_dot_0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $quotient @ 11.0 @ 8.0 )
      = V_x_dot_0 ) ),
    answer_to(p2_question,[])).

