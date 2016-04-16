%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 1999, Science Course, Problem 3
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-10
%%
%% <PROBLEM-TEXT>
%% Let $l$ be the tangent to the curve $y = x^2$ at the point
%% $(a, a^2)$. Let $P$ and $Q$ be the points on $l$ for which $x$
%% coordinates are $a - 1$ and $a + 1$, respectively. When $a$ moves in
%% the range of $- 1\le a\le 1$, find the area of the moving range of
%% the line segment $PQ$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   66 (   5 equality;  21 variable)
%            Maximal formula depth :   24 (  14 average)
%            Number of connectives :   54 (   0   ~;   0   |;   9   &;  45   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   5   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
        ( V_S
        = ( '2d.area-of/1'
          @ ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
              ? [V_P: '2d.Point',V_Q: '2d.Point',V_l: '2d.Shape',V_a: $real,V_C: '2d.Shape'] :
                ( ( V_C
                  = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
                & ( '2d.tangent/3' @ V_l @ V_C @ ( '2d.point/2' @ V_a @ ( '^/2' @ V_a @ 2.0 ) ) )
                & ( '2d.line-type/1' @ V_l )
                & ( '2d.on/2' @ V_P @ V_l )
                & ( '2d.on/2' @ V_Q @ V_l )
                & ( ( '2d.x-coord/1' @ V_P )
                  = ( $sum @ V_a @ ( $uminus @ 1.0 ) ) )
                & ( ( '2d.x-coord/1' @ V_Q )
                  = ( $sum @ V_a @ 1.0 ) )
                & ( $lesseq @ -1.0 @ V_a )
                & ( $lesseq @ V_a @ 1.0 )
                & ( '2d.on/2' @ V_p @ ( '2d.seg/2' @ V_P @ V_Q ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ 10.0 @ 3.0 ) ) ),
    answer_to(p1_question,[])).

