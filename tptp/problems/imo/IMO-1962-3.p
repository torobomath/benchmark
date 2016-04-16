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

% Syntax   : Number of formulae    :   26 (   0 unit;  24 type;   0 defn)
%            Number of atoms       :  285 (  21 equality;  77 variable)
%            Maximal formula depth :   32 (   4 average)
%            Number of connectives :  241 (   0   ~;   4   |;  26   &; 211   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   37 (  24   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   0   !;  18   ?;   2   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   0 pred;    2 func;    1 numbers)

include('axioms.ax').

thf('A1x/0_type',type,(
    'A1x/0': $real )).

thf('A1y/0_type',type,(
    'A1y/0': $real )).

thf('A1z/0_type',type,(
    'A1z/0': $real )).

thf('A2x/0_type',type,(
    'A2x/0': $real )).

thf('A2y/0_type',type,(
    'A2y/0': $real )).

thf('A2z/0_type',type,(
    'A2z/0': $real )).

thf('B1x/0_type',type,(
    'B1x/0': $real )).

thf('B1y/0_type',type,(
    'B1y/0': $real )).

thf('B1z/0_type',type,(
    'B1z/0': $real )).

thf('B2x/0_type',type,(
    'B2x/0': $real )).

thf('B2y/0_type',type,(
    'B2y/0': $real )).

thf('B2z/0_type',type,(
    'B2z/0': $real )).

thf('C1x/0_type',type,(
    'C1x/0': $real )).

thf('C1y/0_type',type,(
    'C1y/0': $real )).

thf('C1z/0_type',type,(
    'C1z/0': $real )).

thf('C2x/0_type',type,(
    'C2x/0': $real )).

thf('C2y/0_type',type,(
    'C2y/0': $real )).

thf('C2z/0_type',type,(
    'C2z/0': $real )).

thf('D1x/0_type',type,(
    'D1x/0': $real )).

thf('D1y/0_type',type,(
    'D1y/0': $real )).

thf('D1z/0_type',type,(
    'D1z/0': $real )).

thf('D2x/0_type',type,(
    'D2x/0': $real )).

thf('D2y/0_type',type,(
    'D2y/0': $real )).

thf('D2z/0_type',type,(
    'D2z/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ '3d.Point'
    @ ^ [V_M: '3d.Point'] :
      ? [V_A1: '3d.Point',V_B1: '3d.Point',V_C1: '3d.Point',V_D1: '3d.Point',V_A2: '3d.Point',V_B2: '3d.Point',V_C2: '3d.Point',V_D2: '3d.Point',V_X: '3d.Point',V_Y: '3d.Point'] :
        ( ( '3d.is-cube/8' @ V_A1 @ V_B1 @ V_C1 @ V_D1 @ V_A2 @ V_B2 @ V_C2 @ V_D2 )
        & ( V_A1
          = ( '3d.point/3' @ 'A1x/0' @ 'A1y/0' @ 'A1z/0' ) )
        & ( V_B1
          = ( '3d.point/3' @ 'B1x/0' @ 'B1y/0' @ 'B1z/0' ) )
        & ( V_C1
          = ( '3d.point/3' @ 'C1x/0' @ 'C1y/0' @ 'C1z/0' ) )
        & ( V_D1
          = ( '3d.point/3' @ 'D1x/0' @ 'D1y/0' @ 'D1z/0' ) )
        & ( V_A2
          = ( '3d.point/3' @ 'A2x/0' @ 'A2y/0' @ 'A2z/0' ) )
        & ( V_B2
          = ( '3d.point/3' @ 'B2x/0' @ 'B2y/0' @ 'B2z/0' ) )
        & ( V_C2
          = ( '3d.point/3' @ 'C2x/0' @ 'C2y/0' @ 'C2z/0' ) )
        & ( V_D2
          = ( '3d.point/3' @ 'D2x/0' @ 'D2y/0' @ 'D2z/0' ) )
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
        = ( '3d.point/3' @ 'A1x/0' @ 'A1y/0' @ 'A1z/0' ) )
      & ( V_B1_dot_0
        = ( '3d.point/3' @ 'B1x/0' @ 'B1y/0' @ 'B1z/0' ) )
      & ( V_C1_dot_0
        = ( '3d.point/3' @ 'C1x/0' @ 'C1y/0' @ 'C1z/0' ) )
      & ( V_D1_dot_0
        = ( '3d.point/3' @ 'D1x/0' @ 'D1y/0' @ 'D1z/0' ) )
      & ( V_A2_dot_0
        = ( '3d.point/3' @ 'A2x/0' @ 'A2y/0' @ 'A2z/0' ) )
      & ( V_B2_dot_0
        = ( '3d.point/3' @ 'B2x/0' @ 'B2y/0' @ 'B2z/0' ) )
      & ( V_C2_dot_0
        = ( '3d.point/3' @ 'C2x/0' @ 'C2y/0' @ 'C2z/0' ) )
      & ( V_D2_dot_0
        = ( '3d.point/3' @ 'D2x/0' @ 'D2y/0' @ 'D2z/0' ) )
      & ( '3d.on/2' @ V_M_dot_0 @ ( '3d.square/4' @ V_C1_dot_0 @ ( '3d.point/3' @ ( $quotient @ ( $sum @ 'A1x/0' @ ( $sum @ 'B1x/0' @ ( $sum @ 'C1x/0' @ 'D1x/0' ) ) ) @ 4.0 ) @ ( $quotient @ ( $sum @ 'A1y/0' @ ( $sum @ 'B1y/0' @ ( $sum @ 'C1y/0' @ 'D1y/0' ) ) ) @ 4.0 ) @ ( $quotient @ ( $sum @ 'A1z/0' @ ( $sum @ 'B1z/0' @ ( $sum @ 'C1z/0' @ 'D1z/0' ) ) ) @ 4.0 ) ) @ ( '3d.point/3' @ ( $quotient @ ( $sum @ 'A1x/0' @ ( $sum @ 'B1x/0' @ ( $sum @ 'A2x/0' @ 'B2x/0' ) ) ) @ 4.0 ) @ ( $quotient @ ( $sum @ 'A1y/0' @ ( $sum @ 'B1y/0' @ ( $sum @ 'A2y/0' @ 'B2y/0' ) ) ) @ 4.0 ) @ ( $quotient @ ( $sum @ 'A1z/0' @ ( $sum @ 'B1z/0' @ ( $sum @ 'A2z/0' @ 'B2z/0' ) ) ) @ 4.0 ) ) @ ( '3d.point/3' @ ( $quotient @ ( $sum @ 'C1x/0' @ ( $sum @ 'B1x/0' @ ( $sum @ 'C2x/0' @ 'B2x/0' ) ) ) @ 4.0 ) @ ( $quotient @ ( $sum @ 'C1y/0' @ ( $sum @ 'B1y/0' @ ( $sum @ 'C2y/0' @ 'B2y/0' ) ) ) @ 4.0 ) @ ( $quotient @ ( $sum @ 'C1z/0' @ ( $sum @ 'B1z/0' @ ( $sum @ 'C2z/0' @ 'B2z/0' ) ) ) @ 4.0 ) ) ) ) ) ),
    answer_to(p_question,[])).

