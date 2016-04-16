%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1R114
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  138 (  22 equality;  56 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :   88 (   0   ~;   0   |;  19   &;  69   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :   22 (   0 sgn;   0   !;  16   ?;   6   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   0 pred;    3 func;   10 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_b: $real,V_c: $real] :
        ( ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( V_b
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) ) )
        & ( V_c
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
          = ( $product @ 60.0 @ 'Degree/0' ) )
        & ( V_b = 5.0 )
        & ( V_c = 3.0 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_angleCAB: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_a: $real,V_b: $real,V_c: $real] :
        ( ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( V_b
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) ) )
        & ( V_c
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_a
          = ( 'sqrt/1' @ 10.0 ) )
        & ( V_b
          = ( 'sqrt/1' @ 2.0 ) )
        & ( V_c = 2.0 )
        & ( V_angleCAB
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_c: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_a: $real,V_b: $real] :
        ( ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( V_b
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) ) )
        & ( V_c
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_a = 2.0 )
        & ( V_b
          = ( 'sqrt/1' @ 6.0 ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
          = ( $product @ 60.0 @ 'Degree/0' ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( V_a_dot_0
      = ( 'sqrt/1' @ 19.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_angleCAB_dot_0: $real] :
      ( V_angleCAB_dot_0
      = ( $product @ 135.0 @ ( $quotient @ 'Pi/0' @ 180.0 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_c_dot_0: $real] :
      ( V_c_dot_0
      = ( $sum @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ),
    answer_to(p3_question,[])).

