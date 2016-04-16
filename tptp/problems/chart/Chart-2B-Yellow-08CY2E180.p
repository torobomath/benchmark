%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E180
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :   97 (  11 equality;  28 variable)
%            Maximal formula depth :   25 (  10 average)
%            Number of connectives :   73 (   0   ~;   0   |;   7   &;  65   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   2   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   2   !;   5   ?;  11   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    3 func;    1 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_P: '2d.Point',V_l: '2d.Shape',V_t: $real] :
        ( ( V_P
          = ( '2d.point/2' @ 'x/0' @ 'y/0' ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( V_y_dot_1
                = ( $sum @ ( $product @ ( $product @ 2.0 @ V_t ) @ V_x_dot_1 ) @ ( '^/2' @ V_t @ 2.0 ) ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ V_P @ V_l )
        & ! [V_t0: $real,V_l0: '2d.Shape'] :
            ( ( ( V_l0
                = ( '2d.set-of-cfun/1'
                  @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                      ( V_y_dot_0
                      = ( $sum @ ( $product @ ( $product @ 2.0 @ V_t0 ) @ V_x_dot_0 ) @ ( '^/2' @ V_t0 @ 2.0 ) ) ) ) )
              & ( '2d.on/2' @ V_P @ V_l0 ) )
           => ( V_t = V_t0 ) ) ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
      ? [V_l: '2d.Shape',V_t: $real] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $sum @ ( $product @ ( $product @ 2.0 @ V_t ) @ V_x ) @ ( '^/2' @ V_t @ 2.0 ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_l ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'y/0'
        = ( $uminus @ ( '^/2' @ 'x/0' @ 2.0 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( $greatereq @ V_y_dot_0 @ ( $uminus @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) ),
    answer_to(p2_question,[])).

