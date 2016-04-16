%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2R085
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :   56 (   7 equality;   9 variable)
%            Maximal formula depth :   15 (   7 average)
%            Number of connectives :   42 (   0   ~;   0   |;   5   &;  37   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   2   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    2 func;    7 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_P: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ -3.0 @ 1.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 3.0 @ -2.0 ) )
        & ( V_P
          = ( '2d.point/2' @ 'x/0' @ 'y/0' ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( ( '2d.distance/2' @ V_A @ V_P )
          = ( '2d.distance/2' @ V_B @ V_P ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 0.0
        = ( $sum @ ( $sum @ ( $product @ 4.0 @ 'x/0' ) @ ( $product @ -2.0 @ 'y/0' ) ) @ -1.0 ) ) ) ),
    answer_to(p_question,[])).

