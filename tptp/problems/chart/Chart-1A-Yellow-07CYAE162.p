%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE162
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   65 (   5 equality;  35 variable)
%            Maximal formula depth :   19 (  19 average)
%            Number of connectives :   56 (   2   ~;   0   |;  11   &;  42   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   5   !;   1   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    1 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
          = ( $product @ 90.0 @ 'Degree/0' ) )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( V_D != V_B )
        & ( V_D != V_C )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_D @ V_E ) )
          = ( $product @ 90.0 @ 'Degree/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_E ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) )
        & ( '2d.on/2' @ V_E @ ( '2d.divided-region-including/2' @ ( '2d.line/2' @ V_A @ V_D ) @ V_C ) ) )
     => ? [V_K: '2d.Shape'] :
          ( ( '2d.circle-type/1' @ V_K )
          & ( '2d.on/2' @ V_A @ V_K )
          & ( '2d.on/2' @ V_D @ V_K )
          & ( '2d.on/2' @ V_C @ V_K )
          & ( '2d.on/2' @ V_E @ V_K ) ) ) )).

