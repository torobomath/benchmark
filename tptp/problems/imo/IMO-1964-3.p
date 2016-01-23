%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1964, Problem 3
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% A circle is inscribed in triangle $ABC$ with sides $a$, $b$, $c$.
%% Tangents to the circle parallel to the sides of the triangle are constructed.
%% Each of these tangents cuts off a triangle from $\triangle ABC$.
%% In each of these triangles, a circle is inscribed.
%% Find the sum of the areas of all four inscribed circles
%% (in terms of $a$, $b$, $c$).
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  196 (   8 equality; 104 variable)
%            Maximal formula depth :   49 (  32 average)
%            Number of connectives :  181 (   3   ~;   0   |;  27   &; 151   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   21 (   3 sgn;   0   !;  13   ?;   2   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_K: '2d.Shape',V_A2: '2d.Point',V_B2: '2d.Point',V_C2: '2d.Point',V_A3: '2d.Point',V_B3: '2d.Point',V_C3: '2d.Point',V_K1: '2d.Shape',V_K2: '2d.Shape',V_K3: '2d.Shape'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( V_b
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( V_c
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_A ) ) )
        & ( '2d.circle-type/1' @ V_K )
        & ( '2d.is-inscribed-in/2' @ V_K @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_A2 @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_A3 @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_B2 @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( '2d.on/2' @ V_B3 @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( '2d.on/2' @ V_C2 @ ( '2d.seg/2' @ V_B @ V_A ) )
        & ( '2d.on/2' @ V_C3 @ ( '2d.seg/2' @ V_B @ V_A ) )
        & ( '2d.tangent/2' @ V_K @ ( '2d.seg/2' @ V_C2 @ V_B2 ) )
        & ( '2d.tangent/2' @ V_K @ ( '2d.seg/2' @ V_C3 @ V_A2 ) )
        & ( '2d.tangent/2' @ V_K @ ( '2d.seg/2' @ V_A3 @ V_B3 ) )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_C2 @ V_B2 ) @ ( '2d.line/2' @ V_C @ V_B ) )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_C3 @ V_A2 ) @ ( '2d.line/2' @ V_A @ V_C ) )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_A3 @ V_B3 ) @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( ( '2d.line/2' @ V_C2 @ V_B2 )
         != ( '2d.line/2' @ V_C @ V_B ) )
        & ( ( '2d.line/2' @ V_C3 @ V_A2 )
         != ( '2d.line/2' @ V_A @ V_C ) )
        & ( ( '2d.line/2' @ V_A3 @ V_B3 )
         != ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.circle-type/1' @ V_K1 )
        & ( '2d.circle-type/1' @ V_K2 )
        & ( '2d.circle-type/1' @ V_K3 )
        & ( '2d.is-inscribed-in/2' @ V_K1 @ ( '2d.triangle/3' @ V_A @ V_B2 @ V_C2 ) )
        & ( '2d.is-inscribed-in/2' @ V_K2 @ ( '2d.triangle/3' @ V_B @ V_A2 @ V_C3 ) )
        & ( '2d.is-inscribed-in/2' @ V_K3 @ ( '2d.triangle/3' @ V_C @ V_A3 @ V_B3 ) )
        & ( V_S
          = ( '+/2' @ ( '2d.area-of/1' @ V_K ) @ ( '+/2' @ ( '2d.area-of/1' @ V_K1 ) @ ( '+/2' @ ( '2d.area-of/1' @ V_K2 ) @ ( '2d.area-of/1' @ V_K3 ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ ( '*/2' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) ) @ ( '*/2' @ 'Pi/0' @ ( '*/2' @ ( '-/2' @ ( '+/2' @ V_c @ V_a ) @ V_b ) @ ( '*/2' @ ( '-/2' @ ( '+/2' @ V_a @ V_b ) @ V_c ) @ ( '-/2' @ ( '+/2' @ V_c @ V_b ) @ V_a ) ) ) ) ) @ ( '^/2' @ ( '+/2' @ V_a @ ( '+/2' @ V_b @ V_c ) ) @ 3 ) ) ) ),
    answer_to(p_question,[])).
