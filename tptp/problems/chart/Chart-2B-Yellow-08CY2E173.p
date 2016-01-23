%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E173
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  152 (  19 equality;  59 variable)
%            Maximal formula depth :   23 (  17 average)
%            Number of connectives :  116 (   2   ~;   0   |;  17   &;  97   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   27 (   2 sgn;   0   !;  17   ?;   6   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_O: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_x: 'R',V_y: 'R'] :
        ( ( V_O = '2d.origin/0' )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( V_Q
          = ( '2d.point/2' @ V_X @ V_Y ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.half-line/2' @ V_O @ V_P ) )
        & ( 2
          = ( '*/2' @ ( '2d.distance/2' @ V_O @ V_P ) @ ( '2d.distance/2' @ V_O @ V_Q ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_O: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_l: '2d.Shape',V_X: 'R',V_Y: 'R',V_x: 'R',V_y: 'R'] :
        ( ( V_O = '2d.origin/0' )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( V_Q
          = ( '2d.point/2' @ V_X @ V_Y ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_s: 'R',V_t: 'R'] :
                ( -2
                = ( '+/2' @ V_s @ ( '*/2' @ -3 @ V_t ) ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_X @ ( 'cons/2' @ V_Y @ 'nil/0' ) ) )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.on/2' @ V_Q @ ( '2d.half-line/2' @ V_O @ V_P ) )
        & ( 2
          = ( '*/2' @ ( '2d.distance/2' @ V_O @ V_P ) @ ( '2d.distance/2' @ V_O @ V_Q ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
    ? [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x_dot_0 @ ( 'cons/2' @ V_y_dot_0 @ 'nil/0' ) ) )
      & ( ( '*/2' @ 2 @ V_X )
        = ( '*/2' @ V_x_dot_0 @ ( '+/2' @ ( '^/2' @ V_X @ 2 ) @ ( '^/2' @ V_Y @ 2 ) ) ) )
      & ( ( '*/2' @ 2 @ V_Y )
        = ( '*/2' @ V_y_dot_0 @ ( '+/2' @ ( '^/2' @ V_X @ 2 ) @ ( '^/2' @ V_Y @ 2 ) ) ) )
      & ( ( '2d.point/2' @ V_X @ V_Y )
       != '2d.origin/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
    ? [V_X_dot_0: 'R',V_Y_dot_0: 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_X_dot_0 @ ( 'cons/2' @ V_Y_dot_0 @ 'nil/0' ) ) )
      & ( ( '2d.point/2' @ V_X_dot_0 @ V_Y_dot_0 )
       != '2d.origin/0' )
      & ( ( '//2' @ 5 @ 2 )
        = ( '+/2' @ ( '^/2' @ ( '+/2' @ V_X_dot_0 @ ( '//2' @ 1 @ 2 ) ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_Y_dot_0 @ ( '//2' @ 3 @ 2 ) ) @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).
