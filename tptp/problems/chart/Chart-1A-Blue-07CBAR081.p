%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR081
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   33 (   0 equality;  21 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   32 (   0   ~;   0   |;   4   &;  27   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_G: '2d.Point',V_O: '2d.Point',V_H: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-center-of-gravity-of/2' @ V_G @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-circumcenter-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-orthocenter-of/2' @ V_H @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) )
     => ( ( '2d.colinear/3' @ V_G @ V_O @ V_H )
        & ( '2d.divide-internally/4' @ V_G @ ( '2d.seg/2' @ V_O @ V_H ) @ 1 @ 2 ) ) ) )).
