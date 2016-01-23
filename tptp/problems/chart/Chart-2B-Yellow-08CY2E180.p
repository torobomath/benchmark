%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E180
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   88 (  11 equality;  36 variable)
%            Maximal formula depth :   25 (  14 average)
%            Number of connectives :   64 (   0   ~;   0   |;   7   &;  56   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   22 (   0 sgn;   2   !;   5   ?;  11   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_P: '2d.Point',V_l: '2d.Shape',V_t: 'R'] :
        ( ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( V_y_dot_1
                = ( '+/2' @ ( '*/2' @ ( '*/2' @ 2 @ V_t ) @ V_x_dot_1 ) @ ( '^/2' @ V_t @ 2 ) ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.on/2' @ V_P @ V_l )
        & ! [V_t0: 'R',V_l0: '2d.Shape'] :
            ( ( ( V_l0
                = ( '2d.set-of-cfun/1'
                  @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                      ( V_y_dot_0
                      = ( '+/2' @ ( '*/2' @ ( '*/2' @ 2 @ V_t0 ) @ V_x_dot_0 ) @ ( '^/2' @ V_t0 @ 2 ) ) ) ) )
              & ( '2d.on/2' @ V_P @ V_l0 ) )
           => ( V_t = V_t0 ) ) ) )).

thf(p2_qustion,question,
    ( 'Draw/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_l: '2d.Shape',V_t: 'R'] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '+/2' @ ( '*/2' @ ( '*/2' @ 2 @ V_t ) @ V_x ) @ ( '^/2' @ V_t @ 2 ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_l ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( V_y
        = ( '-/1' @ ( '^/2' @ V_x @ 2 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( '>=/2' @ V_y_dot_0 @ ( '-/1' @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ) ),
    answer_to(p2_question,[])).
