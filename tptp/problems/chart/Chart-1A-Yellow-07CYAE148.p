%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE148
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  106 (   5 equality;  48 variable)
%            Maximal formula depth :   23 (  23 average)
%            Number of connectives :  101 (   6   ~;   0   |;  10   &;  84   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_G: '2d.Point',V_P: '2d.Point',V_L1: '2d.Shape',V_L2: '2d.Shape',V_L3: '2d.Shape'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.centroid-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
          = V_G )
        & ~ ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_A @ V_B ) )
        & ~ ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_C @ V_B ) )
        & ~ ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_A @ V_C ) )
        & ( V_L1
          = ( '2d.line/2' @ V_A @ ( '2d.midpoint-of/2' @ V_B @ V_C ) ) )
        & ( V_L2
          = ( '2d.line/2' @ V_B @ ( '2d.midpoint-of/2' @ V_C @ V_A ) ) )
        & ( V_L3
          = ( '2d.line/2' @ V_C @ ( '2d.midpoint-of/2' @ V_A @ V_B ) ) )
        & ~ ( '2d.on/2' @ V_P @ V_L1 )
        & ~ ( '2d.on/2' @ V_P @ V_L2 )
        & ~ ( '2d.on/2' @ V_P @ V_L3 ) )
     => ( ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_P ) ) @ 2 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_P ) ) @ 2 ) ) )
        = ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_G ) ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_G ) ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_G ) ) @ 2 ) @ ( '*/2' @ 3 @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_G ) ) @ 2 ) ) ) ) ) ) ) )).
