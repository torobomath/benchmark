%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2011, Humanities Course, Problem 1
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-31
%%
%% <PROBLEM-TEXT>
%% Answer the following questions.
%%
%% (1) Consider the triangle $ABC$ of which the lengths of the sides
%% $AB$, $BC$, and $CA$ are $12$, $11$, and $10$, respectively. Let $D$
%% be the intersection of the bisector of $\angle A$ and the side $BC$,
%% then find the length of the line segment $AD$.
%%
%% (2) There is a box containing nine cards with a number from $1$ to
%% $9$, where different cards have different numbers. Take two cards at
%% a time, and let $X$ be the smaller number. Return the cards into the
%% box, then take two cards at a time again, and let $Y$ be the smaller
%% number. Find the probability of $X=Y$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   47 (   6 equality;  23 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   33 (   0   ~;   0   |;   7   &;  26   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   5   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_lenAD: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_AD: '2d.Shape'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( 12
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( 11
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( 10
          = ( '2d.distance/2' @ V_C @ V_A ) )
        & ( V_AD
          = ( '2d.line/2' @ V_A @ V_D ) )
        & ( '2d.on/2' @ V_D @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.is-angle-bisector/2' @ V_AD @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( V_lenAD
          = ( '2d.distance/2' @ V_A @ V_D ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_lenAD_dot_0: 'R'] :
      ( V_lenAD_dot_0
      = ( '*/2' @ 3 @ ( 'sqrt/1' @ 10 ) ) ) ),
    answer_to(p1_question,[])).
