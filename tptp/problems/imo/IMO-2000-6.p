%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2000, Problem 6
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-11-13
%%
%% <PROBLEM-TEXT>
%% A1A2A3 is an acute-angled triangle. The foot of the altitude
%% from Ai is Ki and the incircle touches the side opposite Ai at Li. The line
%% K1K2 is reflected in the line L1L2. Similarly, the line K2K3 is reflected in
%% L2L3 and K3K1 is reflected in L3L1. Show that the three new lines form a
%% triangle with vertices on the incircle.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  133 (   7 equality;  71 variable)
%            Maximal formula depth :   42 (  42 average)
%            Number of connectives :  118 (   0   ~;   0   |;  20   &;  97   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   17 (   0 sgn;  17   !;   0   ?;   0   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A1: '2d.Point',V_A2: '2d.Point',V_A3: '2d.Point',V_K1: '2d.Point',V_K2: '2d.Point',V_K3: '2d.Point',V_L1: '2d.Point',V_L2: '2d.Point',V_L3: '2d.Point',V_P: '2d.Point',V_l1: '2d.Shape',V_l2: '2d.Shape',V_l3: '2d.Shape',V_B1: '2d.Point',V_B2: '2d.Point',V_B3: '2d.Point',V_C: '2d.Shape'] :
      ( ( ( '2d.is-acute-triangle/1' @ ( '2d.triangle/3' @ V_A1 @ V_A2 @ V_A3 ) )
        & ( V_K1
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_A1 @ ( '2d.line/2' @ V_A2 @ V_A3 ) ) )
        & ( V_K2
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_A2 @ ( '2d.line/2' @ V_A3 @ V_A1 ) ) )
        & ( V_K3
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_A3 @ ( '2d.line/2' @ V_A1 @ V_A2 ) ) )
        & ( '2d.is-incenter-of/2' @ V_P @ ( '2d.triangle/3' @ V_A1 @ V_A2 @ V_A3 ) )
        & ( V_L1
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_P @ ( '2d.line/2' @ V_A2 @ V_A3 ) ) )
        & ( V_L2
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_P @ ( '2d.line/2' @ V_A3 @ V_A1 ) ) )
        & ( V_L3
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_P @ ( '2d.line/2' @ V_A1 @ V_A2 ) ) )
        & ( V_C
          = ( '2d.circle/2' @ V_P @ ( '2d.distance/2' @ V_P @ V_L1 ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.line-type/1' @ V_l3 )
        & ( '2d.line-symmetry-shapes/3' @ ( '2d.line/2' @ V_K2 @ V_K3 ) @ V_l1 @ ( '2d.line/2' @ V_L2 @ V_L3 ) )
        & ( '2d.line-symmetry-shapes/3' @ ( '2d.line/2' @ V_K3 @ V_K1 ) @ V_l2 @ ( '2d.line/2' @ V_L3 @ V_L1 ) )
        & ( '2d.line-symmetry-shapes/3' @ ( '2d.line/2' @ V_K1 @ V_K2 ) @ V_l3 @ ( '2d.line/2' @ V_L1 @ V_L2 ) )
        & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ '2d.Shape' @ V_l2 @ ( 'cons/2' @ '2d.Shape' @ V_l3 @ ( 'nil/0' @ '2d.Shape' ) ) ) @ V_B1 )
        & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ '2d.Shape' @ V_l3 @ ( 'cons/2' @ '2d.Shape' @ V_l1 @ ( 'nil/0' @ '2d.Shape' ) ) ) @ V_B2 )
        & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ '2d.Shape' @ V_l1 @ ( 'cons/2' @ '2d.Shape' @ V_l2 @ ( 'nil/0' @ '2d.Shape' ) ) ) @ V_B3 ) )
     => ( ( '2d.is-triangle/3' @ V_B1 @ V_B2 @ V_B3 )
        & ( '2d.on/2' @ V_B1 @ V_C )
        & ( '2d.on/2' @ V_B2 @ V_C )
        & ( '2d.on/2' @ V_B3 @ V_C ) ) ) )).

