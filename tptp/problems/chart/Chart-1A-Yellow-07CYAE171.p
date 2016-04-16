%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE171
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   51 (   3 equality;  34 variable)
%            Maximal formula depth :   24 (  24 average)
%            Number of connectives :   47 (   3   ~;   0   |;   9   &;  34   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_K: '2d.Shape',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_P: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-orthocenter-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_D != V_A )
        & ( V_E != V_B )
        & ( V_F != V_C )
        & ( '2d.circle-type/1' @ V_K )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_K )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_P ) @ V_K @ V_D )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_P ) @ V_K @ V_E )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_C @ V_P ) @ V_K @ V_F ) )
     => ( '2d.is-incenter-of/2' @ V_P @ ( '2d.triangle/3' @ V_D @ V_E @ V_F ) ) ) )).

