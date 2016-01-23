%% DOMAIN:    Geometry, lines and planes in 3D space
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1959, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-16
%%
%% <PROBLEM-TEXT>
%% Two planes, $P$ and $Q$, intersect along the line $p$. The point $A$ is given in the
%% plane $P$, and the point $C$ in the plane $Q$; neither of these points lies on the
%% straight line $p$. Construct an isosceles trapezoid $ABCD$ (with $AB$ parallel to
%% $CD$) in which a circle can be inscribed, and with vertices $B$ and $D$ lying in
%% the planes $P$ and $Q$ respectively.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  183 (  14 equality; 112 variable)
%            Maximal formula depth :   34 (  34 average)
%            Number of connectives :  157 (   2   ~;   0   |;  37   &; 118   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   48 (  29 sgn;   0   !;  16   ?;   2   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_BD: 'ListOf' @ '3d.Point'] :
      ? [V_A: '3d.Point',V_C: '3d.Point',V_B_dot_0: '3d.Point',V_D_dot_0: '3d.Point',V_p: '3d.Shape',V_alpha: '3d.Shape',V_beta: '3d.Shape',V_K: '3d.Shape'] :
        ( ( V_alpha
          = ( '3d.plane/4' @ V_a1 @ V_b1 @ V_c1 @ V_d1 ) )
        & ( V_beta
          = ( '3d.plane/4' @ V_a2 @ V_b2 @ V_c2 @ V_d2 ) )
        & ( V_A
          = ( '3d.point/3' @ V_Ax @ V_Ay @ V_Az ) )
        & ( V_C
          = ( '3d.point/3' @ V_Cx @ V_Cy @ V_Cz ) )
        & ( '3d.on/2' @ V_A @ V_alpha )
        & ( '3d.on/2' @ V_C @ V_beta )
        & ( '3d.line-type/1' @ V_p )
        & ( ( '3d.intersection/2' @ V_alpha @ V_beta )
          = V_p )
        & ~ ( '3d.on/2' @ V_A @ V_p )
        & ~ ( '3d.on/2' @ V_C @ V_p )
        & ( '3d.on/2' @ V_B_dot_0 @ V_alpha )
        & ( '3d.on/2' @ V_D_dot_0 @ V_beta )
        & ( '3d.is-trapezoid/4' @ V_A @ V_B_dot_0 @ V_C @ V_D_dot_0 )
        & ( '3d.parallel/2' @ ( '3d.line/2' @ V_A @ V_B_dot_0 ) @ ( '3d.line/2' @ V_C @ V_D_dot_0 ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) )
          = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B_dot_0 @ V_D_dot_0 ) ) )
        & ( '3d.circle-type/1' @ V_K )
        & ( '3d.is-inscribed-in/2' @ V_K @ ( '3d.square/4' @ V_A @ V_B_dot_0 @ V_C @ V_D_dot_0 ) )
        & ( V_BD
          = ( 'cons/2' @ V_B_dot_0 @ ( 'cons/2' @ V_D_dot_0 @ 'nil/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_BD_dot_0: 'ListOf' @ '3d.Point'] :
    ? [V_a: '3d.Shape',V_c: '3d.Shape',V_A_dot_0: '3d.Point',V_AA: '3d.Point',V_C_dot_0: '3d.Point',V_p_dot_0: '3d.Shape',V_alpha_dot_0: '3d.Shape',V_beta_dot_0: '3d.Shape'] :
      ( ( V_alpha_dot_0
        = ( '3d.plane/4' @ V_a1 @ V_b1 @ V_c1 @ V_d1 ) )
      & ( V_beta_dot_0
        = ( '3d.plane/4' @ V_a2 @ V_b2 @ V_c2 @ V_d2 ) )
      & ( V_A_dot_0
        = ( '3d.point/3' @ V_Ax @ V_Ay @ V_Az ) )
      & ( V_C_dot_0
        = ( '3d.point/3' @ V_Cx @ V_Cy @ V_Cz ) )
      & ( '3d.on/2' @ V_A_dot_0 @ V_alpha_dot_0 )
      & ( '3d.on/2' @ V_C_dot_0 @ V_beta_dot_0 )
      & ( '3d.line-type/1' @ V_p_dot_0 )
      & ( ( '3d.intersection/2' @ V_alpha_dot_0 @ V_beta_dot_0 )
        = V_p_dot_0 )
      & ( '3d.line-type/1' @ V_a )
      & ( '3d.line-type/1' @ V_c )
      & ( '3d.on/2' @ V_A_dot_0 @ V_a )
      & ( '3d.on/2' @ V_C_dot_0 @ V_c )
      & ( '3d.parallel/2' @ V_a @ V_p_dot_0 )
      & ( '3d.parallel/2' @ V_c @ V_p_dot_0 )
      & ( '3d.on/2' @ V_AA @ V_c )
      & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_A_dot_0 @ V_AA ) @ V_c )
      & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_AA @ V_C_dot_0 ) )
        = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C_dot_0 @ V_B ) ) )
      & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_AA @ V_C_dot_0 ) )
        = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A_dot_0 @ V_D ) ) )
      & ( '3d.on/2' @ V_B @ V_a )
      & ( '3d.on/2' @ V_D @ V_c )
      & ( '3d.vec-opp-direction/2' @ ( '3d.vec/2' @ V_A_dot_0 @ V_B ) @ ( '3d.vec/2' @ V_C_dot_0 @ V_D ) ) ) ),
    answer_to(p_question,[])).
