%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B White Book, Problem 08CWBR035
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   66 (  11 equality;  20 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   40 (   0   ~;   0   |;   7   &;  33   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   0   !;   7   ?;   4   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_A: '2d.Point',V_l: '2d.Shape',V_H: '2d.Point',V_n: '2d.Vector'] :
        ( ( V_A
          = ( '2d.point/2' @ 3.0 @ 1.0 ) )
        & ( V_l
          = ( '2d.line2d/3' @ 1.0 @ 2.0 @ -3.0 ) )
        & ( V_H
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_A @ V_l ) )
        & ( V_n
          = ( '2d.vec2d/2' @ 1.0 @ 2.0 ) )
        & ( ( '2d.vec/2' @ V_A @ V_H )
          = ( '2d.sv*/2' @ V_k @ V_n ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_d: $real] :
      ? [V_A: '2d.Point',V_l: '2d.Shape',V_H: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 3.0 @ 1.0 ) )
        & ( V_l
          = ( '2d.line2d/3' @ 1.0 @ 2.0 @ -3.0 ) )
        & ( V_H
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_A @ V_l ) )
        & ( V_d
          = ( '2d.point-shape-distance/2' @ V_A @ V_l ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_k_dot_0: $real] :
      ( V_k_dot_0
      = ( $quotient @ -8.0 @ 5.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_d_dot_0: $real] :
      ( V_d_dot_0
      = ( $quotient @ ( $product @ 8.0 @ ( 'sqrt/1' @ 5.0 ) ) @ 5.0 ) ) ),
    answer_to(p2_question,[])).

