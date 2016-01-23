%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E149
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   54 (   8 equality;  18 variable)
%            Maximal formula depth :   14 (   9 average)
%            Number of connectives :   34 (   0   ~;   0   |;   6   &;  28   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'R'] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_a: 'R'] :
        ( ( V_answer = V_a )
        & ( V_l1
          = ( '2d.line2d/3' @ ( '-/2' @ V_a @ 1 ) @ -4 @ -2 ) )
        & ( V_l2
          = ( '2d.line2d/3' @ 1 @ ( '-/2' @ V_a @ 5 ) @ -3 ) )
        & ( '2d.perpendicular/2' @ V_l1 @ V_l2 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'R'] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_a: 'R'] :
        ( ( V_answer = V_a )
        & ( V_l1
          = ( '2d.line2d/3' @ ( '-/2' @ V_a @ 1 ) @ -4 @ -2 ) )
        & ( V_l2
          = ( '2d.line2d/3' @ 1 @ ( '-/2' @ V_a @ 5 ) @ -3 ) )
        & ( '2d.parallel/2' @ V_l1 @ V_l2 ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'R'] :
      ( V_answer_dot_0
      = ( '//2' @ 19 @ 3 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'R'] : ( V_answer_dot_0 = 3 ) ),
    answer_to(p2_question,[])).
