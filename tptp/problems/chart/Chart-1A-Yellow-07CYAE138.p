%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE138
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   54 (   2 equality;  19 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   49 (   0   ~;   0   |;   1   &;  47   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_G: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_G
          = ( '2d.centroid-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) )
     => ( ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_B ) ) @ 2 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) @ 2 ) ) )
        = ( '*/2' @ 3 @ ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_G ) ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_G ) ) @ 2 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_G ) ) @ 2 ) ) ) ) ) ) )).
