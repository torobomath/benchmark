%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2R074
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    9 (   1 unit;   3 type;   0 defn)
%            Number of atoms       :  173 (  23 equality;  33 variable)
%            Maximal formula depth :   17 (   8 average)
%            Number of connectives :  127 (   0   ~;   1   |;  14   &; 112   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   3   :;   0   =)
%            Number of variables   :   26 (   1 sgn;   0   !;   8   ?;  18   ^)
%                                         (  26   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    3 func;    7 numbers)

include('axioms.ax').

thf('P/0_type',type,(
    'P/0': '2d.Point' )).

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Shape',V_l: '2d.Shape',V_P: '2d.Point'] :
        ( ( V_A
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( 10.0
                = ( $sum @ ( '^/2' @ V_x_dot_1 @ 2.0 ) @ ( '^/2' @ V_y_dot_1 @ 2.0 ) ) ) ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( V_y_dot_0
                = ( $sum @ ( $uminus @ V_x_dot_0 ) @ 2.0 ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.intersect/3' @ V_A @ V_l @ V_P )
        & ( ( '2d.point/2' @ 'x/0' @ 'y/0' )
          = V_P ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Shape',V_l: '2d.Shape',V_P: '2d.Point'] :
        ( ( V_A
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( 10.0
                = ( $sum @ ( '^/2' @ V_x_dot_1 @ 2.0 ) @ ( '^/2' @ V_y_dot_1 @ 2.0 ) ) ) ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( V_y_dot_0
                = ( $sum @ ( $product @ 3.0 @ V_x_dot_0 ) @ 10.0 ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.intersect/3' @ V_A @ V_l @ V_P )
        & ( ( '2d.point/2' @ 'x/0' @ 'y/0' )
          = V_P ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Shape',V_l: '2d.Shape'] :
        ( ( V_A
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( 10.0
                = ( $sum @ ( '^/2' @ V_x_dot_1 @ 2.0 ) @ ( '^/2' @ V_y_dot_1 @ 2.0 ) ) ) ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( V_y_dot_0
                = ( $sum @ ( $product @ 2.0 @ V_x_dot_0 ) @ -8.0 ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.intersect/3' @ V_A @ V_l @ 'P/0' )
        & ( ( '2d.point/2' @ 'x/0' @ 'y/0' )
          = 'P/0' ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( ( ( '2d.point/2' @ 'x/0' @ 'y/0' )
          = ( '2d.point/2' @ -1.0 @ 3.0 ) )
        | ( ( '2d.point/2' @ 'x/0' @ 'y/0' )
          = ( '2d.point/2' @ 3.0 @ -1.0 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( ( '2d.point/2' @ 'x/0' @ 'y/0' )
        = ( '2d.point/2' @ -3.0 @ 1.0 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] : $false ),
    answer_to(p3_question,[])).

