%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2013, Humanities Course, Problem 4
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2015-01-08
%%
%% <PROBLEM-TEXT>
%% Let ${\alpha}$ and ${\beta}$ be real numbers. On the $xy$ plane, the
%% circle $C$ centered at the point $(0, 3)$ and the parabola
%% $y=-\frac{x^2}{3}+{\alpha} x-{\beta}$ share the point
%% $P(\sqrt{3}, 0)$ and the tangent at $P$. Answer the following
%% questions:
%%
%% (1) Find the values of ${\alpha}$ and ${\beta}$.
%%
%% (2) Find the area of the region enclosed by the circle $C$, the
%% parabola $y=-\frac{x^2}{3}+{\alpha} x-{\beta}$, and the $y$ axis.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  160 (   4 equality;  28 variable)
%            Maximal formula depth :   26 (  16 average)
%            Number of connectives :  150 (   0   ~;   0   |;   4   &; 146   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   16 (   0 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_Ans: 'ListOf' @ 'R'] :
      ? [V_a1: 'R',V_a2: 'R',V_b1: 'R',V_b2: 'R',V_alpha: 'R',V_beta: 'R'] :
        ( ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ 3 ) @ ( '2d.distance/2' @ ( '2d.point/2' @ 0 @ 3 ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3 ) @ 0 ) ) ) @ ( '2d.line/2' @ ( '2d.point/2' @ V_a1 @ V_a2 ) @ ( '2d.point/2' @ V_b1 @ V_b2 ) ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3 ) @ 0 ) )
        & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '-/1' @ V_beta ) @ ( 'cons/2' @ V_alpha @ ( 'cons/2' @ ( '-/1' @ ( '//2' @ 1 @ 3 ) ) @ 'nil/0' ) ) ) ) ) @ ( '2d.line/2' @ ( '2d.point/2' @ V_a1 @ V_a2 ) @ ( '2d.point/2' @ V_b1 @ V_b2 ) ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3 ) @ 0 ) )
        & ( V_Ans
          = ( 'cons/2' @ V_alpha @ ( 'cons/2' @ V_beta @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_a1: 'R',V_a2: 'R',V_b1: 'R',V_b2: 'R',V_alpha: 'R',V_beta: 'R'] :
        ( ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ 3 ) @ ( '2d.distance/2' @ ( '2d.point/2' @ 0 @ 3 ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3 ) @ 0 ) ) ) @ ( '2d.line/2' @ ( '2d.point/2' @ V_a1 @ V_a2 ) @ ( '2d.point/2' @ V_b1 @ V_b2 ) ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3 ) @ 0 ) )
        & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '-/1' @ V_beta ) @ ( 'cons/2' @ V_alpha @ ( 'cons/2' @ ( '-/1' @ ( '//2' @ 1 @ 3 ) ) @ 'nil/0' ) ) ) ) ) @ ( '2d.line/2' @ ( '2d.point/2' @ V_a1 @ V_a2 ) @ ( '2d.point/2' @ V_b1 @ V_b2 ) ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3 ) @ 0 ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ 3 ) @ ( '2d.distance/2' @ ( '2d.point/2' @ 0 @ 3 ) @ ( '2d.point/2' @ ( 'sqrt/1' @ 3 ) @ 0 ) ) ) @ ( 'cons/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '-/1' @ V_beta ) @ ( 'cons/2' @ V_alpha @ ( 'cons/2' @ ( '-/1' @ ( '//2' @ 1 @ 3 ) ) @ 'nil/0' ) ) ) ) ) @ ( 'cons/2' @ '2d.y-axis/0' @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_Ans_dot_0: 'ListOf' @ 'R'] :
      ( V_Ans_dot_0
      = ( 'cons/2' @ ( 'sqrt/1' @ 3 ) @ ( 'cons/2' @ 2 @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '+/2' @ ( '*/2' @ ( '//2' @ 7 @ 3 ) @ ( 'sqrt/1' @ 3 ) ) @ ( '-/1' @ 'Pi/0' ) ) ) ),
    answer_to(p2_question,[])).
