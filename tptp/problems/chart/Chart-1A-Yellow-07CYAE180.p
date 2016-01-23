%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE180
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   62 (   1 equality;  34 variable)
%            Maximal formula depth :   22 (  22 average)
%            Number of connectives :   59 (   0   ~;   0   |;   6   &;  52   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :    9 (   0 sgn;   9   !;   0   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_Cir: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_Cir )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_B ) @ ( '2d.line/2' @ V_C @ V_D ) @ V_E )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_A @ V_D ) @ V_F )
        & ( '2d.tangent/3' @ ( '2d.line/2' @ V_E @ V_P ) @ V_Cir @ V_P )
        & ( '2d.tangent/3' @ ( '2d.line/2' @ V_F @ V_Q ) @ V_Cir @ V_Q ) )
     => ( ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_P ) ) @ 2 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_F @ V_Q ) ) @ 2 ) )
        = ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_F ) ) @ 2 ) ) ) )).
