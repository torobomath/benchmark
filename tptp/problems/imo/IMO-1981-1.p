%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1981, Problem 1
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23
%%
%% <PROBLEM-TEXT>
%% $P$ is a point inside a given triangle $ABC$. $D$, $E$, $F$ are the feet of the
%% perpendiculars from $P$ to the lines $BC$, $CA$, $AB$ respectively.
%% Find all $P$ for which
%% ¥[
%% $¥frac{BC}{PD} + ¥frac{CA}{PE} + ¥frac{QB}{PF}$
%% ¥]
%% is least.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  114 (  12 equality;  67 variable)
%            Maximal formula depth :   30 (  22 average)
%            Number of connectives :   88 (   0   ~;   0   |;  15   &;  73   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :   28 (  12 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_f: '2d.Point' > 'R',V_min: 'R'] :
        ( ( V_A
          = ( '2d.point/2' @ V_Ax @ V_Ay ) )
        & ( V_B
          = ( '2d.point/2' @ V_Bx @ V_By ) )
        & ( V_C
          = ( '2d.point/2' @ V_Cx @ V_Cy ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_D
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_P @ ( '2d.line/2' @ V_B @ V_C ) ) )
        & ( V_E
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_P @ ( '2d.line/2' @ V_C @ V_A ) ) )
        & ( V_F
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_P @ ( '2d.line/2' @ V_A @ V_B ) ) )
        & ( V_f
          = ( ^ [V_p: '2d.Point'] :
                ( '+/2' @ ( '//2' @ ( '2d.distance/2' @ V_B @ V_C ) @ ( '2d.distance/2' @ V_p @ V_D ) ) @ ( '+/2' @ ( '//2' @ ( '2d.distance/2' @ V_C @ V_A ) @ ( '2d.distance/2' @ V_p @ V_E ) ) @ ( '//2' @ ( '2d.distance/2' @ V_A @ V_B ) @ ( '2d.distance/2' @ V_p @ V_F ) ) ) ) ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_min
          = ( 'LamApp/2' @ V_f @ V_P ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_var: 'R'] :
              ? [V_q: '2d.Point'] :
                ( V_var
                = ( 'LamApp/2' @ V_f @ V_q ) ) )
          @ V_min ) ) )).

thf(p_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
    ? [V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point',V_C_dot_0: '2d.Point'] :
      ( ( V_A_dot_0
        = ( '2d.point/2' @ V_Ax @ V_Ay ) )
      & ( V_B_dot_0
        = ( '2d.point/2' @ V_Bx @ V_By ) )
      & ( V_C_dot_0
        = ( '2d.point/2' @ V_Cx @ V_Cy ) )
      & ( '2d.is-triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 )
      & ( '2d.is-incenter-of/2' @ V_P_dot_0 @ ( '2d.triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 ) ) ) ),
    answer_to(p_question,[])).
