%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2R080
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :   74 (   6 equality;  10 variable)
%            Maximal formula depth :   20 (   8 average)
%            Number of connectives :   63 (   1   ~;   0   |;   6   &;  56   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   2   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ? [V_C: '2d.Shape',V_P: '2d.Point'] :
            ( ( '2d.circle-type/1' @ V_C )
            & ( V_P
             != ( '2d.point/2' @ 4.0 @ 2.0 ) )
            & ( V_C
              = ( '2d.set-of-cfun/1'
                @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                    ( 25.0
                    = ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_0 @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $sum @ V_y_dot_0 @ 2.0 ) @ 2.0 ) ) ) ) )
            & ( '2d.tangent/3' @ V_C @ ( '2d.line/2' @ ( '2d.point/2' @ 4.0 @ 2.0 ) @ V_P ) @ ( '2d.point/2' @ 4.0 @ 2.0 ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ ( '2d.point/2' @ 4.0 @ 2.0 ) @ V_P ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'y/0'
        = ( $sum @ ( $product @ ( $quotient @ -3.0 @ 4.0 ) @ 'x/0' ) @ 5.0 ) ) ) ),
    answer_to(p_question,[])).

