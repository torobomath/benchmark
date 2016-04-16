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

% Syntax   : Number of formulae    :    8 (   0 unit;   6 type;   0 defn)
%            Number of atoms       :  133 (   7 equality;  69 variable)
%            Maximal formula depth :   27 (   8 average)
%            Number of connectives :  117 (   0   ~;   0   |;  23   &;  94   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   6   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   0   !;  12   ?;   2   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

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
    @ ^ [V_D: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_K: '2d.Shape',V_K2: '2d.Shape'] :
        ( ( V_A
          = ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) )
        & ( V_B
          = ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) )
        & ( V_C
          = ( '2d.point/2' @ 'Cx/0' @ 'Cy/0' ) )
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
        = ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) )
      & ( V_B_dot_0
        = ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) )
      & ( V_C_dot_0
        = ( '2d.point/2' @ 'Cx/0' @ 'Cy/0' ) )
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

