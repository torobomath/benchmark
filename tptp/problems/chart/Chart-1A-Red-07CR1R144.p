%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R144
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   36 (   0 equality;  25 variable)
%            Maximal formula depth :   14 (  14 average)
%            Number of connectives :   35 (   0   ~;   0   |;   3   &;  31   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   3   !;   1   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
      ( ( '3d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
     => ? [V_D: '3d.Point'] :
          ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
          & ( '3d.congruent/2' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) @ ( '3d.triangle/3' @ V_A @ V_B @ V_D ) )
          & ( '3d.congruent/2' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) @ ( '3d.triangle/3' @ V_B @ V_C @ V_D ) )
          & ( '3d.congruent/2' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) @ ( '3d.triangle/3' @ V_C @ V_A @ V_D ) ) ) ) )).

