%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E267
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   59 (  10 equality;  22 variable)
%            Maximal formula depth :   12 (   8 average)
%            Number of connectives :   35 (   0   ~;   0   |;   4   &;  29   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   6   !;   0   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    2 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_cosB: $real] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( ( 5.0
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( 3.0
            = ( '2d.distance/2' @ V_A @ V_C ) )
          & ( 6.0
            = ( '2d.distance/2' @ V_B @ V_C ) ) )
       => ( V_cosB
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_AM: $real] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( ( 5.0
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( 3.0
            = ( '2d.distance/2' @ V_A @ V_C ) )
          & ( 6.0
            = ( '2d.distance/2' @ V_B @ V_C ) ) )
       => ( V_AM
          = ( '2d.distance/2' @ V_A @ ( '2d.midpoint-of/2' @ V_B @ V_C ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_cosB_dot_0: $real] :
      ( V_cosB_dot_0
      = ( $quotient @ 13.0 @ 15.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_AM_dot_0: $real] :
      ( V_AM_dot_0
      = ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p2_question,[])).

