%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2003, Problem 3
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-21
%%
%% <PROBLEM-TEXT>
%% A convex hexagon has the property that for any pair of opposite
%% sides the distance between their midpoints is sqrt(3)/2 times
%% the sum of their lengths. Show that all the hexagon's angles are equal.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  130 (   8 equality;  60 variable)
%            Maximal formula depth :   18 (  18 average)
%            Number of connectives :  113 (   0   ~;   0   |;   7   &; 105   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point'] :
      ( ( ( '2d.is-convex-shape/1' @ ( '2d.polygon/1' @ ( 'cons/2' @ V_A @ ( 'cons/2' @ V_B @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_D @ ( 'cons/2' @ V_E @ ( 'cons/2' @ V_F @ 'nil/0' ) ) ) ) ) ) ) )
        & ( ( '*/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ ( '+/2' @ ( '2d.distance/2' @ V_A @ V_B ) @ ( '2d.distance/2' @ V_D @ V_E ) ) )
          = ( '2d.distance/2' @ ( '2d.midpoint-of/2' @ V_A @ V_B ) @ ( '2d.midpoint-of/2' @ V_D @ V_E ) ) )
        & ( ( '*/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ ( '+/2' @ ( '2d.distance/2' @ V_B @ V_C ) @ ( '2d.distance/2' @ V_E @ V_F ) ) )
          = ( '2d.distance/2' @ ( '2d.midpoint-of/2' @ V_B @ V_C ) @ ( '2d.midpoint-of/2' @ V_E @ V_F ) ) )
        & ( ( '*/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ ( '+/2' @ ( '2d.distance/2' @ V_C @ V_D ) @ ( '2d.distance/2' @ V_F @ V_A ) ) )
          = ( '2d.distance/2' @ ( '2d.midpoint-of/2' @ V_C @ V_D ) @ ( '2d.midpoint-of/2' @ V_F @ V_A ) ) ) )
     => ( ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_D ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_D ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_D @ V_E ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_D @ V_E ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_E @ V_F ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_E @ V_F ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_E @ V_F @ V_A ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_E @ V_F @ V_A ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_F @ V_A @ V_B ) ) ) ) ) )).
