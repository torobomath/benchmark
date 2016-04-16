%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E153
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  145 (   8 equality;  31 variable)
%            Maximal formula depth :   27 (  11 average)
%            Number of connectives :  129 (   0   ~;   1   |;  12   &; 116   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   34 (   2   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   0   !;   5   ?;   6   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   16 (   1 pred;    4 func;   11 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_C: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( 8.0
                = ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_1 @ 2.0 ) @ 2.0 ) @ ( '^/2' @ ( $sum @ V_y_dot_1 @ 1.0 ) @ 2.0 ) ) ) ) )
        & ( V_C2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( 10.0
                = ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_0 @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y_dot_0 @ 2.0 ) @ 2.0 ) ) ) ) )
        & ( ( $less @ ( '2d.x-coord/1' @ V_P ) @ ( '2d.x-coord/1' @ V_Q ) )
          | ( ( ( '2d.x-coord/1' @ V_P )
              = ( '2d.x-coord/1' @ V_Q ) )
            & ( $less @ ( '2d.y-coord/1' @ V_P ) @ ( '2d.y-coord/1' @ V_Q ) ) ) )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_C1 @ V_C2 ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_C1 @ V_C2 ) )
        & ( '2d.circle-type/1' @ V_C )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.on/2' @ '2d.origin/0' @ V_C )
        & ( V_answer
          = ( 'cons/2' @ $real @ ( '2d.x-coord/1' @ V_P ) @ ( 'cons/2' @ $real @ ( '2d.y-coord/1' @ V_P ) @ ( 'cons/2' @ $real @ ( '2d.x-coord/1' @ V_Q ) @ ( 'cons/2' @ $real @ ( '2d.y-coord/1' @ V_Q ) @ ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ V_C ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ ( $quotient @ -4.0 @ 5.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ -3.0 @ 5.0 ) @ ( 'cons/2' @ $real @ 4.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
      & ( 0.0
        = ( $sum @ ( $sum @ ( $sum @ ( '^/2' @ 'x/0' @ 2.0 ) @ ( '^/2' @ 'y/0' @ 2.0 ) ) @ ( $product @ -7.0 @ 'x/0' ) ) @ ( $product @ 11.0 @ 'y/0' ) ) ) ) ),
    answer_to(p_question,[])).

