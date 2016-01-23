%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1962, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% On the circle $K$ there are given three distinct points $A$, $B$, $C$.
%% Construct (using only straightedge and compasses) a fourth
%% point $D$ on $K$ such that a circle can be inscribed in the quadrilateral
%% thus obtained.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  132 (   7 equality;  81 variable)
%            Maximal formula depth :   27 (  24 average)
%            Number of connectives :  116 (   0   ~;   0   |;  23   &;  93   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   26 (  12 sgn;   0   !;  12   ?;   2   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_D: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_K: '2d.Shape',V_K2: '2d.Shape'] :
        ( ( V_A
          = ( '2d.point/2' @ V_Ax @ V_Ay ) )
        & ( V_B
          = ( '2d.point/2' @ V_Bx @ V_By ) )
        & ( V_C
          = ( '2d.point/2' @ V_Cx @ V_Cy ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.circle-type/1' @ V_K )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_K )
        & ( '2d.circle-type/1' @ V_K2 )
        & ( '2d.on/2' @ V_D @ V_K )
        & ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.is-inscribed-in/2' @ V_K2 @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) ) ) )).

thf(p_answer,answer,(
    ^ [V_D_dot_0: '2d.Point'] :
    ? [V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point',V_C_dot_0: '2d.Point',V_I: '2d.Point',V_E: '2d.Point',V_K_dot_0: '2d.Shape',V_O: '2d.Point'] :
      ( ( V_A_dot_0
        = ( '2d.point/2' @ V_Ax @ V_Ay ) )
      & ( V_B_dot_0
        = ( '2d.point/2' @ V_Bx @ V_By ) )
      & ( V_C_dot_0
        = ( '2d.point/2' @ V_Cx @ V_Cy ) )
      & ( '2d.is-triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 )
      & ( '2d.circle-type/1' @ V_K_dot_0 )
      & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 ) @ V_K_dot_0 )
      & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_A_dot_0 @ V_E ) @ V_K_dot_0 )
      & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_A_dot_0 ) @ ( '2d.line/2' @ V_A_dot_0 @ V_E ) )
      & ( '2d.perpendicular/2' @ ( '2d.line/2' @ ( '2d.midpoint-of/2' @ V_A_dot_0 @ V_C_dot_0 ) @ V_O ) @ ( '2d.line/2' @ V_A_dot_0 @ V_C_dot_0 ) )
      & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_B_dot_0 @ V_I ) @ ( '2d.angle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 ) )
      & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A_dot_0 @ V_O ) )
        = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_I @ V_O ) ) )
      & ( '2d.point-inside-of/2' @ V_I @ V_K_dot_0 )
      & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_C_dot_0 @ V_I ) @ ( '2d.angle/3' @ V_B_dot_0 @ V_C_dot_0 @ V_D_dot_0 ) )
      & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_A_dot_0 @ V_I ) @ ( '2d.angle/3' @ V_D_dot_0 @ V_A_dot_0 @ V_B_dot_0 ) )
      & ( '2d.on/2' @ V_D_dot_0 @ V_K_dot_0 ) ) ),
    answer_to(p_question,[])).
