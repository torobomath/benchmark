%% DOMAIN:    Geometry, tetrahedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1964, Problem 6
%% SCORE:     9
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% In tetrahedron $ABCD$, vertex $D$ is connected with $D_0$ the centroid of
%% $\triangle ABC$.
%% Lines parallel to $DD_0$ are drawn through $A$, $B$ and $C$.
%% These lines intersect the planes $BCD$, $CAD$ and $ABD$ in points $A_1$, $B_1$ and $C_1$,
%% respectively. Prove that the volume of $ABCD$ is one third the volume of
%% $A_1B_1C_1D_0$. Is the result true if point $D_0$ is selected anywhere
%% within $\triangle ABC$?
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  154 (   2 equality;  98 variable)
%            Maximal formula depth :   31 (  31 average)
%            Number of connectives :  148 (   0   ~;   0   |;  26   &; 120   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   22 (   0 sgn;  22   !;   0   ?;   0   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    1 func;    1 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_D1: '3d.Point',V_LA: '3d.Shape',V_LB: '3d.Shape',V_LC: '3d.Shape',V_A1: '3d.Point',V_B1: '3d.Point',V_C1: '3d.Point'] :
      ( ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '3d.is-center-of-gravity-of/2' @ V_D1 @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '3d.line-type/1' @ V_LA )
        & ( '3d.line-type/1' @ V_LB )
        & ( '3d.line-type/1' @ V_LC )
        & ( '3d.on/2' @ V_A @ V_LA )
        & ( '3d.on/2' @ V_B @ V_LB )
        & ( '3d.on/2' @ V_C @ V_LC )
        & ( '3d.parallel/2' @ V_LA @ ( '3d.line/2' @ V_D @ V_D1 ) )
        & ( '3d.parallel/2' @ V_LB @ ( '3d.line/2' @ V_D @ V_D1 ) )
        & ( '3d.parallel/2' @ V_LC @ ( '3d.line/2' @ V_D @ V_D1 ) )
        & ( '3d.intersect/3' @ V_LA @ ( '3d.plane1/3' @ V_B @ V_C @ V_D ) @ V_A1 )
        & ( '3d.intersect/3' @ V_LB @ ( '3d.plane1/3' @ V_A @ V_C @ V_D ) @ V_B1 )
        & ( '3d.intersect/3' @ V_LC @ ( '3d.plane1/3' @ V_B @ V_A @ V_D ) @ V_C1 ) )
     => ( ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_A @ V_B @ V_C @ V_D ) )
        = ( $quotient @ ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_A1 @ V_B1 @ V_C1 @ V_D1 ) ) @ 3.0 ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_D1: '3d.Point',V_LA: '3d.Shape',V_LB: '3d.Shape',V_LC: '3d.Shape',V_A1: '3d.Point',V_B1: '3d.Point',V_C1: '3d.Point'] :
      ( ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '3d.point-inside-of/2' @ V_D1 @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '3d.line-type/1' @ V_LA )
        & ( '3d.line-type/1' @ V_LB )
        & ( '3d.line-type/1' @ V_LC )
        & ( '3d.on/2' @ V_A @ V_LA )
        & ( '3d.on/2' @ V_B @ V_LB )
        & ( '3d.on/2' @ V_C @ V_LC )
        & ( '3d.parallel/2' @ V_LA @ ( '3d.line/2' @ V_D @ V_D1 ) )
        & ( '3d.parallel/2' @ V_LB @ ( '3d.line/2' @ V_D @ V_D1 ) )
        & ( '3d.parallel/2' @ V_LC @ ( '3d.line/2' @ V_D @ V_D1 ) )
        & ( '3d.intersect/3' @ V_LA @ ( '3d.plane1/3' @ V_B @ V_C @ V_D ) @ V_A1 )
        & ( '3d.intersect/3' @ V_LB @ ( '3d.plane1/3' @ V_A @ V_C @ V_D ) @ V_B1 )
        & ( '3d.intersect/3' @ V_LC @ ( '3d.plane1/3' @ V_B @ V_A @ V_D ) @ V_C1 ) )
     => ( ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_A @ V_B @ V_C @ V_D ) )
        = ( $quotient @ ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_A1 @ V_B1 @ V_C1 @ V_D1 ) ) @ 3.0 ) ) ) )).

