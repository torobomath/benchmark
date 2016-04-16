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
%            Number of atoms       :  200 (   6 equality;  20 variable)
%            Maximal formula depth :   32 (  14 average)
%            Number of connectives :  186 (   2   ~;   0   |;   7   &; 177   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   5   ?;   5   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    1 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_T: $real] :
        ( V_T
        = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 6.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_ftm: $real] :
        ( 'maximum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_ft: $real] :
            ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_t: $real] :
              ( ( $greater @ V_t @ 0.0 )
              & ( V_A != V_B )
              & ( V_C != V_D )
              & ( '2d.intersect/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 6.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ V_A )
              & ( '2d.intersect/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 6.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ V_B )
              & ( '2d.intersect/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 6.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_t @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ V_C )
              & ( '2d.intersect/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 6.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_t @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ V_D )
              & ( V_ft
                = ( $quotient @ ( '2d.area-of/1' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) ) @ ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 6.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )
        @ V_ftm ) )).

thf(p1_answer,answer,(
    ^ [V_T_dot_0: $real] :
      ( V_T_dot_0
      = ( $quotient @ 125.0 @ 6.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ftm_dot_0: $real] :
      ( V_ftm_dot_0
      = ( $quotient @ 8.0 @ 9.0 ) ) ),
    answer_to(p2_question,[])).

