%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P167
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   61 (   4 equality;  20 variable)
%            Maximal formula depth :   16 (  14 average)
%            Number of connectives :   51 (   0   ~;   1   |;   6   &;  44   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   3   ?;   7   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
      ? [V_S: '2d.Shape'] :
        ( ( V_S
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ V_y_dot_0 @ 2 ) ) @ 8 )
                & ( '<=/2' @ 0 @ V_y_dot_0 ) ) ) )
        & ( V_D
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
              ? [V_p: 'R',V_q: 'R'] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ V_p @ V_q ) @ V_S )
                & ( V_x
                  = ( '+/2' @ V_p @ V_q ) )
                & ( V_y
                  = ( '*/2' @ V_p @ V_q ) ) ) ) ) ) )).

thf(p_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
        ( ( '<=/2' @ ( '-/2' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ V_x_dot_1 @ 2 ) ) @ 4 ) @ V_y_dot_1 )
        & ( '<=/2' @ V_y_dot_1 @ ( '*/2' @ ( '//2' @ 1 @ 4 ) @ ( '^/2' @ V_x_dot_1 @ 2 ) ) )
        & ( ( '<=/2' @ 0 @ V_x_dot_1 )
          | ( '<=/2' @ V_y_dot_1 @ 0 ) ) ) ),
    answer_to(p_question,[])).
