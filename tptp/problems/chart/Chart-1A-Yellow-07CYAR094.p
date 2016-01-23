%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAR094
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   63 (   1 equality;  39 variable)
%            Maximal formula depth :   26 (  26 average)
%            Number of connectives :   62 (   2   ~;   0   |;  11   &;  48   @)
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
    ! [V_Cir: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point'] :
      ( ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.on/2' @ V_A @ V_Cir )
        & ( '2d.on/2' @ V_B @ V_Cir )
        & ( '2d.on/2' @ V_C @ V_Cir )
        & ( '2d.on/2' @ V_D @ V_Cir )
        & ~ ( '2d.colinear/3' @ V_A @ V_B @ V_C )
        & ~ ( '2d.colinear/3' @ V_A @ V_B @ V_D )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_B ) @ ( '2d.seg/2' @ V_C @ V_D ) @ V_E )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_E @ V_F ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_E @ V_F ) @ ( '2d.line/2' @ V_A @ V_D ) @ V_F )
        & ( '2d.on/2' @ V_G @ V_Cir )
        & ( '2d.tangent/3' @ ( '2d.line/2' @ V_F @ V_G ) @ V_Cir @ V_G ) )
     => ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_F @ V_G ) )
        = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_F ) ) ) ) )).
