%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E146
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  142 (  14 equality;  53 variable)
%            Maximal formula depth :   24 (  17 average)
%            Number of connectives :  114 (   0   ~;   0   |;  15   &;  99   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   27 (   0 sgn;   0   !;  19   ?;   4   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_x1: 'R',V_x2: 'R',V_x3: 'R',V_y1: 'R',V_y2: 'R',V_y3: 'R'] :
        ( ( V_A
          = ( '2d.point/2' @ 4 @ 7 ) )
        & ( V_B
          = ( '2d.point/2' @ 1 @ 2 ) )
        & ( V_C
          = ( '2d.point/2' @ 4 @ 3 ) )
        & ( V_answer
          = ( 'cons/2' @ V_x1 @ ( 'cons/2' @ V_y1 @ ( 'cons/2' @ V_x2 @ ( 'cons/2' @ V_y2 @ ( 'cons/2' @ V_x3 @ ( 'cons/2' @ V_y3 @ 'nil/0' ) ) ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x1 @ V_y1 ) @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x2 @ V_y2 ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x3 @ V_y3 ) @ ( '2d.line/2' @ V_C @ V_A ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_G: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 4 @ 7 ) )
        & ( V_B
          = ( '2d.point/2' @ 1 @ 2 ) )
        & ( V_C
          = ( '2d.point/2' @ 4 @ 3 ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.is-center-of-gravity-of/2' @ V_G @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ V_A @ V_G ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
    ? [V_x10: 'R',V_x20: 'R',V_x30: 'R',V_y10: 'R',V_y20: 'R',V_y30: 'R'] :
      ( ( V_y10
        = ( '+/2' @ ( '*/2' @ ( '//2' @ 5 @ 3 ) @ V_x10 ) @ ( '//2' @ 1 @ 3 ) ) )
      & ( V_y20
        = ( '+/2' @ ( '*/2' @ ( '//2' @ 1 @ 3 ) @ V_x20 ) @ ( '//2' @ 5 @ 3 ) ) )
      & ( V_x30 = 4 )
      & ( V_answer_dot_0
        = ( 'cons/2' @ V_x10 @ ( 'cons/2' @ V_y10 @ ( 'cons/2' @ V_x20 @ ( 'cons/2' @ V_y20 @ ( 'cons/2' @ V_x30 @ ( 'cons/2' @ V_y30 @ 'nil/0' ) ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( V_y
        = ( '+/2' @ ( '*/2' @ 3 @ V_x ) @ -5 ) ) ) ),
    answer_to(p2_question,[])).
