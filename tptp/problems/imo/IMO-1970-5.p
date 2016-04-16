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
%            Number of atoms       :  250 (   8 equality; 117 variable)
%            Maximal formula depth :   25 (  20 average)
%            Number of connectives :  233 (   0   ~;   0   |;  20   &; 212   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   5   !;  10   ?;   2   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    2 func;    2 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_P: '3d.Point'] :
      ( ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_B @ V_D ) @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( ( '3d.foot-of-perpendicular-line-from-to/2' @ V_D @ ( '3d.plane1/3' @ V_A @ V_B @ V_C ) )
          = V_P )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_A @ V_P ) @ ( '3d.line/2' @ V_B @ V_C ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_B @ V_P ) @ ( '3d.line/2' @ V_A @ V_C ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_C @ V_P ) @ ( '3d.line/2' @ V_A @ V_B ) ) )
     => ( $lesseq @ ( '^/2' @ ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) ) @ ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C @ V_B ) ) @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) ) ) ) @ 2.0 ) @ ( $product @ 6.0 @ ( $sum @ ( '^/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) ) @ 2.0 ) @ ( $sum @ ( '^/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_D ) ) @ 2.0 ) @ ( '^/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C @ V_D ) ) @ 2.0 ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ '3d.Point' )
    @ ^ [V_Vertices: ( 'ListOf' @ '3d.Point' )] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_P: '3d.Point'] :
        ( ( V_Vertices
          = ( 'cons/2' @ '3d.Point' @ V_A @ ( 'cons/2' @ '3d.Point' @ V_B @ ( 'cons/2' @ '3d.Point' @ V_C @ ( 'cons/2' @ '3d.Point' @ V_D @ ( 'nil/0' @ '3d.Point' ) ) ) ) ) )
        & ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_B @ V_D ) @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( ( '3d.foot-of-perpendicular-line-from-to/2' @ V_D @ ( '3d.plane1/3' @ V_A @ V_B @ V_C ) )
          = V_P )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_A @ V_P ) @ ( '3d.line/2' @ V_B @ V_C ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_B @ V_P ) @ ( '3d.line/2' @ V_A @ V_C ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_C @ V_P ) @ ( '3d.line/2' @ V_A @ V_B ) )
        & ( ( '^/2' @ ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) ) @ ( $sum @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C @ V_B ) ) @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) ) ) ) @ 2.0 )
          = ( $product @ 6.0 @ ( $sum @ ( '^/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) ) @ 2.0 ) @ ( $sum @ ( '^/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_D ) ) @ 2.0 ) @ ( '^/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_C @ V_D ) ) @ 2.0 ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_Vertices_dot_0: ( 'ListOf' @ '3d.Point' )] :
    ? [V_A_dot_0: '3d.Point',V_B_dot_0: '3d.Point',V_C_dot_0: '3d.Point',V_D_dot_0: '3d.Point',V_P_dot_0: '3d.Point'] :
      ( ( V_Vertices_dot_0
        = ( 'cons/2' @ '3d.Point' @ V_A_dot_0 @ ( 'cons/2' @ '3d.Point' @ V_B_dot_0 @ ( 'cons/2' @ '3d.Point' @ V_C_dot_0 @ ( 'cons/2' @ '3d.Point' @ V_D_dot_0 @ ( 'nil/0' @ '3d.Point' ) ) ) ) ) )
      & ( '3d.is-tetrahedron/4' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 @ V_D_dot_0 )
      & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_B_dot_0 @ V_D_dot_0 ) @ ( '3d.line/2' @ V_C_dot_0 @ V_D_dot_0 ) )
      & ( ( '3d.foot-of-perpendicular-line-from-to/2' @ V_D_dot_0 @ ( '3d.plane1/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 ) )
        = V_P_dot_0 )
      & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_A_dot_0 @ V_P_dot_0 ) @ ( '3d.line/2' @ V_B_dot_0 @ V_C_dot_0 ) )
      & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_B_dot_0 @ V_P_dot_0 ) @ ( '3d.line/2' @ V_A_dot_0 @ V_C_dot_0 ) )
      & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_C_dot_0 @ V_P_dot_0 ) @ ( '3d.line/2' @ V_A_dot_0 @ V_B_dot_0 ) )
      & ( ( '3d.distance^2/2' @ V_A_dot_0 @ V_B_dot_0 )
        = ( '3d.distance^2/2' @ V_C_dot_0 @ V_B_dot_0 ) )
      & ( ( '3d.distance^2/2' @ V_A_dot_0 @ V_C_dot_0 )
        = ( '3d.distance^2/2' @ V_C_dot_0 @ V_B_dot_0 ) ) ) ),
    answer_to(p2_question,[])).

