%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1991, Problem 1
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-17
%%
%% <PROBLEM-TEXT>
%% Given a triangle $ABC$, let $I$ be the center of its inscribed circle. The
%% internal bisectors of the angles $A$, $B$, $C$ meet the opposite sides in
%% $A^{¥prime}$, $B^{¥prime}$, $C^{¥prime}$ respectively. Prove that
%% ¥[
%% ¥frac{1}{4} < ¥frac{AI ¥cdot BI ¥cdot CI}{AA^{¥prime} ¥cdot BB^{¥prime} ¥cdot
%% CC^{¥prime}} ¥le ¥frac{8}{27}.
%% ¥]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  103 (   0 equality;  55 variable)
%            Maximal formula depth :   20 (  20 average)
%            Number of connectives :  102 (   0   ~;   0   |;   8   &;  93   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :    7 (   0 sgn;   7   !;   0   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_I: '2d.Point',V_A0: '2d.Point',V_B0: '2d.Point',V_C0: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-incenter-of/2' @ V_I @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_A0 @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_B0 @ ( '2d.line/2' @ V_C @ V_A ) )
        & ( '2d.on/2' @ V_C0 @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_A @ V_A0 ) @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_B @ V_B0 ) @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_C @ V_C0 ) @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) )
     => ( ( '</2' @ ( '//2' @ 1 @ 4 ) @ ( '//2' @ ( '*/2' @ ( '2d.distance/2' @ V_A @ V_I ) @ ( '*/2' @ ( '2d.distance/2' @ V_B @ V_I ) @ ( '2d.distance/2' @ V_C @ V_I ) ) ) @ ( '*/2' @ ( '2d.distance/2' @ V_A @ V_A0 ) @ ( '*/2' @ ( '2d.distance/2' @ V_B @ V_B0 ) @ ( '2d.distance/2' @ V_C @ V_C0 ) ) ) ) )
        & ( '<=/2' @ ( '//2' @ ( '*/2' @ ( '2d.distance/2' @ V_A @ V_I ) @ ( '*/2' @ ( '2d.distance/2' @ V_B @ V_I ) @ ( '2d.distance/2' @ V_C @ V_I ) ) ) @ ( '*/2' @ ( '2d.distance/2' @ V_A @ V_A0 ) @ ( '*/2' @ ( '2d.distance/2' @ V_B @ V_B0 ) @ ( '2d.distance/2' @ V_C @ V_C0 ) ) ) ) @ ( '//2' @ 8 @ 27 ) ) ) ) )).
