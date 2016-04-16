%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR107
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   34 (   1 equality;  20 variable)
%            Maximal formula depth :   13 (  13 average)
%            Number of connectives :   32 (   1   ~;   0   |;   2   &;  28   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   1 pred;    1 func;    0 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_A != V_P )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_A @ V_P ) @ ( '2d.angle/3' @ V_B @ V_A @ ( '2d.vec-translate/2' @ V_A @ ( '2d.vec/2' @ V_C @ V_A ) ) ) ) )
     => ( $less @ ( $sum @ ( '2d.distance/2' @ V_A @ V_B ) @ ( '2d.distance/2' @ V_A @ V_C ) ) @ ( $sum @ ( '2d.distance/2' @ V_P @ V_B ) @ ( '2d.distance/2' @ V_P @ V_C ) ) ) ) )).

