%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE130
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   44 (   1 equality;  28 variable)
%            Maximal formula depth :   21 (  21 average)
%            Number of connectives :   41 (   0   ~;   0   |;   7   &;  33   @)
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
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_M: '2d.Point',V_L1: '2d.Shape',V_L2: '2d.Shape',V_D: '2d.Point',V_E: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.midpoint-of/2' @ V_B @ V_C )
          = V_M )
        & ( '2d.line-type/1' @ V_L1 )
        & ( '2d.line-type/1' @ V_L2 )
        & ( '2d.is-angle-bisector/2' @ V_L1 @ ( '2d.angle/3' @ V_A @ V_M @ V_B ) )
        & ( '2d.is-angle-bisector/2' @ V_L2 @ ( '2d.angle/3' @ V_A @ V_M @ V_C ) )
        & ( '2d.intersect/3' @ V_L1 @ ( '2d.seg/2' @ V_A @ V_B ) @ V_D )
        & ( '2d.intersect/3' @ V_L2 @ ( '2d.seg/2' @ V_A @ V_C ) @ V_E ) )
     => ( '2d.parallel/2' @ ( '2d.line/2' @ V_D @ V_E ) @ ( '2d.line/2' @ V_B @ V_C ) ) ) )).
