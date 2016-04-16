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

% Syntax   : Number of formulae    :    5 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  197 (   8 equality;  86 variable)
%            Maximal formula depth :   49 (  14 average)
%            Number of connectives :  182 (   3   ~;   0   |;  27   &; 152   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   3   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;  13   ?;   2   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    4 func;    2 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_K: '2d.Shape',V_A2: '2d.Point',V_B2: '2d.Point',V_C2: '2d.Point',V_A3: '2d.Point',V_B3: '2d.Point',V_C3: '2d.Point',V_K1: '2d.Shape',V_K2: '2d.Shape',V_K3: '2d.Shape'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( 'a/0'
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( 'b/0'
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( 'c/0'
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
          = ( $sum @ ( '2d.area-of/1' @ V_K ) @ ( $sum @ ( '2d.area-of/1' @ V_K1 ) @ ( $sum @ ( '2d.area-of/1' @ V_K2 ) @ ( '2d.area-of/1' @ V_K3 ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ ( $product @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $sum @ ( '^/2' @ 'b/0' @ 2.0 ) @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) @ ( $product @ 'Pi/0' @ ( $product @ ( $difference @ ( $sum @ 'c/0' @ 'a/0' ) @ 'b/0' ) @ ( $product @ ( $difference @ ( $sum @ 'a/0' @ 'b/0' ) @ 'c/0' ) @ ( $difference @ ( $sum @ 'c/0' @ 'b/0' ) @ 'a/0' ) ) ) ) ) @ ( '^/2' @ ( $sum @ 'a/0' @ ( $sum @ 'b/0' @ 'c/0' ) ) @ 3.0 ) ) ) ),
    answer_to(p_question,[])).

