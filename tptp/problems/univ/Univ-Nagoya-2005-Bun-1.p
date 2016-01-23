%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2005, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-24
%%
%% <PROBLEM-TEXT>
%% Let $A$ and $B$ be the intersections of the parabola $R$:
%% $y = - x^2 + 6$ and the straight line $l$: $y = x$. Assume that the
%% straight line $y = x + t$ ( $t > 0$) intersects with the parabola $R$
%% at different two points: $C(t)$ and $D(t)$.
%%
%% (1) Find the area $T$ of the region enclosed by the parabola $R$ and
%% the straight line $l$.
%%
%% (2) Let $S(t)$ be the area of the trapezoid whose vertices are the
%% points $A$, $B$, $C(t)$, and $D(t)$, and define
%% $f(t)=\frac{S(t)}{T}$. Find the maximum value of $f(t)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  149 (   6 equality;  20 variable)
%            Maximal formula depth :   31 (  14 average)
%            Number of connectives :  135 (   2   ~;   0   |;   7   &; 126   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   5   ?;   5   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_T: 'R'] :
        ( V_T
        = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 6 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ -1 @ 'nil/0' ) ) ) ) ) @ ( 'cons/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ 'nil/0' ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ftm: 'R'] :
        ( 'maximum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_ft: 'R'] :
            ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_t: 'R'] :
              ( ( '>/2' @ V_t @ 0 )
              & ( V_A != V_B )
              & ( V_C != V_D )
              & ( '2d.intersect/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 6 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ -1 @ 'nil/0' ) ) ) ) ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ V_A )
              & ( '2d.intersect/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 6 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ -1 @ 'nil/0' ) ) ) ) ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ V_B )
              & ( '2d.intersect/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 6 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ -1 @ 'nil/0' ) ) ) ) ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_t @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ V_C )
              & ( '2d.intersect/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 6 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ -1 @ 'nil/0' ) ) ) ) ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_t @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ V_D )
              & ( V_ft
                = ( '//2' @ ( '2d.area-of/1' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) ) @ ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 6 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ -1 @ 'nil/0' ) ) ) ) ) @ ( 'cons/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ 'nil/0' ) ) ) ) ) ) ) )
        @ V_ftm ) )).

thf(p1_answer,answer,(
    ^ [V_T_dot_0: 'R'] :
      ( V_T_dot_0
      = ( '//2' @ 125 @ 6 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ftm_dot_0: 'R'] :
      ( V_ftm_dot_0
      = ( '//2' @ 8 @ 9 ) ) ),
    answer_to(p2_question,[])).
