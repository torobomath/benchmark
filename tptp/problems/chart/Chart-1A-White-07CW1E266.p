%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E266
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  132 (  15 equality;  50 variable)
%            Maximal formula depth :   18 (  10 average)
%            Number of connectives :   96 (   0   ~;   0   |;   9   &;  84   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :   16 (   0 sgn;  10   !;   0   ?;   6   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   0 pred;    3 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_b: $real] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
          & ( 0.0
            = ( 'cos/1' @ ( $product @ 2.0 @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) ) ) )
          & ( ( $quotient @ -1.0 @ 2.0 )
            = ( 'cos/1' @ ( $product @ 2.0 @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) ) )
          & ( ( $quotient @ ( $uminus @ ( 'sqrt/1' @ 3.0 ) ) @ 2.0 )
            = ( 'cos/1' @ ( $product @ 2.0 @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) ) ) )
          & ( 1.0
            = ( '2d.distance/2' @ V_B @ V_C ) ) )
       => ( V_b
          = ( '2d.distance/2' @ V_C @ V_A ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_cosC: $real] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_t: $real] :
        ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
          & ( ( $product @ 8.0 @ V_t )
            = ( '2d.distance/2' @ V_B @ V_C ) )
          & ( ( $product @ 5.0 @ V_t )
            = ( '2d.distance/2' @ V_C @ V_A ) )
          & ( ( $product @ 7.0 @ V_t )
            = ( '2d.distance/2' @ V_A @ V_B ) ) )
       => ( V_cosC
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_cosB: $real] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
          & ( ( '2d.distance/2' @ V_C @ V_A )
            = ( $product @ 2.0 @ ( '2d.distance/2' @ V_A @ V_B ) ) )
          & ( ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 )
            = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) ) )
       => ( V_cosB
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_b_dot_0: $real] :
      ( V_b_dot_0
      = ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ 2.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_cosC_dot_0: $real] :
      ( V_cosC_dot_0
      = ( $quotient @ 1.0 @ 2.0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_cosB_dot_0: $real] : ( V_cosB_dot_0 = 0.0 ) ),
    answer_to(p3_question,[])).

