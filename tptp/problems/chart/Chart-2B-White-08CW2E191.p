%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E191
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   65 (   4 equality;  16 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   49 (   0   ~;   0   |;   0   &;  49   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :   20 (   4 sgn;   0   !;   0   ?;  20   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: 'R',V_y: 'R'] :
              ( '</2' @ ( '-/2' @ 2 @ ( '*/2' @ 3 @ V_x ) ) @ V_y ) ) ) )).

thf(p2_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: 'R',V_y: 'R'] :
              ( '<=/2' @ 0 @ ( '+/2' @ ( '+/2' @ ( '*/2' @ 3 @ V_x ) @ ( '-/1' @ V_y ) ) @ -5 ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: 'R',V_y: 'R'] :
              ( '</2' @ V_y @ 3 ) ) ) )).

thf(p4_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: 'R',V_y: 'R'] :
              ( '<=/2' @ -1 @ V_x ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( '>/2' @ V_y_dot_0 @ ( '-/2' @ 2 @ ( '*/2' @ 3 @ V_x_dot_0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( '>=/2' @ ( '-/2' @ ( '-/2' @ ( '*/2' @ 3 @ V_x_dot_0 ) @ V_y_dot_0 ) @ 5 ) @ 0 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( '</2' @ V_y_dot_0 @ 3 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( '>=/2' @ V_x_dot_0 @ -1 ) ),
    answer_to(p4_question,[])).
