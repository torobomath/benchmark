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

% Syntax   : Number of formulae    :    8 (   0 unit;   6 type;   0 defn)
%            Number of atoms       :  114 (  12 equality;  55 variable)
%            Maximal formula depth :   29 (   7 average)
%            Number of connectives :   88 (   0   ~;   0   |;  15   &;  73   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   6   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    2 func;    0 numbers)

include('axioms.ax').

thf('Ax/0_type',type,(
    'Ax/0': $real )).

thf('Ay/0_type',type,(
    'Ay/0': $real )).

thf('Bx/0_type',type,(
    'Bx/0': $real )).

thf('By/0_type',type,(
    'By/0': $real )).

thf('Cx/0_type',type,(
    'Cx/0': $real )).

thf('Cy/0_type',type,(
    'Cy/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_f: ( '2d.Point' > $real ),V_min: $real] :
        ( ( V_A
          = ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) )
        & ( V_B
          = ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) )
        & ( V_C
          = ( '2d.point/2' @ 'Cx/0' @ 'Cy/0' ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_D
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_P @ ( '2d.line/2' @ V_B @ V_C ) ) )
        & ( V_E
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_P @ ( '2d.line/2' @ V_C @ V_A ) ) )
        & ( V_F
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_P @ ( '2d.line/2' @ V_A @ V_B ) ) )
        & ( V_f
          = ( ^ [V_p: '2d.Point'] :
                ( $sum @ ( $quotient @ ( '2d.distance/2' @ V_B @ V_C ) @ ( '2d.distance/2' @ V_p @ V_D ) ) @ ( $sum @ ( $quotient @ ( '2d.distance/2' @ V_C @ V_A ) @ ( '2d.distance/2' @ V_p @ V_E ) ) @ ( $quotient @ ( '2d.distance/2' @ V_A @ V_B ) @ ( '2d.distance/2' @ V_p @ V_F ) ) ) ) ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_min
          = ( V_f @ V_P ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_var: $real] :
              ? [V_q: '2d.Point'] :
                ( V_var
                = ( V_f @ V_q ) ) )
          @ V_min ) ) )).

thf(p_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
    ? [V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point',V_C_dot_0: '2d.Point'] :
      ( ( V_A_dot_0
        = ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) )
      & ( V_B_dot_0
        = ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) )
      & ( V_C_dot_0
        = ( '2d.point/2' @ 'Cx/0' @ 'Cy/0' ) )
      & ( '2d.is-triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 )
      & ( '2d.is-incenter-of/2' @ V_P_dot_0 @ ( '2d.triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 ) ) ) ),
    answer_to(p_question,[])).

