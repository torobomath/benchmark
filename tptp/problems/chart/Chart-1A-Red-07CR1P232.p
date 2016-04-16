%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P232
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   61 (   3 equality;  30 variable)
%            Maximal formula depth :   20 (  13 average)
%            Number of connectives :   53 (   0   ~;   0   |;   6   &;  47   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   5   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   0 pred;    2 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_D @ V_E )
        & ( '2d.perpendicular/2' @ ( '2d.seg/2' @ V_A @ V_D ) @ ( '2d.seg/2' @ V_D @ V_E ) )
        & ( '2d.on/2' @ V_C @ ( '2d.seg/2' @ V_A @ V_E ) )
        & ( '2d.on/2' @ V_B @ ( '2d.seg/2' @ V_A @ V_D ) )
        & ( '2d.perpendicular/2' @ ( '2d.seg/2' @ V_A @ V_B ) @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
          = ( '2d.area-of/1' @ ( '2d.square/4' @ V_C @ V_B @ V_D @ V_E ) ) )
        & ( ( $quotient @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_D ) ) )
          = ( $quotient @ 1.0 @ V_x ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( V_x_dot_0
      = ( $difference @ ( 'sqrt/1' @ 2.0 ) @ 1.0 ) ) ),
    answer_to(p_question,[])).

