%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E173
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  168 (  19 equality;  49 variable)
%            Maximal formula depth :   23 (  12 average)
%            Number of connectives :  132 (   2   ~;   0   |;  17   &; 113   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   2   :;   0   =)
%            Number of variables   :   23 (   0 sgn;   0   !;  17   ?;   6   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('X/0_type',type,(
    'X/0': $real )).

thf('Y/0_type',type,(
    'Y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_O: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_x: $real,V_y: $real] :
        ( ( V_O = '2d.origin/0' )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( V_Q
          = ( '2d.point/2' @ 'X/0' @ 'Y/0' ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.half-line/2' @ V_O @ V_P ) )
        & ( 2.0
          = ( $product @ ( '2d.distance/2' @ V_O @ V_P ) @ ( '2d.distance/2' @ V_O @ V_Q ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_O: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_l: '2d.Shape',V_X: $real,V_Y: $real,V_x: $real,V_y: $real] :
        ( ( V_O = '2d.origin/0' )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( V_Q
          = ( '2d.point/2' @ V_X @ V_Y ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_s: $real,V_t: $real] :
                ( -2.0
                = ( $sum @ V_s @ ( $product @ -3.0 @ V_t ) ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_X @ ( 'cons/2' @ $real @ V_Y @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.on/2' @ V_Q @ ( '2d.half-line/2' @ V_O @ V_P ) )
        & ( 2.0
          = ( $product @ ( '2d.distance/2' @ V_O @ V_P ) @ ( '2d.distance/2' @ V_O @ V_Q ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_x_dot_0: $real,V_y_dot_0: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_x_dot_0 @ ( 'cons/2' @ $real @ V_y_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( ( $product @ 2.0 @ 'X/0' )
        = ( $product @ V_x_dot_0 @ ( $sum @ ( '^/2' @ 'X/0' @ 2.0 ) @ ( '^/2' @ 'Y/0' @ 2.0 ) ) ) )
      & ( ( $product @ 2.0 @ 'Y/0' )
        = ( $product @ V_y_dot_0 @ ( $sum @ ( '^/2' @ 'X/0' @ 2.0 ) @ ( '^/2' @ 'Y/0' @ 2.0 ) ) ) )
      & ( ( '2d.point/2' @ 'X/0' @ 'Y/0' )
       != '2d.origin/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_X_dot_0: $real,V_Y_dot_0: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_X_dot_0 @ ( 'cons/2' @ $real @ V_Y_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( ( '2d.point/2' @ V_X_dot_0 @ V_Y_dot_0 )
       != '2d.origin/0' )
      & ( ( $quotient @ 5.0 @ 2.0 )
        = ( $sum @ ( '^/2' @ ( $sum @ V_X_dot_0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_Y_dot_0 @ ( $quotient @ 3.0 @ 2.0 ) ) @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

