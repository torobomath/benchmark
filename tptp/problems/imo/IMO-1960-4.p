%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1960, Problem 4
%% SCORE:     5
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-01-29
%%
%% <PROBLEM-TEXT>
%% Construct triangle $ABC$, given $h_a$, $h_b$ (the altitudes from $A$ and $B$)
%% and $m_a$, the median from vertex $A$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   84 (   7 equality;  46 variable)
%            Maximal formula depth :   18 (  18 average)
%            Number of connectives :   68 (   0   ~;   0   |;  12   &;  56   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :   18 (   3 sgn;   0   !;   9   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_X: '2d.Shape'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_X
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '>/2' @ V_ha @ 0 )
        & ( '>/2' @ V_hb @ 0 )
        & ( '>/2' @ V_ma @ 0 )
        & ( V_ha
          = ( '2d.point-shape-distance/2' @ V_A @ ( '2d.line/2' @ V_B @ V_C ) ) )
        & ( V_hb
          = ( '2d.point-shape-distance/2' @ V_B @ ( '2d.line/2' @ V_A @ V_C ) ) )
        & ( V_ma
          = ( '2d.distance/2' @ V_A @ ( '2d.midpoint-of/2' @ V_B @ V_C ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_X_dot_0: '2d.Shape'] :
    ? [V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point',V_C_dot_0: '2d.Point',V_M: '2d.Point',V_G: '2d.Shape',V_H: '2d.Point'] :
      ( ( ( '2d.distance/2' @ V_A_dot_0 @ V_M )
        = V_ma )
      & ( V_G
        = ( '2d.circle/2' @ ( '2d.midpoint-of/2' @ V_A_dot_0 @ V_M ) @ ( '//2' @ V_ma @ 2 ) ) )
      & ( '2d.intersect/3' @ V_G @ ( '2d.circle/2' @ V_A_dot_0 @ V_ha ) @ V_H )
      & ( '2d.intersect/3' @ V_G @ ( '2d.circle/2' @ V_M @ ( '//2' @ V_hb @ 2 ) ) @ V_T )
      & ( '2d.intersect/3' @ ( '2d.line/2' @ V_H @ V_M ) @ ( '2d.line/2' @ V_A_dot_0 @ V_T ) @ V_C_dot_0 )
      & ( ( '2d.distance/2' @ V_M @ V_B_dot_0 )
        = ( '2d.distance/2' @ V_M @ V_C_dot_0 ) ) ) ),
    answer_to(p_question,[])).
