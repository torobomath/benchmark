%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1978, Problem 4
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-20
%%
%% <PROBLEM-TEXT>
%% In triangle $ABC$, $AB = AC$. A circle is tangent internally to the
%% circumcircle of triangle $ABC$ and also to sides $AB$, $AC$ at $P$, $Q$, respectively.
%% Prove that the midpoint of segment $PQ$ is the center of the incircle of
%% triangle $ABC$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   46 (   1 equality;  28 variable)
%            Maximal formula depth :   21 (  21 average)
%            Number of connectives :   43 (   0   ~;   0   |;   7   &;  35   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    7 (   0 sgn;   7   !;   0   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_K1: '2d.Shape',V_K2: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( '2d.circle-type/1' @ V_K1 )
        & ( '2d.circle-type/1' @ V_K2 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_K1 )
        & ( '2d.is-inscribed-in/2' @ V_K2 @ V_K1 )
        & ( '2d.tangent/3' @ ( '2d.seg/2' @ V_A @ V_B ) @ V_K2 @ V_P )
        & ( '2d.tangent/3' @ ( '2d.seg/2' @ V_A @ V_C ) @ V_K2 @ V_Q ) )
     => ( '2d.is-incenter-of/2' @ ( '2d.midpoint-of/2' @ V_P @ V_Q ) @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) )).
