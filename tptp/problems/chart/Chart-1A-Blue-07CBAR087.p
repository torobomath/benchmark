%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR087
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   47 (   3 equality;  25 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :   42 (   2   ~;   0   |;   6   &;  33   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :)
%            Number of variables   :    5 (   0 sgn;   5   !;   0   ?;   0   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '</2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( V_A != V_D )
        & ( V_B != V_D )
        & ( '2d.on/2' @ V_C @ ( '2d.seg/2' @ V_A @ V_E ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_D ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_E ) ) ) )
     => ( '>/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_E ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) ) ) )).
