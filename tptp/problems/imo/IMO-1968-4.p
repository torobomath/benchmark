%% DOMAIN:    Geometry, tetrahedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1968, Problem 4
%% SCORE:     5
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-28
%%
%% <PROBLEM-TEXT>
%% Prove that in every tetrahedron there is a vertex such that the three edges
%% meeting there have lengths which are the sides of a triangle.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (  12 equality;  55 variable)
%            Maximal formula depth :   18 (  18 average)
%            Number of connectives :   68 (   0   ~;   3   |;   9   &;  55   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    4 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   4   !;   3   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point'] :
      ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
     => ? [V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point'] :
          ( ( '3d.is-triangle/3' @ V_P @ V_Q @ V_R )
          & ( ( ( ( '3d.distance/2' @ V_P @ V_Q )
                = ( '3d.distance/2' @ V_A @ V_B ) )
              & ( ( '3d.distance/2' @ V_Q @ V_R )
                = ( '3d.distance/2' @ V_A @ V_C ) )
              & ( ( '3d.distance/2' @ V_R @ V_P )
                = ( '3d.distance/2' @ V_A @ V_D ) ) )
            | ( ( ( '3d.distance/2' @ V_P @ V_Q )
                = ( '3d.distance/2' @ V_B @ V_A ) )
              & ( ( '3d.distance/2' @ V_Q @ V_R )
                = ( '3d.distance/2' @ V_B @ V_B ) )
              & ( ( '3d.distance/2' @ V_R @ V_P )
                = ( '3d.distance/2' @ V_B @ V_D ) ) )
            | ( ( ( '3d.distance/2' @ V_P @ V_Q )
                = ( '3d.distance/2' @ V_C @ V_A ) )
              & ( ( '3d.distance/2' @ V_Q @ V_R )
                = ( '3d.distance/2' @ V_C @ V_B ) )
              & ( ( '3d.distance/2' @ V_R @ V_P )
                = ( '3d.distance/2' @ V_C @ V_D ) ) )
            | ( ( ( '3d.distance/2' @ V_P @ V_Q )
                = ( '3d.distance/2' @ V_D @ V_A ) )
              & ( ( '3d.distance/2' @ V_Q @ V_R )
                = ( '3d.distance/2' @ V_D @ V_B ) )
              & ( ( '3d.distance/2' @ V_R @ V_P )
                = ( '3d.distance/2' @ V_D @ V_C ) ) ) ) ) ) )).

