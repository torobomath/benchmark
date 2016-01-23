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

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   55 (   4 equality;  17 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   45 (   0   ~;   0   |;   6   &;  39   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   10 (   1 sgn;   0   !;   5   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_minPQ: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_PQ: 'R'] :
            ? [V_P: '2d.Point',V_Q: '2d.Point',V_A: '2d.Shape',V_B: '2d.Shape',V_L: '2d.Shape'] :
              ( ( '>/2' @ V_c @ ( '//2' @ 1 @ 4 ) )
              & ( V_A
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) )
              & ( V_L
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '-/1' @ V_c ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) )
              & ( '2d.line-symmetry-shapes/3' @ V_A @ V_B @ V_L )
              & ( '2d.on/2' @ V_P @ V_A )
              & ( '2d.on/2' @ V_Q @ V_B )
              & ( V_PQ
                = ( '2d.distance/2' @ V_P @ V_Q ) ) ) )
        @ V_minPQ ) )).

thf(p_answer,answer,(
    ^ [V_minPQ_dot_0: 'R'] :
      ( V_minPQ_dot_0
      = ( '*/2' @ ( 'sqrt/1' @ 2 ) @ ( '-/2' @ V_c @ ( '//2' @ 1 @ 4 ) ) ) ) ),
    answer_to(p_question,[])).
