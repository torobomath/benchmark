%% DOMAIN:    Geometry, tetrahedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1972, Problem 6
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-27
%%
%% <PROBLEM-TEXT>
%% Given four distinct parallel planes, prove that there exists a regular
%% tetrahedron with a vertex on each plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   44 (   0 equality;  26 variable)
%            Maximal formula depth :   19 (  19 average)
%            Number of connectives :   43 (   0   ~;   0   |;  11   &;  31   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :)
%            Number of variables   :    8 (   0 sgn;   4   !;   4   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_PL1: '3d.Shape',V_PL2: '3d.Shape',V_PL3: '3d.Shape',V_PL4: '3d.Shape'] :
      ( ( ( '3d.plane-type/1' @ V_PL1 )
        & ( '3d.plane-type/1' @ V_PL2 )
        & ( '3d.plane-type/1' @ V_PL3 )
        & ( '3d.plane-type/1' @ V_PL4 )
        & ( '3d.parallel/2' @ V_PL1 @ V_PL2 )
        & ( '3d.parallel/2' @ V_PL2 @ V_PL3 )
        & ( '3d.parallel/2' @ V_PL3 @ V_PL4 )
        & ( 'pairwise-distinct/1' @ ( 'cons/2' @ V_PL1 @ ( 'cons/2' @ V_PL2 @ ( 'cons/2' @ V_PL3 @ ( 'cons/2' @ V_PL4 @ 'nil/0' ) ) ) ) ) )
     => ? [V_P1: '3d.Point',V_P2: '3d.Point',V_P3: '3d.Point',V_P4: '3d.Point'] :
          ( ( '3d.on/2' @ V_P1 @ V_PL1 )
          & ( '3d.on/2' @ V_P2 @ V_PL2 )
          & ( '3d.on/2' @ V_P3 @ V_PL3 )
          & ( '3d.on/2' @ V_P4 @ V_PL4 )
          & ( '3d.is-regular-tetrahedron/4' @ V_P1 @ V_P2 @ V_P3 @ V_P4 ) ) ) )).
