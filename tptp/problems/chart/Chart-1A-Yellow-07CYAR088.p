%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAR088
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   70 (   5 equality;  42 variable)
%            Maximal formula depth :   27 (  27 average)
%            Number of connectives :   63 (   4   ~;   0   |;  14   &;  44   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_Cir1: '2d.Shape',V_Cir2: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_T: '2d.Point'] :
      ( ( ( '2d.circle-type/1' @ V_Cir1 )
        & ( '2d.circle-type/1' @ V_Cir2 )
        & ( '2d.is-inscribed-in/2' @ V_Cir1 @ V_Cir2 )
        & ( '2d.tangent/3' @ V_Cir1 @ ( '2d.line/2' @ V_T @ V_A ) @ V_A )
        & ( '2d.tangent/3' @ V_Cir2 @ ( '2d.line/2' @ V_T @ V_A ) @ V_A )
        & ( V_A != V_B )
        & ( V_A != V_C )
        & ( V_A != V_D )
        & ( V_A != V_E )
        & ( '2d.on/2' @ V_D @ V_Cir1 )
        & ( '2d.on/2' @ V_E @ V_Cir1 )
        & ( '2d.on/2' @ V_B @ V_Cir2 )
        & ( '2d.on/2' @ V_C @ V_Cir2 )
        & ( '2d.colinear/3' @ V_A @ V_D @ V_B )
        & ( '2d.colinear/3' @ V_A @ V_E @ V_C ) )
     => ( ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        = ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_E ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) ) ) ) )).
