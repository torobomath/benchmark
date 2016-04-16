%% DOMAIN:    Geometry, sphere and other surfaces
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1963, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-17
%%
%% <PROBLEM-TEXT>
%% Point $A$ and segment $BC$ are given. Determine the locus of points in space
%% which are vertices of right angles with one side passing through $A$, and the
%% other side intersecting the segment $BC$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   11 (   0 unit;   9 type;   0 defn)
%            Number of atoms       :  116 (  13 equality;  48 variable)
%            Maximal formula depth :   22 (   5 average)
%            Number of connectives :   94 (   6   ~;   2   |;  16   &;  70   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   9   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   0   !;   9   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   2 pred;    2 func;    2 numbers)

include('axioms.ax').

thf('Ax/0_type',type,(
    'Ax/0': $real )).

thf('Ay/0_type',type,(
    'Ay/0': $real )).

thf('Az/0_type',type,(
    'Az/0': $real )).

thf('Bx/0_type',type,(
    'Bx/0': $real )).

thf('By/0_type',type,(
    'By/0': $real )).

thf('Bz/0_type',type,(
    'Bz/0': $real )).

thf('Cx/0_type',type,(
    'Cx/0': $real )).

thf('Cy/0_type',type,(
    'Cy/0': $real )).

thf('Cz/0_type',type,(
    'Cz/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ '3d.Point'
    @ ^ [V_P: '3d.Point'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_X: '3d.Point'] :
        ( ( V_A
          = ( '3d.point/3' @ 'Ax/0' @ 'Ay/0' @ 'Az/0' ) )
        & ( V_B
          = ( '3d.point/3' @ 'Bx/0' @ 'By/0' @ 'Bz/0' ) )
        & ( V_C
          = ( '3d.point/3' @ 'Cx/0' @ 'Cy/0' @ 'Cz/0' ) )
        & ( V_B != V_C )
        & ~ ( '3d.on/2' @ V_A @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( V_X != V_A )
        & ( '3d.on/2' @ V_X @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( '3d.rad-of-angle/1' @ ( '3d.angle/3' @ V_A @ V_P @ V_X ) )
          = ( $product @ 90.0 @ 'Degree/0' ) ) ) )).

thf(p_answer,answer,(
    ^ [V_P_dot_0: '3d.Point'] :
    ? [V_A_dot_0: '3d.Point',V_B_dot_0: '3d.Point',V_C_dot_0: '3d.Point',V_rB2: $real,V_rC2: $real] :
      ( ( V_A_dot_0
        = ( '3d.point/3' @ 'Ax/0' @ 'Ay/0' @ 'Az/0' ) )
      & ( V_B_dot_0
        = ( '3d.point/3' @ 'Bx/0' @ 'By/0' @ 'Bz/0' ) )
      & ( V_C_dot_0
        = ( '3d.point/3' @ 'Cx/0' @ 'Cy/0' @ 'Cz/0' ) )
      & ( V_B_dot_0 != V_C_dot_0 )
      & ~ ( '3d.on/2' @ V_A_dot_0 @ ( '3d.seg/2' @ V_B_dot_0 @ V_C_dot_0 ) )
      & ( V_rB2
        = ( $quotient @ ( '3d.distance/2' @ V_A_dot_0 @ V_B_dot_0 ) @ 2.0 ) )
      & ( V_rC2
        = ( $quotient @ ( '3d.distance/2' @ V_A_dot_0 @ V_C_dot_0 ) @ 2.0 ) )
      & ( V_P_dot_0 != V_A_dot_0 )
      & ( ( $lesseq @ ( '3d.distance/2' @ V_P_dot_0 @ ( '3d.midpoint-of/2' @ V_A_dot_0 @ V_B_dot_0 ) ) @ V_rB2 )
        | ( $lesseq @ ( '3d.distance/2' @ V_P_dot_0 @ ( '3d.midpoint-of/2' @ V_A_dot_0 @ V_C_dot_0 ) ) @ V_rC2 ) )
      & ( ( $greatereq @ ( '3d.distance/2' @ V_P_dot_0 @ ( '3d.midpoint-of/2' @ V_A_dot_0 @ V_B_dot_0 ) ) @ V_rB2 )
        | ( $greatereq @ ( '3d.distance/2' @ V_P_dot_0 @ ( '3d.midpoint-of/2' @ V_A_dot_0 @ V_C_dot_0 ) ) @ V_rC2 ) ) ) ),
    answer_to(p_question,[])).

