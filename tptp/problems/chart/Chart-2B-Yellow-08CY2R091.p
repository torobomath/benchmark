%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2R091
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  107 (   3 equality;  27 variable)
%            Maximal formula depth :   15 (  13 average)
%            Number of connectives :   95 (   0   ~;   0   |;   6   &;  89   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   15 (   0 sgn;   0   !;   0   ?;  15   ^)
%                                         (  15   :;   0  !>;   0  ?*)
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
              ( ( '</2' @ ( '+/2' @ ( '+/2' @ V_x @ ( '*/2' @ -3 @ V_y ) ) @ -9 ) @ 0 )
              & ( '</2' @ 0 @ ( '+/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_x ) @ ( '*/2' @ 3 @ V_y ) ) @ -6 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: 'R',V_y: 'R'] :
              ( ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ V_y @ 2 ) ) @ 9 )
              & ( '</2' @ ( '-/2' @ V_x @ V_y ) @ 3 ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: 'R',V_y: 'R'] :
              ( ( '<=/2' @ V_y @ ( '+/2' @ V_x @ 1 ) )
              & ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ -1 ) @ V_y ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( ( '</2' @ ( '+/2' @ ( '+/2' @ V_x_dot_0 @ ( '*/2' @ -3 @ V_y_dot_0 ) ) @ -9 ) @ 0 )
        & ( '</2' @ 0 @ ( '+/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_x_dot_0 ) @ ( '*/2' @ 3 @ V_y_dot_0 ) ) @ -6 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ V_y_dot_0 @ 2 ) ) @ 9 )
        & ( '</2' @ ( '-/2' @ V_x_dot_0 @ V_y_dot_0 ) @ 3 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( ( '<=/2' @ V_y_dot_0 @ ( '+/2' @ V_x_dot_0 @ 1 ) )
        & ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ -1 ) @ V_y_dot_0 ) ) ),
    answer_to(p3_question,[])).
