%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1991, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-17
%%
%% <PROBLEM-TEXT>
%% Let $ABC$ be a triangle and $P$ an interior point of $ABC$. Show that at least one
%% of the angles $¥angle PAB$, $¥angle PBC$, $¥angle PCA$ is less than or equal to
%% $30^{¥circ}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   37 (   0 equality;  16 variable)
%            Maximal formula depth :   14 (  14 average)
%            Number of connectives :   36 (   0   ~;   2   |;   1   &;  32   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) )
     => ( ( '<=/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_A @ V_B ) ) @ ( '//2' @ 'Pi/0' @ 6 ) )
        | ( '<=/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_B @ V_C ) ) @ ( '//2' @ 'Pi/0' @ 6 ) )
        | ( '<=/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_C @ V_A ) ) @ ( '//2' @ 'Pi/0' @ 6 ) ) ) ) )).
