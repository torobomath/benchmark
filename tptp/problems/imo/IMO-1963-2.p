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

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  115 (  13 equality;  66 variable)
%            Maximal formula depth :   22 (  20 average)
%            Number of connectives :   93 (   6   ~;   2   |;  16   &;  69   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   29 (  18 sgn;   0   !;   9   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '3d.Point'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_X: '3d.Point'] :
        ( ( V_A
          = ( '3d.point/3' @ V_Ax @ V_Ay @ V_Az ) )
        & ( V_B
          = ( '3d.point/3' @ V_Bx @ V_By @ V_Bz ) )
        & ( V_C
          = ( '3d.point/3' @ V_Cx @ V_Cy @ V_Cz ) )
        & ( V_B != V_C )
        & ~ ( '3d.on/2' @ V_A @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( V_X != V_A )
        & ( '3d.on/2' @ V_X @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( '3d.rad-of-angle/1' @ ( '3d.angle/3' @ V_A @ V_P @ V_X ) )
          = ( '*/2' @ 90 @ 'Degree/0' ) ) ) )).

thf(p_answer,answer,(
    ^ [V_P_dot_0: '3d.Point'] :
    ? [V_A_dot_0: '3d.Point',V_B_dot_0: '3d.Point',V_C_dot_0: '3d.Point',V_rB2: 'R',V_rC2: 'R'] :
      ( ( V_A_dot_0
        = ( '3d.point/3' @ V_Ax @ V_Ay @ V_Az ) )
      & ( V_B_dot_0
        = ( '3d.point/3' @ V_Bx @ V_By @ V_Bz ) )
      & ( V_C_dot_0
        = ( '3d.point/3' @ V_Cx @ V_Cy @ V_Cz ) )
      & ( V_B_dot_0 != V_C_dot_0 )
      & ~ ( '3d.on/2' @ V_A_dot_0 @ ( '3d.seg/2' @ V_B_dot_0 @ V_C_dot_0 ) )
      & ( V_rB2
        = ( '//2' @ ( '3d.distance/2' @ V_A_dot_0 @ V_B_dot_0 ) @ 2 ) )
      & ( V_rC2
        = ( '//2' @ ( '3d.distance/2' @ V_A_dot_0 @ V_C_dot_0 ) @ 2 ) )
      & ( V_P_dot_0 != V_A_dot_0 )
      & ( ( '<=/2' @ ( '3d.distance/2' @ V_P_dot_0 @ ( '3d.midpoint-of/2' @ V_A_dot_0 @ V_B_dot_0 ) ) @ V_rB2 )
        | ( '<=/2' @ ( '3d.distance/2' @ V_P_dot_0 @ ( '3d.midpoint-of/2' @ V_A_dot_0 @ V_C_dot_0 ) ) @ V_rC2 ) )
      & ( ( '>=/2' @ ( '3d.distance/2' @ V_P_dot_0 @ ( '3d.midpoint-of/2' @ V_A_dot_0 @ V_B_dot_0 ) ) @ V_rB2 )
        | ( '>=/2' @ ( '3d.distance/2' @ V_P_dot_0 @ ( '3d.midpoint-of/2' @ V_A_dot_0 @ V_C_dot_0 ) ) @ V_rC2 ) ) ) ),
    answer_to(p_question,[])).
