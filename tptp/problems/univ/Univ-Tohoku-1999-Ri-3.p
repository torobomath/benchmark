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
%            Number of atoms       :   61 (   5 equality;  21 variable)
%            Maximal formula depth :   24 (  14 average)
%            Number of connectives :   49 (   0   ~;   0   |;   9   &;  40   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   5   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
        ( V_S
        = ( '2d.area-of/1'
          @ ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
              ? [V_P: '2d.Point',V_Q: '2d.Point',V_l: '2d.Shape',V_a: 'R',V_C: '2d.Shape'] :
                ( ( V_C
                  = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) )
                & ( '2d.tangent/3' @ V_l @ V_C @ ( '2d.point/2' @ V_a @ ( '^/2' @ V_a @ 2 ) ) )
                & ( '2d.line-type/1' @ V_l )
                & ( '2d.on/2' @ V_P @ V_l )
                & ( '2d.on/2' @ V_Q @ V_l )
                & ( ( '2d.x-coord/1' @ V_P )
                  = ( '+/2' @ V_a @ ( '-/1' @ 1 ) ) )
                & ( ( '2d.x-coord/1' @ V_Q )
                  = ( '+/2' @ V_a @ 1 ) )
                & ( '<=/2' @ -1 @ V_a )
                & ( '<=/2' @ V_a @ 1 )
                & ( '2d.on/2' @ V_p @ ( '2d.seg/2' @ V_P @ V_Q ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ 10 @ 3 ) ) ),
    answer_to(p1_question,[])).
