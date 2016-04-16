%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E190
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :   60 (   7 equality;  10 variable)
%            Maximal formula depth :   17 (   7 average)
%            Number of connectives :   46 (   0   ~;   0   |;   5   &;  41   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   2   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    3 func;    6 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_O: '2d.Point',V_l: '2d.Shape',V_Q: '2d.Point'] :
        ( ( V_O = '2d.origin/0' )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( 5.0
                = ( $sum @ ( $product @ 2.0 @ V_x_dot_0 ) @ ( $product @ 3.0 @ V_y_dot_0 ) ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ V_Q @ V_l )
        & ( ( '2d.point/2' @ 'x/0' @ 'y/0' )
          = ( '2d.internally-dividing-point/3' @ V_O @ V_Q @ ( $quotient @ 2.0 @ 3.0 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 10.0
        = ( $sum @ ( $product @ 6.0 @ 'x/0' ) @ ( $product @ 9.0 @ 'y/0' ) ) ) ) ),
    answer_to(p_question,[])).

