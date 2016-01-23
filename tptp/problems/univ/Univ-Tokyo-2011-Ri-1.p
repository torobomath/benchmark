%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2011, Science Course, Problem 1
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-02-18
%%
%% <PROBLEM-TEXT>
%% On the coordinate plane, let $C$ be the circle with the center at the
%% point $P(0, 1)$ and the radius $1$. Let $a$ be the real number that
%% satisfies $0<a<1$, and $Q$ and $R$, the intersections of the straight
%% lines $y=a(x + 1)$ and $C$.
%%
%% (1) Find the area $S(a)$ of $\triangle PQR$.
%%
%% (2) When $a$ moves in the range of $0<a<1$, find $a$ that gives the
%% maximum value of $S(a)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   70 (   6 equality;  28 variable)
%            Maximal formula depth :   23 (  17 average)
%            Number of connectives :   57 (   1   ~;   0   |;  12   &;  44   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   5   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_P: '2d.Point',V_C: '2d.Shape',V_l: '2d.Shape',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( V_P
          = ( '2d.point/2' @ 0 @ 1 ) )
        & ( V_C
          = ( '2d.circle/2' @ V_P @ 1 ) )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ V_a @ 1 )
        & ( V_l
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_a @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) )
        & ( '2d.on/2' @ V_Q @ V_l )
        & ( '2d.on/2' @ V_R @ V_l )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.on/2' @ V_R @ V_C )
        & ( V_Q != V_R )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( V_S_dot_0
        = ( '//2' @ ( '*/2' @ ( 'sqrt/1' @ ( '*/2' @ 2 @ V_a ) ) @ ( '-/2' @ 1 @ V_a ) ) @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ 1 ) ) )
      & ( '</2' @ 0 @ V_a )
      & ( '</2' @ V_a @ 1 ) ) ),
    answer_to(p1_question,[])).
