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

% Syntax   : Number of formulae    :   16 (   0 unit;  14 type;   0 defn)
%            Number of atoms       :  198 (  15 equality;  87 variable)
%            Maximal formula depth :   38 (   6 average)
%            Number of connectives :  170 (   2   ~;   0   |;  38   &; 130   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   37 (  14   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   0   !;  18   ?;   2   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf('Ax/0_type',type,(
    'Ax/0': $real )).

thf('Ay/0_type',type,(
    'Ay/0': $real )).

thf('Az/0_type',type,(
    'Az/0': $real )).

thf('Cx/0_type',type,(
    'Cx/0': $real )).

thf('Cy/0_type',type,(
    'Cy/0': $real )).

thf('Cz/0_type',type,(
    'Cz/0': $real )).

thf('a1/0_type',type,(
    'a1/0': $real )).

thf('a2/0_type',type,(
    'a2/0': $real )).

thf('b1/0_type',type,(
    'b1/0': $real )).

thf('b2/0_type',type,(
    'b2/0': $real )).

thf('c1/0_type',type,(
    'c1/0': $real )).

thf('c2/0_type',type,(
    'c2/0': $real )).

thf('d1/0_type',type,(
    'd1/0': $real )).

thf('d2/0_type',type,(
    'd2/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ '3d.Point' )
    @ ^ [V_BD: ( 'ListOf' @ '3d.Point' )] :
      ? [V_A: '3d.Point',V_C: '3d.Point',V_B: '3d.Point',V_D: '3d.Point',V_p: '3d.Shape',V_alpha: '3d.Shape',V_beta: '3d.Shape',V_K: '3d.Shape'] :
        ( ( V_alpha
          = ( '3d.plane/4' @ 'a1/0' @ 'b1/0' @ 'c1/0' @ 'd1/0' ) )
        & ( V_beta
          = ( '3d.plane/4' @ 'a2/0' @ 'b2/0' @ 'c2/0' @ 'd2/0' ) )
        & ( V_A
          = ( '3d.point/3' @ 'Ax/0' @ 'Ay/0' @ 'Az/0' ) )
        & ( V_C
          = ( '3d.point/3' @ 'Cx/0' @ 'Cy/0' @ 'Cz/0' ) )
        & ( '3d.on/2' @ V_A @ V_alpha )
        & ( '3d.on/2' @ V_C @ V_beta )
        & ( '3d.line-type/1' @ V_p )
        & ( ( '3d.intersection/2' @ V_alpha @ V_beta )
          = V_p )
        & ~ ( '3d.on/2' @ V_A @ V_p )
        & ~ ( '3d.on/2' @ V_C @ V_p )
        & ( '3d.on/2' @ V_B @ V_alpha )
        & ( '3d.on/2' @ V_D @ V_beta )
        & ( '3d.is-trapezoid/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '3d.parallel/2' @ ( '3d.line/2' @ V_A @ V_B ) @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) )
          = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_D ) ) )
        & ( '3d.circle-type/1' @ V_K )
        & ( '3d.is-inscribed-in/2' @ V_K @ ( '3d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
        & ( V_BD
          = ( 'cons/2' @ '3d.Point' @ V_B @ ( 'cons/2' @ '3d.Point' @ V_D @ ( 'nil/0' @ '3d.Point' ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_BD_dot_0: ( 'ListOf' @ '3d.Point' )] :
    ? [V_a: '3d.Shape',V_c: '3d.Shape',V_A_dot_0: '3d.Point',V_AA: '3d.Point',V_C_dot_0: '3d.Point',V_p_dot_0: '3d.Shape',V_alpha_dot_0: '3d.Shape',V_beta_dot_0: '3d.Shape',V_B_dot_0: '3d.Point',V_D_dot_0: '3d.Point'] :
      ( ( V_alpha_dot_0
        = ( '3d.plane/4' @ 'a1/0' @ 'b1/0' @ 'c1/0' @ 'd1/0' ) )
      & ( V_beta_dot_0
        = ( '3d.plane/4' @ 'a2/0' @ 'b2/0' @ 'c2/0' @ 'd2/0' ) )
      & ( V_A_dot_0
        = ( '3d.point/3' @ 'Ax/0' @ 'Ay/0' @ 'Az/0' ) )
      & ( V_C_dot_0
        = ( '3d.point/3' @ 'Cx/0' @ 'Cy/0' @ 'Cz/0' ) )
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
        = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C_dot_0 @ V_B_dot_0 ) ) )
      & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_AA @ V_C_dot_0 ) )
        = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A_dot_0 @ V_D_dot_0 ) ) )
      & ( '3d.on/2' @ V_B_dot_0 @ V_a )
      & ( '3d.on/2' @ V_D_dot_0 @ V_c )
      & ( V_BD_dot_0
        = ( 'cons/2' @ '3d.Point' @ V_B_dot_0 @ ( 'cons/2' @ '3d.Point' @ V_D_dot_0 @ ( 'nil/0' @ '3d.Point' ) ) ) )
      & ( '3d.vec-opp-direction/2' @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) @ ( '3d.vec/2' @ V_C_dot_0 @ V_D_dot_0 ) ) ) ),
    answer_to(p_question,[])).

