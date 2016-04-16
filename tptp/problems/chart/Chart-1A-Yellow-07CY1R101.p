%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R101
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  138 (  21 equality;  46 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :   90 (   0   ~;   0   |;  15   &;  75   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   21 (   0 sgn;   0   !;  15   ?;   6   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    3 func;    7 numbers)

include('axioms.ax').

thf(p1_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_b: $real,V_c: $real] :
        ( ( V_b
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( V_c
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( V_b
          = ( $difference @ ( 'sqrt/1' @ 6.0 ) @ ( 'sqrt/1' @ 2.0 ) ) )
        & ( V_c
          = ( $product @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
          = ( $product @ 45.0 @ 'Degree/0' ) )
        & ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) ) ) )).

thf(p1_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_ACB: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_b: $real,V_c: $real] :
        ( ( V_b
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( V_c
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( V_b
          = ( $difference @ ( 'sqrt/1' @ 6.0 ) @ ( 'sqrt/1' @ 2.0 ) ) )
        & ( V_c
          = ( $product @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
          = ( $product @ 45.0 @ 'Degree/0' ) )
        & ( V_ACB
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_c: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_a: $real,V_b: $real] :
        ( ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( V_b
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( V_a = 2.0 )
        & ( V_b
          = ( 'sqrt/1' @ 6.0 ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_B @ V_A ) )
          = ( $product @ 60.0 @ 'Degree/0' ) )
        & ( V_c
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( V_a_dot_0
      = ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_ACB_dot_0: $real] :
      ( V_ACB_dot_0
      = ( $product @ 120.0 @ 'Degree/0' ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,(
    ^ [V_c_dot_0: $real] :
      ( V_c_dot_0
      = ( $sum @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ),
    answer_to(p2_question,[])).

