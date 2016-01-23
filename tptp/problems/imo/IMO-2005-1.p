%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2005, Problem 1
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-19
%%
%% <PROBLEM-TEXT>
%% Six points are chosen on the sides of an equilateral triangle
%% ABC: A1, A2 on BC, B1, B2 on CA and C1, C2 on AB, such that they are
%% the vertices of a convex hexagon A1A2B1B2C1C2 with equal side lengths.
%% Prove that the lines A1B2, B1C2 and C1A2 are concurrent.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   98 (   5 equality;  53 variable)
%            Maximal formula depth :   28 (  28 average)
%            Number of connectives :   87 (   0   ~;   0   |;  12   &;  74   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    9 (   0 sgn;   9   !;   0   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_A1: '2d.Point',V_A2: '2d.Point',V_B1: '2d.Point',V_B2: '2d.Point',V_C1: '2d.Point',V_C2: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_A1 @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_A2 @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_B1 @ ( '2d.seg/2' @ V_C @ V_A ) )
        & ( '2d.on/2' @ V_B2 @ ( '2d.seg/2' @ V_C @ V_A ) )
        & ( '2d.on/2' @ V_C1 @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_C2 @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.is-convex-shape/1' @ ( '2d.polygon/1' @ ( 'cons/2' @ V_A1 @ ( 'cons/2' @ V_A2 @ ( 'cons/2' @ V_B1 @ ( 'cons/2' @ V_B2 @ ( 'cons/2' @ V_C1 @ ( 'cons/2' @ V_C2 @ 'nil/0' ) ) ) ) ) ) ) )
        & ( ( '2d.distance/2' @ V_A1 @ V_A2 )
          = ( '2d.distance/2' @ V_A2 @ V_B1 ) )
        & ( ( '2d.distance/2' @ V_A2 @ V_B1 )
          = ( '2d.distance/2' @ V_B1 @ V_B2 ) )
        & ( ( '2d.distance/2' @ V_B1 @ V_B2 )
          = ( '2d.distance/2' @ V_B2 @ V_C1 ) )
        & ( ( '2d.distance/2' @ V_B2 @ V_C1 )
          = ( '2d.distance/2' @ V_C2 @ V_A1 ) )
        & ( ( '2d.distance/2' @ V_C2 @ V_A1 )
          = ( '2d.distance/2' @ V_A1 @ V_A2 ) ) )
     => ( '2d.lines-intersect-at-one/1' @ ( 'cons/2' @ ( '2d.line/2' @ V_A1 @ V_B2 ) @ ( 'cons/2' @ ( '2d.line/2' @ V_B1 @ V_C2 ) @ ( 'cons/2' @ ( '2d.line/2' @ V_C1 @ V_A2 ) @ 'nil/0' ) ) ) ) ) )).
