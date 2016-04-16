%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E122
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   85 (   8 equality;  26 variable)
%            Maximal formula depth :   27 (  18 average)
%            Number of connectives :   69 (   0   ~;   0   |;   6   &;  63   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   0   !;   8   ?;   3   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_min: $real,V_x: $real,V_y: $real] :
        ( ( V_A
          = ( '2d.point/2' @ 0.0 @ 0.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 2.0 @ 5.0 ) )
        & ( V_C
          = ( '2d.point/2' @ 6.0 @ 0.0 ) )
        & ( V_min
          = ( $sum @ ( $sum @ ( '2d.distance^2/2' @ V_P @ V_A ) @ ( '2d.distance^2/2' @ V_P @ V_B ) ) @ ( '2d.distance^2/2' @ V_P @ V_C ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_P0: '2d.Point'] :
                ( V_v
                = ( $sum @ ( $sum @ ( '2d.distance^2/2' @ V_P0 @ V_A ) @ ( '2d.distance^2/2' @ V_P0 @ V_B ) ) @ ( '2d.distance^2/2' @ V_P0 @ V_C ) ) ) )
          @ V_min )
        & ( ( '2d.point/2' @ V_x @ V_y )
          = V_P )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_min @ ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 106.0 @ 3.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 8.0 @ 3.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 5.0 @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p_question,[])).

