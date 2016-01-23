%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1961, Problem 4
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-16
%%
%% <PROBLEM-TEXT>
%% Consider triangle $P_1P_2P_3$ and a point $P$ within the triangle.
%% Lines $P_1 P$, $P_2 P$, $P_3 P$ intersect the opposite sides in points
%% $Q_1$, $Q_2$, $Q_3$ respectively. Prove that, of the numbers\[
%% \frac{P_1 P}{P Q_1}, \frac{P_2 P}{P Q_2}, \frac{P_3 P}{P Q_3}
%% \]at least one is $\leq 2$ and at least one is $\geq 2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  100 (   0 equality;  46 variable)
%            Maximal formula depth :   19 (  19 average)
%            Number of connectives :   99 (   0   ~;   4   |;   5   &;  89   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    7 (   0 sgn;   7   !;   0   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_P1: '2d.Point',V_P2: '2d.Point',V_P3: '2d.Point',V_P: '2d.Point',V_Q1: '2d.Point',V_Q2: '2d.Point',V_Q3: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_P1 @ V_P2 @ V_P3 )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_P1 @ V_P2 @ V_P3 ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_P @ V_P1 ) @ ( '2d.line/2' @ V_P2 @ V_P3 ) @ V_Q1 )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_P @ V_P2 ) @ ( '2d.line/2' @ V_P1 @ V_P3 ) @ V_Q2 )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_P @ V_P3 ) @ ( '2d.line/2' @ V_P1 @ V_P2 ) @ V_Q3 ) )
     => ( ( ( '<=/2' @ ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_P1 ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_Q1 ) ) ) @ 2 )
          | ( '<=/2' @ ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_P2 ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_Q2 ) ) ) @ 2 )
          | ( '<=/2' @ ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_P3 ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_Q3 ) ) ) @ 2 ) )
        & ( ( '>=/2' @ ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_P1 ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_Q1 ) ) ) @ 2 )
          | ( '>=/2' @ ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_P2 ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_Q2 ) ) ) @ 2 )
          | ( '>=/2' @ ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_P3 ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_Q3 ) ) ) @ 2 ) ) ) ) )).
