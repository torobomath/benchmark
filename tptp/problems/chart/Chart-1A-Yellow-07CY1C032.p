%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1C032
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   61 (  10 equality;  22 variable)
%            Maximal formula depth :   14 (   9 average)
%            Number of connectives :   37 (   0   ~;   0   |;   4   &;  31   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   6   !;   0   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    1 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( ( 3.0
            = ( '2d.distance/2' @ V_C @ V_A ) )
          & ( ( 'sqrt/1' @ 2.0 )
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) )
            = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) ) )
       => ( V_a
          = ( '2d.distance/2' @ V_B @ V_C ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_cosB: $real] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( ( 5.0
            = ( '2d.distance/2' @ V_B @ V_C ) )
          & ( 7.0
            = ( '2d.distance/2' @ V_C @ V_A ) )
          & ( 8.0
            = ( '2d.distance/2' @ V_A @ V_B ) ) )
       => ( V_cosB
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_B @ V_A ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( V_a_dot_0
      = ( 'sqrt/1' @ 5.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_cosB_dot_0: $real] :
      ( V_cosB_dot_0
      = ( $quotient @ 1.0 @ 2.0 ) ) ),
    answer_to(p2_question,[])).

