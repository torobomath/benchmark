%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1999, Humanities Course, Problem 3
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2015-02-07
%%
%% <PROBLEM-TEXT>
%% Let $c$ be a real number that satisfies $c>\frac{1}{4}$. Let $A$ be
%% the parabola $y=x^2$ on the $xy$ plane, and $B$ the parabola
%% symmetric to $A$ about the straight line $y=x-c$. When the point $P$
%% moves on the parabola $A$, and the point $Q$ moves on the parabola
%% $B$, represent the minimum length of the line segment $PQ$ using $c$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   69 (   4 equality;  14 variable)
%            Maximal formula depth :   22 (  11 average)
%            Number of connectives :   59 (   0   ~;   0   |;   7   &;  52   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   1   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   5   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    4 func;    4 numbers)

include('axioms.ax').

thf('c/0_type',type,(
    'c/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_minPQ: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_PQ: $real] :
            ? [V_P: '2d.Point',V_Q: '2d.Point',V_A: '2d.Shape',V_B: '2d.Shape',V_L: '2d.Shape'] :
              ( ( $greater @ 'c/0' @ ( $quotient @ 1.0 @ 4.0 ) )
              & ( V_A
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
              & ( V_L
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $uminus @ 'c/0' ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
              & ( '2d.line-symmetry-shapes/3' @ V_A @ V_B @ V_L )
              & ( '2d.on/2' @ V_P @ V_A )
              & ( '2d.on/2' @ V_Q @ V_B )
              & ( V_PQ
                = ( '2d.distance/2' @ V_P @ V_Q ) ) ) )
        @ V_minPQ ) )).

thf(p_answer,answer,(
    ^ [V_minPQ_dot_0: $real] :
      ( ( $less @ ( $quotient @ 1.0 @ 4.0 ) @ 'c/0' )
      & ( V_minPQ_dot_0
        = ( $product @ ( 'sqrt/1' @ 2.0 ) @ ( $difference @ 'c/0' @ ( $quotient @ 1.0 @ 4.0 ) ) ) ) ) ),
    answer_to(p_question,[])).

