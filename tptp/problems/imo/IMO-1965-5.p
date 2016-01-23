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

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  172 (  14 equality;  96 variable)
%            Maximal formula depth :   21 (  16 average)
%            Number of connectives :  140 (   0   ~;   0   |;  20   &; 120   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   45 (  13 sgn;   0   !;  16   ?;   4   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_H: '2d.Point'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_M: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_O
          = ( '2d.point/2' @ V_Ox @ V_Oy ) )
        & ( V_A
          = ( '2d.point/2' @ V_Ax @ V_Ay ) )
        & ( V_B
          = ( '2d.point/2' @ V_Bx @ V_By ) )
        & ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( '</2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_O @ V_B ) ) @ ( '*/2' @ 90 @ 'Degree/0' ) )
        & ( '2d.on/2' @ V_M @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( V_P
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_M @ ( '2d.line/2' @ V_O @ V_A ) ) )
        & ( V_Q
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_M @ ( '2d.line/2' @ V_O @ V_B ) ) )
        & ( '2d.is-orthocenter-of/2' @ V_H @ ( '2d.triangle/3' @ V_O @ V_P @ V_Q ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_H: '2d.Point'] :
      ? [V_O_dot_0: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_M: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_O_dot_0
          = ( '2d.point/2' @ V_Ox @ V_Oy ) )
        & ( V_A
          = ( '2d.point/2' @ V_Ax @ V_Ay ) )
        & ( V_B
          = ( '2d.point/2' @ V_Bx @ V_By ) )
        & ( '2d.is-triangle/3' @ V_O_dot_0 @ V_A @ V_B )
        & ( '</2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_O_dot_0 @ V_B ) ) @ ( '*/2' @ 90 @ 'Degree/0' ) )
        & ( '2d.point-inside-of/2' @ V_M @ ( '2d.triangle/3' @ V_O_dot_0 @ V_A @ V_B ) )
        & ( V_P
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_M @ ( '2d.line/2' @ V_O_dot_0 @ V_A ) ) )
        & ( V_Q
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_M @ ( '2d.line/2' @ V_O_dot_0 @ V_B ) ) )
        & ( '2d.is-orthocenter-of/2' @ V_H @ ( '2d.triangle/3' @ V_O_dot_0 @ V_P @ V_Q ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_H_dot_0: '2d.Point'] :
    ? [V_C: '2d.Point',V_D: '2d.Point'] :
      ( ( V_C
        = ( '2d.foot-of-perpendicular-line-from-to/2' @ ( '2d.point/2' @ V_Bx @ V_By ) @ ( '2d.line/2' @ ( '2d.point/2' @ V_Ox @ V_Oy ) @ ( '2d.point/2' @ V_Ax @ V_Ay ) ) ) )
      & ( V_D
        = ( '2d.foot-of-perpendicular-line-from-to/2' @ ( '2d.point/2' @ V_Ax @ V_Ay ) @ ( '2d.line/2' @ ( '2d.point/2' @ V_Ox @ V_Oy ) @ ( '2d.point/2' @ V_Bx @ V_By ) ) ) )
      & ( '2d.on/2' @ V_H_dot_0 @ ( '2d.seg/2' @ V_C @ V_D ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_H_dot_0: '2d.Point'] :
    ? [V_C: '2d.Point',V_D: '2d.Point'] :
      ( ( V_C
        = ( '2d.foot-of-perpendicular-line-from-to/2' @ ( '2d.point/2' @ V_Bx @ V_By ) @ ( '2d.line/2' @ ( '2d.point/2' @ V_Ox @ V_Oy ) @ ( '2d.point/2' @ V_Ax @ V_Ay ) ) ) )
      & ( V_D
        = ( '2d.foot-of-perpendicular-line-from-to/2' @ ( '2d.point/2' @ V_Ax @ V_Ay ) @ ( '2d.line/2' @ ( '2d.point/2' @ V_Ox @ V_Oy ) @ ( '2d.point/2' @ V_Bx @ V_By ) ) ) )
      & ( '2d.point-inside-of/2' @ V_H_dot_0 @ ( '2d.triangle/3' @ V_O @ V_C @ V_D ) ) ) ),
    answer_to(p2_question,[])).
