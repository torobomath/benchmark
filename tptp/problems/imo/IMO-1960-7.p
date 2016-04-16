%% DOMAIN:    Geometry, quadrangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1960, Problem 7
%% SCORE:     5
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-04
%%
%% <PROBLEM-TEXT>
%% An isosceles trapezoid with bases $a$ and $c$ and altitude $h$ is given.
%% (a) On the axis of symmetry of this trapezoid, find all points $P$ such that
%% both legs of the trapezoid subtend right angles at $P$.
%% (b) Calculate the distance of $P$ from either base.
%% (c) Determine under what conditions such points $P$ actually exist. (Discuss
%% various cases that might arise.)
%% </PROBLEM-TEXT>
%%@ NOTE: coordinates are fixed for writing answers in terms of a, b, and h

% Syntax   : Number of formulae    :    9 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  380 (  29 equality;  51 variable)
%            Maximal formula depth :   23 (  13 average)
%            Number of connectives :  318 (   0   ~;   2   |;  53   &; 263   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   3   :;   0   =)
%            Number of variables   :   22 (   0 sgn;   0   !;  16   ?;   6   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    5 func;    2 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('h/0_type',type,(
    'h/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( $less @ 0.0 @ 'h/0' )
        & ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( V_A
          = ( '2d.point/2' @ ( $uminus @ ( $quotient @ 'b/0' @ 2.0 ) ) @ 0.0 ) )
        & ( V_B
          = ( '2d.point/2' @ ( $quotient @ 'b/0' @ 2.0 ) @ 0.0 ) )
        & ( V_C
          = ( '2d.point/2' @ ( $quotient @ 'a/0' @ 2.0 ) @ 'h/0' ) )
        & ( V_D
          = ( '2d.point/2' @ ( $uminus @ ( $quotient @ 'a/0' @ 2.0 ) ) @ 'h/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_P @ V_C ) )
          = ( $quotient @ 'Pi/0' @ 2.0 ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_D ) )
          = ( $quotient @ 'Pi/0' @ 2.0 ) )
        & ( '2d.on/2' @ V_P @ '2d.y-axis/0' ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_Dist: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_P: '2d.Point'] :
        ( ( $less @ 0.0 @ 'h/0' )
        & ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( V_A
          = ( '2d.point/2' @ ( $uminus @ ( $quotient @ 'b/0' @ 2.0 ) ) @ 0.0 ) )
        & ( V_B
          = ( '2d.point/2' @ ( $quotient @ 'b/0' @ 2.0 ) @ 0.0 ) )
        & ( V_C
          = ( '2d.point/2' @ ( $quotient @ 'a/0' @ 2.0 ) @ 'h/0' ) )
        & ( V_D
          = ( '2d.point/2' @ ( $uminus @ ( $quotient @ 'a/0' @ 2.0 ) ) @ 'h/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_P @ V_C ) )
          = ( $quotient @ 'Pi/0' @ 2.0 ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_D ) )
          = ( $quotient @ 'Pi/0' @ 2.0 ) )
        & ( '2d.on/2' @ V_P @ '2d.y-axis/0' )
        & ( V_Dist
          = ( '2d.point-shape-distance/2' @ V_P @ ( '2d.line/2' @ V_A @ V_B ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_abh: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_P: '2d.Point'] :
        ( ( V_abh
          = ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'h/0' @ ( 'nil/0' @ $real ) ) ) ) )
        & ( $less @ 0.0 @ 'h/0' )
        & ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( V_A
          = ( '2d.point/2' @ ( $uminus @ ( $quotient @ 'b/0' @ 2.0 ) ) @ 0.0 ) )
        & ( V_B
          = ( '2d.point/2' @ ( $quotient @ 'b/0' @ 2.0 ) @ 0.0 ) )
        & ( V_C
          = ( '2d.point/2' @ ( $quotient @ 'a/0' @ 2.0 ) @ 'h/0' ) )
        & ( V_D
          = ( '2d.point/2' @ ( $uminus @ ( $quotient @ 'a/0' @ 2.0 ) ) @ 'h/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_P @ V_C ) )
          = ( $quotient @ 'Pi/0' @ 2.0 ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_D ) )
          = ( $quotient @ 'Pi/0' @ 2.0 ) )
        & ( '2d.on/2' @ V_P @ '2d.y-axis/0' ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
    ? [V_Px: $real,V_Py: $real] :
      ( ( ( $less @ 0.0 @ 'h/0' )
        & ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( $greatereq @ ( '^/2' @ 'h/0' @ 2.0 ) @ ( $product @ 'a/0' @ 'b/0' ) )
        & ( V_Px = 0.0 )
        & ( V_Py
          = ( $difference @ ( $quotient @ 'h/0' @ 2.0 ) @ ( $quotient @ ( 'sqrt/1' @ ( $difference @ ( '^/2' @ 'h/0' @ 2.0 ) @ ( $product @ 'a/0' @ 'b/0' ) ) ) @ 2.0 ) ) )
        & ( V_P_dot_0
          = ( '2d.point/2' @ V_Px @ V_Py ) ) )
      | ( ( $less @ 0.0 @ 'h/0' )
        & ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( $greatereq @ ( '^/2' @ 'h/0' @ 2.0 ) @ ( $product @ 'a/0' @ 'b/0' ) )
        & ( V_Px = 0.0 )
        & ( V_Py
          = ( $sum @ ( $quotient @ 'h/0' @ 2.0 ) @ ( $quotient @ ( 'sqrt/1' @ ( $difference @ ( '^/2' @ 'h/0' @ 2.0 ) @ ( $product @ 'a/0' @ 'b/0' ) ) ) @ 2.0 ) ) )
        & ( V_P_dot_0
          = ( '2d.point/2' @ V_Px @ V_Py ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_Dist_dot_0: $real] :
      ( ( ( $less @ 0.0 @ 'h/0' )
        & ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( $greatereq @ ( '^/2' @ 'h/0' @ 2.0 ) @ ( $product @ 'a/0' @ 'b/0' ) )
        & ( V_Dist_dot_0
          = ( $difference @ ( $quotient @ 'h/0' @ 2.0 ) @ ( $quotient @ ( 'sqrt/1' @ ( $difference @ ( '^/2' @ 'h/0' @ 2.0 ) @ ( $product @ 'a/0' @ 'b/0' ) ) ) @ 2.0 ) ) ) )
      | ( ( $less @ 0.0 @ 'h/0' )
        & ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( $greatereq @ ( '^/2' @ 'h/0' @ 2.0 ) @ ( $product @ 'a/0' @ 'b/0' ) )
        & ( V_Dist_dot_0
          = ( $sum @ ( $quotient @ 'h/0' @ 2.0 ) @ ( $quotient @ ( 'sqrt/1' @ ( $difference @ ( '^/2' @ 'h/0' @ 2.0 ) @ ( $product @ 'a/0' @ 'b/0' ) ) ) @ 2.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_abh_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_abh_dot_0
        = ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'h/0' @ ( 'nil/0' @ $real ) ) ) ) )
      & ( $less @ 0.0 @ 'h/0' )
      & ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 0.0 @ 'b/0' )
      & ( $greatereq @ ( '^/2' @ 'h/0' @ 2.0 ) @ ( $product @ 'a/0' @ 'b/0' ) ) ) ),
    answer_to(p3_question,[])).

