%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E130
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  103 (  15 equality;  26 variable)
%            Maximal formula depth :   13 (   8 average)
%            Number of connectives :   65 (   0   ~;   0   |;   9   &;  56   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   0   !;   9   ?;   8   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    1 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ -2.0 @ -3.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 3.0 @ 7.0 ) )
        & ( V_P
          = ( '2d.internally-dividing-point/3' @ V_A @ V_B @ ( $quotient @ 4.0 @ 5.0 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
      ? [V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_B
          = ( '2d.point/2' @ 3.0 @ 7.0 ) )
        & ( V_C
          = ( '2d.point/2' @ 5.0 @ 2.0 ) )
        & ( '2d.divide-externally/4' @ V_P @ ( '2d.seg/2' @ V_B @ V_C ) @ 2.0 @ 3.0 ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
      ? [V_A: '2d.Point',V_C: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ -2.0 @ -3.0 ) )
        & ( V_C
          = ( '2d.point/2' @ 5.0 @ 2.0 ) )
        & ( V_P
          = ( '2d.midpoint-of/2' @ V_C @ V_A ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_G: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ -2.0 @ -3.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 3.0 @ 7.0 ) )
        & ( V_C
          = ( '2d.point/2' @ 5.0 @ 2.0 ) )
        & ( '2d.is-center-of-gravity-of/2' @ V_G @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ 2.0 @ 5.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ -1.0 @ 17.0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ ( $quotient @ 3.0 @ 2.0 ) @ ( $quotient @ -1.0 @ 2.0 ) ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_G_dot_0: '2d.Point'] :
      ( V_G_dot_0
      = ( '2d.point/2' @ 2.0 @ 2.0 ) ) ),
    answer_to(p4_question,[])).

