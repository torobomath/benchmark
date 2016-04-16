%% DOMAIN:    Geometry, tetrahedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1962, Problem 7
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-04
%%
%% <PROBLEM-TEXT>
%% The tetrahedron $SABC$ has the following property: there exist five spheres,
%% each tangent to the edges $SA$, $SB$, $SC$, $BC$, $CA$, $AB$, or to their extensions.
%% (a) Prove that the tetrahedron $SABC$ is regular.
%% (b) Prove conversely that for every regular tetrahedron five such spheres
%% exist.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  112 (  12 equality;  56 variable)
%            Maximal formula depth :   41 (  41 average)
%            Number of connectives :   99 (  10   ~;   0   |;  18   &;  70   @)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;   4   !;   7   ?;   2   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_S: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
      ( ( '3d.is-regular-tetrahedron/4' @ V_S @ V_A @ V_B @ V_C )
    <=> ( ( '3d.is-tetrahedron/4' @ V_S @ V_A @ V_B @ V_C )
        & ? [V_K1: '3d.Shape',V_K2: '3d.Shape',V_K3: '3d.Shape',V_K4: '3d.Shape',V_K5: '3d.Shape',V_Lines: ( 'ListOf' @ '3d.Shape' ),V_Circles: ( 'ListOf' @ '3d.Shape' )] :
            ( ( '3d.circle-type/1' @ V_K1 )
            & ( '3d.circle-type/1' @ V_K2 )
            & ( '3d.circle-type/1' @ V_K3 )
            & ( '3d.circle-type/1' @ V_K4 )
            & ( '3d.circle-type/1' @ V_K5 )
            & ( V_K1 != V_K2 )
            & ( V_K1 != V_K3 )
            & ( V_K1 != V_K4 )
            & ( V_K1 != V_K5 )
            & ( V_K2 != V_K3 )
            & ( V_K2 != V_K4 )
            & ( V_K2 != V_K5 )
            & ( V_K3 != V_K4 )
            & ( V_K3 != V_K5 )
            & ( V_K5 != V_K4 )
            & ( V_Circles
              = ( 'cons/2' @ '3d.Shape' @ V_K1 @ ( 'cons/2' @ '3d.Shape' @ V_K2 @ ( 'cons/2' @ '3d.Shape' @ V_K3 @ ( 'cons/2' @ '3d.Shape' @ V_K4 @ ( 'cons/2' @ '3d.Shape' @ V_K5 @ ( 'nil/0' @ '3d.Shape' ) ) ) ) ) ) )
            & ( V_Lines
              = ( 'cons/2' @ '3d.Shape' @ ( '3d.line/2' @ V_S @ V_A ) @ ( 'cons/2' @ '3d.Shape' @ ( '3d.line/2' @ V_S @ V_B ) @ ( 'cons/2' @ '3d.Shape' @ ( '3d.line/2' @ V_S @ V_C ) @ ( 'cons/2' @ '3d.Shape' @ ( '3d.line/2' @ V_A @ V_B ) @ ( 'cons/2' @ '3d.Shape' @ ( '3d.line/2' @ V_B @ V_C ) @ ( 'cons/2' @ '3d.Shape' @ ( '3d.line/2' @ V_C @ V_A ) @ ( 'nil/0' @ '3d.Shape' ) ) ) ) ) ) ) )
            & ( 'all/2' @ '3d.Shape'
              @ ^ [V_K: '3d.Shape'] :
                  ( 'all/2' @ '3d.Shape'
                  @ ^ [V_L: '3d.Shape'] :
                      ( '3d.tangent/2' @ V_K @ V_L )
                  @ V_Lines )
              @ V_Circles ) ) ) ) )).

