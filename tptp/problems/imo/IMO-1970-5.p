%% DOMAIN:    Geometry, tetrahedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1970, Problem 5
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-28
%%
%% <PROBLEM-TEXT>
%% In the tetrahedron $ABCD$, angle $BDC$ is a right angle. Suppose that the
%% foot $H$ of the perpendicular from $D$ to the plane $ABC$ is the intersection of
%% the altitudes of $\triangle ABC$. Prove that\[
%% (AB+BC+CA)^2 \leq 6(AD^2 + BD^2 + CD^2).
%% \]For what tetrahedra does equality hold?
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  226 (  10 equality; 112 variable)
%            Maximal formula depth :   29 (  20 average)
%            Number of connectives :  205 (   0   ~;   0   |;  19   &; 185   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   28 (  12 sgn;   5   !;   9   ?;   2   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_P: '3d.Point'] :
      ( ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_B @ V_D ) @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( ( '3d.foot-of-perpendicular-line-from-to/2' @ V_D @ ( '3d.plane1/3' @ V_A @ V_B @ V_C ) )
          = V_P )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_A @ V_P ) @ ( '3d.line/2' @ V_B @ V_C ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_B @ V_P ) @ ( '3d.line/2' @ V_A @ V_C ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_C @ V_P ) @ ( '3d.line/2' @ V_A @ V_B ) ) )
     => ( '<=/2' @ ( '^/2' @ ( '+/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) ) @ ( '+/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C @ V_B ) ) @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) ) ) ) @ 2 ) @ ( '*/2' @ 6 @ ( '+/2' @ ( '^/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_D ) ) @ 2 ) @ ( '^/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C @ V_D ) ) @ 2 ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_Vertices: 'ListOf' @ '3d.Point'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_P: '3d.Point'] :
        ( ( V_Vertices
          = ( 'cons/2' @ V_A @ ( 'cons/2' @ V_B @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_D @ 'nil/0' ) ) ) ) )
        & ( V_A
          = ( '3d.point/3' @ V_Ax @ V_Ay @ V_Az ) )
        & ( V_B
          = ( '3d.point/3' @ V_Bx @ V_By @ V_Bz ) )
        & ( V_C
          = ( '3d.point/3' @ V_Cx @ V_Cy @ V_Cz ) )
        & ( V_D
          = ( '3d.point/3' @ V_Dx @ V_Dy @ V_Dz ) )
        & ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_B @ V_D ) @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( ( '3d.foot-of-perpendicular-line-from-to/2' @ V_D @ ( '3d.plane1/3' @ V_A @ V_B @ V_C ) )
          = V_P )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_A @ V_P ) @ ( '3d.line/2' @ V_B @ V_C ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_B @ V_P ) @ ( '3d.line/2' @ V_A @ V_C ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_C @ V_P ) @ ( '3d.line/2' @ V_A @ V_B ) )
        & ( '<=/2' @ ( '^/2' @ ( '+/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) ) @ ( '+/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C @ V_B ) ) @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) ) ) ) @ 2 ) @ ( '*/2' @ 6 @ ( '+/2' @ ( '^/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_D ) ) @ 2 ) @ ( '^/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C @ V_D ) ) @ 2 ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_Vertices_dot_0: 'ListOf' @ '3d.Point'] :
    ? [V_A_dot_0: '3d.Point',V_B_dot_0: '3d.Point',V_C_dot_0: '3d.Point',V_D_dot_0: '3d.Point'] :
      ( ( V_Vertices_dot_0
        = ( 'cons/2' @ V_A_dot_0 @ ( 'cons/2' @ V_B_dot_0 @ ( 'cons/2' @ V_C_dot_0 @ ( 'cons/2' @ V_D_dot_0 @ 'nil/0' ) ) ) ) )
      & ( '3d.is-tetrahedron/4' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 @ V_D_dot_0 )
      & ( ( '3d.distance^2/2' @ V_A_dot_0 @ V_B_dot_0 )
        = ( '3d.distance^2/2' @ V_C_dot_0 @ V_B_dot_0 ) )
      & ( ( '3d.distance^2/2' @ V_A_dot_0 @ V_C_dot_0 )
        = ( '3d.distance^2/2' @ V_C_dot_0 @ V_B_dot_0 ) ) ) ),
    answer_to(p2_question,[])).
