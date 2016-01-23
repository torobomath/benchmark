%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2R074
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    6 (   1 unit;   0 type;   0 defn)
%            Number of atoms       :  152 (  23 equality;  57 variable)
%            Maximal formula depth :   17 (  11 average)
%            Number of connectives :  106 (   0   ~;   1   |;  14   &;  91   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   37 (   1 sgn;   0   !;   8   ?;  18   ^)
%                                         (  26   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Shape',V_l: '2d.Shape',V_P: '2d.Point'] :
        ( ( V_A
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( 10
                = ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 2 ) @ ( '^/2' @ V_y_dot_1 @ 2 ) ) ) ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( V_y_dot_0
                = ( '+/2' @ ( '-/1' @ V_x_dot_0 ) @ 2 ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.intersect/3' @ V_A @ V_l @ V_P )
        & ( ( '2d.point/2' @ V_x @ V_y )
          = V_P ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Shape',V_l: '2d.Shape',V_P: '2d.Point'] :
        ( ( V_A
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( 10
                = ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 2 ) @ ( '^/2' @ V_y_dot_1 @ 2 ) ) ) ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( V_y_dot_0
                = ( '+/2' @ ( '*/2' @ 3 @ V_x_dot_0 ) @ 10 ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.intersect/3' @ V_A @ V_l @ V_P )
        & ( ( '2d.point/2' @ V_x @ V_y )
          = V_P ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Shape',V_l: '2d.Shape'] :
        ( ( V_A
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( 10
                = ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 2 ) @ ( '^/2' @ V_y_dot_1 @ 2 ) ) ) ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( V_y_dot_0
                = ( '+/2' @ ( '*/2' @ 2 @ V_x_dot_0 ) @ -8 ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.intersect/3' @ V_A @ V_l @ V_P )
        & ( ( '2d.point/2' @ V_x @ V_y )
          = V_P ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( ( ( '2d.point/2' @ V_x @ V_y )
          = ( '2d.point/2' @ -1 @ 3 ) )
        | ( ( '2d.point/2' @ V_x @ V_y )
          = ( '2d.point/2' @ 3 @ -1 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( ( '2d.point/2' @ V_x @ V_y )
        = ( '2d.point/2' @ -3 @ 1 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] : 'false/0' ),
    answer_to(p3_question,[])).
