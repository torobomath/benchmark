%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP159
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   33 (   2 equality;  17 variable)
%            Maximal formula depth :   13 (  13 average)
%            Number of connectives :   28 (   0   ~;   0   |;   1   &;  26   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
          = ( 'cos/1' @ ( '*/2' @ 2 @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) ) ) ) )
     => ( ( '-/2' @ ( '2d.distance^2/2' @ V_A @ V_C ) @ ( '2d.distance^2/2' @ V_A @ V_B ) )
        = ( '*/2' @ ( '2d.distance/2' @ V_A @ V_B ) @ ( '2d.distance/2' @ V_B @ V_C ) ) ) ) )).
