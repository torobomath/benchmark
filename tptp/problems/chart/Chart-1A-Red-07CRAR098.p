%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR098
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   31 (   2 equality;  18 variable)
%            Maximal formula depth :   12 (  12 average)
%            Number of connectives :   26 (   0   ~;   0   |;   2   &;  23   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_H: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
        & ( V_H
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_A @ ( '2d.line/2' @ V_B @ V_C ) ) ) )
     => ( ( '*/2' @ ( '2d.distance^2/2' @ V_A @ V_B ) @ ( '2d.distance/2' @ V_C @ V_H ) )
        = ( '*/2' @ ( '2d.distance^2/2' @ V_A @ V_C ) @ ( '2d.distance/2' @ V_B @ V_H ) ) ) ) )).
