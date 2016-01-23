%% DOMAIN:    Algebraic Curves
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2009, Science Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-06
%%
%% <PROBLEM-TEXT>
%% Assume that $a > 0$ and $b > 0$. Assume that the circle with the
%% center at the point $A(0, a)$ and the radius $r$ is in contact with
%% the hyperbola $x^2 -\frac{y^2}{b^2} = 1$ at the points $B(s, t)$ and
%% $C(-s, t)$, where $s > 0$. Here, the fact the hyperbola and the
%% circle are in contact with each other at the point $P$ means that $P$
%% is a common point of the hyperbola and the circle, and the tangents
%% to the hyperbola at the point $P$ matches the tangent to the circle
%% at the point $P$.
%%
%% (1) Represent $r$, $s$, and $t$ using $a$ and $b$.
%%
%% (2) Find the range of the value of $b$ such that there exist $a$ and
%% $r$ such that $\triangle ABC$ is an equilateral triangle.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  362 (   2 equality; 115 variable)
%            Maximal formula depth :   31 (  22 average)
%            Number of connectives :  356 (   0   ~;   0   |;  30   &; 326   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   35 (   0 sgn;   0   !;  11   ?;  20   ^)
%                                         (  31   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_rst: 'ListOf' @ 'R'] :
      ? [V_r: 'R',V_s: 'R',V_t: 'R'] :
        ( ( '>/2' @ V_r @ 0 )
        & ( '>/2' @ V_s @ 0 )
        & ( '>/2' @ V_a @ 0 )
        & ( '>/2' @ V_b @ 0 )
        & ? [V_l: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_l )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_s @ V_t ) @ ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ V_a ) @ V_r ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_s @ V_t )
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_2: 'R',V_y_dot_2: 'R'] :
                    ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_2 @ 2 ) @ ( '//2' @ ( '-/1' @ ( '^/2' @ V_y_dot_2 @ 2 ) ) @ ( '^/2' @ V_b @ 2 ) ) ) @ -1 ) ) )
            & ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ V_a ) @ V_r ) @ V_l @ ( '2d.point/2' @ V_s @ V_t ) )
            & ( '2d.tangent/3'
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                    ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 2 ) @ ( '//2' @ ( '-/1' @ ( '^/2' @ V_y_dot_1 @ 2 ) ) @ ( '^/2' @ V_b @ 2 ) ) ) @ -1 ) )
              @ V_l
              @ ( '2d.point/2' @ V_s @ V_t ) ) )
        & ? [V_m: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_m )
            & ( '2d.on/2' @ ( '2d.point/2' @ ( '-/1' @ V_s ) @ V_t ) @ ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ V_a ) @ V_r ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ ( '-/1' @ V_s ) @ V_t )
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                    ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '//2' @ ( '-/1' @ ( '^/2' @ V_y_dot_0 @ 2 ) ) @ ( '^/2' @ V_b @ 2 ) ) ) @ -1 ) ) )
            & ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ V_a ) @ V_r ) @ V_m @ ( '2d.point/2' @ ( '-/1' @ V_s ) @ V_t ) )
            & ( '2d.tangent/3'
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x: 'R',V_y: 'R'] :
                    ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '//2' @ ( '-/1' @ ( '^/2' @ V_y @ 2 ) ) @ ( '^/2' @ V_b @ 2 ) ) ) @ -1 ) )
              @ V_m
              @ ( '2d.point/2' @ ( '-/1' @ V_s ) @ V_t ) ) )
        & ( V_rst
          = ( 'cons/2' @ V_r @ ( 'cons/2' @ V_s @ ( 'cons/2' @ V_t @ 'nil/0' ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_b: 'R'] :
      ? [V_r: 'R',V_s: 'R',V_t: 'R',V_a: 'R'] :
        ( ( '>/2' @ V_s @ 0 )
        & ( '>/2' @ V_a @ 0 )
        & ( '>/2' @ V_b @ 0 )
        & ? [V_l: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_l )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_s @ V_t ) @ ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ V_a ) @ V_r ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_s @ V_t )
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_2: 'R',V_y_dot_2: 'R'] :
                    ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_2 @ 2 ) @ ( '//2' @ ( '-/1' @ ( '^/2' @ V_y_dot_2 @ 2 ) ) @ ( '^/2' @ V_b @ 2 ) ) ) @ -1 ) ) )
            & ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ V_a ) @ V_r ) @ V_l @ ( '2d.point/2' @ V_s @ V_t ) )
            & ( '2d.tangent/3'
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                    ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 2 ) @ ( '//2' @ ( '-/1' @ ( '^/2' @ V_y_dot_1 @ 2 ) ) @ ( '^/2' @ V_b @ 2 ) ) ) @ -1 ) )
              @ V_l
              @ ( '2d.point/2' @ V_s @ V_t ) ) )
        & ? [V_m: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_m )
            & ( '2d.on/2' @ ( '2d.point/2' @ ( '-/1' @ V_s ) @ V_t ) @ ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ V_a ) @ V_r ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ ( '-/1' @ V_s ) @ V_t )
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                    ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '//2' @ ( '-/1' @ ( '^/2' @ V_y_dot_0 @ 2 ) ) @ ( '^/2' @ V_b @ 2 ) ) ) @ -1 ) ) )
            & ( '2d.tangent/3' @ ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ V_a ) @ V_r ) @ V_m @ ( '2d.point/2' @ ( '-/1' @ V_s ) @ V_t ) )
            & ( '2d.tangent/3'
              @ ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x: 'R',V_y: 'R'] :
                    ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '//2' @ ( '-/1' @ ( '^/2' @ V_y @ 2 ) ) @ ( '^/2' @ V_b @ 2 ) ) ) @ -1 ) )
              @ V_m
              @ ( '2d.point/2' @ ( '-/1' @ V_s ) @ V_t ) ) )
        & ( '2d.is-equilateral-triangle/1' @ ( '2d.triangle/3' @ ( '2d.point/2' @ 0 @ V_a ) @ ( '2d.point/2' @ V_s @ V_t ) @ ( '2d.point/2' @ ( '-/1' @ V_s ) @ V_t ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_rst_dot_0: 'ListOf' @ 'R'] :
      ( ( '>/2' @ V_a @ 0 )
      & ( '>/2' @ V_b @ 0 )
      & ( V_rst_dot_0
        = ( 'cons/2' @ ( 'sqrt/1' @ ( '//2' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ 1 ) ) @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ 1 ) ) ) @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_b @ 4 ) @ ( '+/2' @ ( '*/2' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) @ 1 ) ) ) @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ 1 ) ) @ ( 'cons/2' @ ( '//2' @ ( '*/2' @ V_a @ ( '^/2' @ V_b @ 2 ) ) @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ 1 ) ) @ 'nil/0' ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_b_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_b_dot_0 )
      & ( '</2' @ V_b_dot_0 @ ( '//2' @ 1 @ ( 'sqrt/1' @ 3 ) ) ) ) ),
    answer_to(p2_question,[])).
