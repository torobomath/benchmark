%% DOMAIN:    Geometry, polyhedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1965, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-17
%%
%% <PROBLEM-TEXT>
%% Consider $\triangle OAB$ with acute angle $AOB$.
%% Through a point $M \neq O$ perpendiculars are drawn to $OA$ and $OB$, the feet
%% of which are $P$ and $Q$ respectively. The point of intersection of
%% the altitudes of $\triangle OPQ$ is $H$. What is the locus of $H$ if $M$
%% is permitted to range over (a) the side $AB$, (b) the interior of $\triangle OAB$?
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   10 (   0 unit;   6 type;   0 defn)
%            Number of atoms       :  176 (  14 equality;  59 variable)
%            Maximal formula depth :   21 (   8 average)
%            Number of connectives :  144 (   0   ~;   0   |;  20   &; 124   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   6   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   0   !;  16   ?;   4   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   1 pred;    1 func;    1 numbers)

include('axioms.ax').

thf('Ax/0_type',type,(
    'Ax/0': $real )).

thf('Ay/0_type',type,(
    'Ay/0': $real )).

thf('Bx/0_type',type,(
    'Bx/0': $real )).

thf('By/0_type',type,(
    'By/0': $real )).

thf('Ox/0_type',type,(
    'Ox/0': $real )).

thf('Oy/0_type',type,(
    'Oy/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_H: '2d.Point'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_M: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_O
          = ( '2d.point/2' @ 'Ox/0' @ 'Oy/0' ) )
        & ( V_A
          = ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) )
        & ( V_B
          = ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) )
        & ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( $less @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_O @ V_B ) ) @ ( $product @ 90.0 @ 'Degree/0' ) )
        & ( '2d.on/2' @ V_M @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( V_P
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_M @ ( '2d.line/2' @ V_O @ V_A ) ) )
        & ( V_Q
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_M @ ( '2d.line/2' @ V_O @ V_B ) ) )
        & ( '2d.is-orthocenter-of/2' @ V_H @ ( '2d.triangle/3' @ V_O @ V_P @ V_Q ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_H: '2d.Point'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_M: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_O
          = ( '2d.point/2' @ 'Ox/0' @ 'Oy/0' ) )
        & ( V_A
          = ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) )
        & ( V_B
          = ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) )
        & ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( $less @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_O @ V_B ) ) @ ( $product @ 90.0 @ 'Degree/0' ) )
        & ( '2d.point-inside-of/2' @ V_M @ ( '2d.triangle/3' @ V_O @ V_A @ V_B ) )
        & ( V_P
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_M @ ( '2d.line/2' @ V_O @ V_A ) ) )
        & ( V_Q
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_M @ ( '2d.line/2' @ V_O @ V_B ) ) )
        & ( '2d.is-orthocenter-of/2' @ V_H @ ( '2d.triangle/3' @ V_O @ V_P @ V_Q ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_H_dot_0: '2d.Point'] :
    ? [V_C: '2d.Point',V_D: '2d.Point'] :
      ( ( V_C
        = ( '2d.foot-of-perpendicular-line-from-to/2' @ ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 'Ox/0' @ 'Oy/0' ) @ ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) ) ) )
      & ( V_D
        = ( '2d.foot-of-perpendicular-line-from-to/2' @ ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 'Ox/0' @ 'Oy/0' ) @ ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) ) ) )
      & ( '2d.on/2' @ V_H_dot_0 @ ( '2d.seg/2' @ V_C @ V_D ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_H_dot_0: '2d.Point'] :
    ? [V_C: '2d.Point',V_D: '2d.Point'] :
      ( ( V_C
        = ( '2d.foot-of-perpendicular-line-from-to/2' @ ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 'Ox/0' @ 'Oy/0' ) @ ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) ) ) )
      & ( V_D
        = ( '2d.foot-of-perpendicular-line-from-to/2' @ ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 'Ox/0' @ 'Oy/0' ) @ ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) ) ) )
      & ( '2d.point-inside-of/2' @ V_H_dot_0 @ ( '2d.triangle/3' @ ( '2d.point/2' @ 'Ox/0' @ 'Oy/0' ) @ V_C @ V_D ) ) ) ),
    answer_to(p2_question,[])).

