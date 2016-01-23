%% DOMAIN:    Geometry, hexahedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1962, Problem 3
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-04
%%
%% <PROBLEM-TEXT>
%% Consider the cube $ABCDA'B'C'D'$ ($ABCD$ and $A'B'C'D'$ are the upper and
%% lower bases, respectively, and edges $AA'$, $BB'$, $CC'$, $DD'$ are parallel).
%% The point $X$ moves at constant speed along the perimeter of the square $ABCD$
%% in the direction $ABCDA$, and the point $Y$ moves at the same rate along
%% the perimeter of the square $B'C'CB$ in the direction $B'C'CBB'$. Points $X$
%% and $Y$ begin their motion at the same instant from the starting positions $A$
%% and $B'$, respectively. Determine and draw the locus of the midpoints of the
%% segments $XY$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  284 (  21 equality; 161 variable)
%            Maximal formula depth :   32 (  32 average)
%            Number of connectives :  240 (   0   ~;   4   |;  26   &; 210   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :   68 (  27 sgn;   0   !;  18   ?;   2   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_M: '3d.Point'] :
      ? [V_A1: '3d.Point',V_B1: '3d.Point',V_C1: '3d.Point',V_D1: '3d.Point',V_A2: '3d.Point',V_B2: '3d.Point',V_C2: '3d.Point',V_D2: '3d.Point',V_X: '3d.Point',V_Y: '3d.Point'] :
        ( ( '3d.is-cube/8' @ V_A1 @ V_B1 @ V_C1 @ V_D1 @ V_A2 @ V_B2 @ V_C2 @ V_D2 )
        & ( V_A1
          = ( '3d.point/3' @ V_A1x @ V_A1y @ V_A1z ) )
        & ( V_B1
          = ( '3d.point/3' @ V_B1x @ V_B1y @ V_B1z ) )
        & ( V_C1
          = ( '3d.point/3' @ V_C1x @ V_C1y @ V_C1z ) )
        & ( V_D1
          = ( '3d.point/3' @ V_D1x @ V_D1y @ V_D1z ) )
        & ( V_A2
          = ( '3d.point/3' @ V_A2x @ V_A2y @ V_A2z ) )
        & ( V_B2
          = ( '3d.point/3' @ V_B2x @ V_B2y @ V_B2z ) )
        & ( V_C2
          = ( '3d.point/3' @ V_C2x @ V_C2y @ V_C2z ) )
        & ( V_D2
          = ( '3d.point/3' @ V_D2x @ V_D2y @ V_D2z ) )
        & ( ( ( '3d.on/2' @ V_X @ ( '3d.seg/2' @ V_A1 @ V_B1 ) )
            & ( '3d.on/2' @ V_Y @ ( '3d.seg/2' @ V_B2 @ V_C2 ) )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A1 @ V_X ) )
              = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B2 @ V_Y ) ) ) )
          | ( ( '3d.on/2' @ V_X @ ( '3d.seg/2' @ V_B1 @ V_C1 ) )
            & ( '3d.on/2' @ V_Y @ ( '3d.seg/2' @ V_C2 @ V_C1 ) )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B1 @ V_X ) )
              = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C2 @ V_Y ) ) ) )
          | ( ( '3d.on/2' @ V_X @ ( '3d.seg/2' @ V_C1 @ V_D1 ) )
            & ( '3d.on/2' @ V_Y @ ( '3d.seg/2' @ V_C1 @ V_B1 ) )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C1 @ V_X ) )
              = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C1 @ V_Y ) ) ) )
          | ( ( '3d.on/2' @ V_X @ ( '3d.seg/2' @ V_D1 @ V_A1 ) )
            & ( '3d.on/2' @ V_Y @ ( '3d.seg/2' @ V_B1 @ V_B2 ) )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D1 @ V_X ) )
              = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B1 @ V_Y ) ) ) )
          | ( V_M
            = ( '3d.midpoint-of/2' @ V_X @ V_Y ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_M_dot_0: '3d.Point'] :
    ? [V_A1_dot_0: '3d.Point',V_B1_dot_0: '3d.Point',V_C1_dot_0: '3d.Point',V_D1_dot_0: '3d.Point',V_A2_dot_0: '3d.Point',V_B2_dot_0: '3d.Point',V_C2_dot_0: '3d.Point',V_D2_dot_0: '3d.Point'] :
      ( ( '3d.is-cube/8' @ V_A1_dot_0 @ V_B1_dot_0 @ V_C1_dot_0 @ V_D1_dot_0 @ V_A2_dot_0 @ V_B2_dot_0 @ V_C2_dot_0 @ V_D2_dot_0 )
      & ( V_A1_dot_0
        = ( '3d.point/3' @ V_A1x @ V_A1y @ V_A1z ) )
      & ( V_B1_dot_0
        = ( '3d.point/3' @ V_B1x @ V_B1y @ V_B1z ) )
      & ( V_C1_dot_0
        = ( '3d.point/3' @ V_C1x @ V_C1y @ V_C1z ) )
      & ( V_D1_dot_0
        = ( '3d.point/3' @ V_D1x @ V_D1y @ V_D1z ) )
      & ( V_A2_dot_0
        = ( '3d.point/3' @ V_A2x @ V_A2y @ V_A2z ) )
      & ( V_B2_dot_0
        = ( '3d.point/3' @ V_B2x @ V_B2y @ V_B2z ) )
      & ( V_C2_dot_0
        = ( '3d.point/3' @ V_C2x @ V_C2y @ V_C2z ) )
      & ( V_D2_dot_0
        = ( '3d.point/3' @ V_D2x @ V_D2y @ V_D2z ) )
      & ( '3d.on/2' @ V_M_dot_0 @ ( '3d.square/4' @ V_C1_dot_0 @ ( '3d.point/3' @ ( '//2' @ ( '+/2' @ V_A1x @ ( '+/2' @ V_B1x @ ( '+/2' @ V_C1x @ V_D1x ) ) ) @ 4 ) @ ( '//2' @ ( '+/2' @ V_A1y @ ( '+/2' @ V_B1y @ ( '+/2' @ V_C1y @ V_D1y ) ) ) @ 4 ) @ ( '//2' @ ( '+/2' @ V_A1z @ ( '+/2' @ V_B1z @ ( '+/2' @ V_C1z @ V_D1z ) ) ) @ 4 ) ) @ ( '3d.point/3' @ ( '//2' @ ( '+/2' @ V_A1x @ ( '+/2' @ V_B1x @ ( '+/2' @ V_A2x @ V_B2x ) ) ) @ 4 ) @ ( '//2' @ ( '+/2' @ V_A1y @ ( '+/2' @ V_B1y @ ( '+/2' @ V_A2y @ V_B2y ) ) ) @ 4 ) @ ( '//2' @ ( '+/2' @ V_A1z @ ( '+/2' @ V_B1z @ ( '+/2' @ V_A2z @ V_B2z ) ) ) @ 4 ) ) @ ( '3d.point/3' @ ( '//2' @ ( '+/2' @ V_C1x @ ( '+/2' @ V_B1x @ ( '+/2' @ V_C2x @ V_B2x ) ) ) @ 4 ) @ ( '//2' @ ( '+/2' @ V_C1y @ ( '+/2' @ V_B1y @ ( '+/2' @ V_C2y @ V_B2y ) ) ) @ 4 ) @ ( '//2' @ ( '+/2' @ V_C1z @ ( '+/2' @ V_B1z @ ( '+/2' @ V_C2z @ V_B2z ) ) ) @ 4 ) ) ) ) ) ),
    answer_to(p_question,[])).
