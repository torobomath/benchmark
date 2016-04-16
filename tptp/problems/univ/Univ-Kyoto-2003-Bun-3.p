%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2003, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-08
%%
%% <PROBLEM-TEXT>
%% Assume that the tetrahedron $OABC$ satisfies the following two
%% conditions: (i) $\vec{OA}\bot\vec{BC}$, $\vec{OB}\bot\vec{AC}$,
%% $\vec{OC}\bot\vec{AB}$(ii) $4$ and (ii) the areas of all the four
%% surfaces are the same. Then, prove that the tetrahedron is a regular
%% tetrahedron.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   64 (   3 equality;  38 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :   57 (   0   ~;   0   |;   6   &;  50   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
      ( ( ( '3d.is-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_A ) @ ( '3d.line/2' @ V_B @ V_C ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_B ) @ ( '3d.line/2' @ V_A @ V_C ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_C ) @ ( '3d.line/2' @ V_A @ V_B ) )
        & ( ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_O @ V_A @ V_B ) )
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_O @ V_B @ V_C ) ) )
        & ( ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_O @ V_B @ V_C ) )
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_O @ V_C @ V_A ) ) )
        & ( ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_O @ V_C @ V_A ) )
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) ) )
     => ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C ) ) )).

