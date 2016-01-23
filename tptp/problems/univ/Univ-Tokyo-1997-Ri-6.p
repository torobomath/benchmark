%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1997, Science Course, Problem 6
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a real number.
%%
%% (1) Find the range of $a$ such that there exist $2$ straight lines
%% that are in contact with both the curve $y=\frac{8}{27} x^3$ and the
%% parabola $y=(x+a)^2$, in addition to the $x$ axis.
%%
%% (2) When $a$ is in the range found in (1), represent the area $S$ of
%% the region enclosed by the $2$ tangents and the parabola $y=(x+a)^2$
%% using $a$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  136 (  14 equality;  51 variable)
%            Maximal formula depth :   24 (  16 average)
%            Number of connectives :  110 (   6   ~;   1   |;  22   &;  81   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :)
%            Number of variables   :   22 (   2 sgn;   0   !;  12   ?;   8   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_G: '2d.Shape',V_H: '2d.Shape'] :
        ( ( V_G
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: 'R'] :
                  ( '*/2' @ ( '//2' @ 8 @ 27 ) @ ( '^/2' @ V_x_dot_0 @ 3 ) ) ) ) )
        & ( V_H
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '^/2' @ ( '+/2' @ V_x @ V_a ) @ 2 ) ) ) )
        & ? [V_l1: '2d.Shape',V_l2: '2d.Shape'] :
            ( ( V_l1 != V_l2 )
            & ( V_l1 != '2d.x-axis/0' )
            & ( V_l2 != '2d.x-axis/0' )
            & ( '2d.line-type/1' @ V_l1 )
            & ( '2d.line-type/1' @ V_l2 )
            & ( '2d.tangent/2' @ V_l1 @ V_G )
            & ( '2d.tangent/2' @ V_l1 @ V_H )
            & ( '2d.tangent/2' @ V_l2 @ V_G )
            & ( '2d.tangent/2' @ V_l2 @ V_H ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_H: '2d.Shape'] :
        ( ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_l1 @ ( 'cons/2' @ V_l2 @ ( 'cons/2' @ V_H @ 'nil/0' ) ) ) ) ) )
        & ( V_H
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: 'R'] :
                  ( '^/2' @ ( '+/2' @ V_x_dot_0 @ V_a ) @ 2 ) ) ) )
        & ? [V_G: '2d.Shape',V_p1: '2d.Point',V_p2: '2d.Point',V_q1: '2d.Point',V_q2: '2d.Point'] :
            ( ( V_G
              = ( '2d.graph-of/1'
                @ ( 'fun/1'
                  @ ^ [V_x: 'R'] :
                      ( '*/2' @ ( '//2' @ 8 @ 27 ) @ ( '^/2' @ V_x @ 3 ) ) ) ) )
            & ( V_l1
              = ( '2d.line/2' @ V_p1 @ V_q1 ) )
            & ( V_l2
              = ( '2d.line/2' @ V_p2 @ V_q2 ) )
            & ( V_l1 != V_l2 )
            & ( V_l1 != '2d.x-axis/0' )
            & ( V_l2 != '2d.x-axis/0' )
            & ( '2d.tangent/2' @ V_l1 @ V_G )
            & ( '2d.tangent/2' @ V_l1 @ V_H )
            & ( '2d.tangent/2' @ V_l2 @ V_G )
            & ( '2d.tangent/2' @ V_l2 @ V_H ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( ( '</2' @ ( '-/1' @ ( '//2' @ 1 @ 2 ) ) @ V_a_dot_0 )
        & ( '</2' @ V_a_dot_0 @ 0 ) )
      | ( '</2' @ 0 @ V_a_dot_0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '*/2' @ ( '//2' @ 16 @ 3 ) @ ( '^/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_a ) @ 1 ) @ ( '//2' @ 3 @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).
