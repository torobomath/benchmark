%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E302
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   95 (  12 equality;  47 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :   67 (   0   ~;   0   |;  12   &;  53   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   8   !;   2   ?;   4   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    1 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_cosA: $real] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
          & ? [V_circle: '2d.Shape'] :
              ( ( '2d.circle-type/1' @ V_circle )
              & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_circle ) )
          & ( 4.0
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( 5.0
            = ( '2d.distance/2' @ V_B @ V_C ) )
          & ( 7.0
            = ( '2d.distance/2' @ V_C @ V_D ) )
          & ( 10.0
            = ( '2d.distance/2' @ V_D @ V_A ) ) )
       => ( V_cosA
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
          & ? [V_circle: '2d.Shape'] :
              ( ( '2d.circle-type/1' @ V_circle )
              & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_circle ) )
          & ( 4.0
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( 5.0
            = ( '2d.distance/2' @ V_B @ V_C ) )
          & ( 7.0
            = ( '2d.distance/2' @ V_C @ V_D ) )
          & ( 10.0
            = ( '2d.distance/2' @ V_D @ V_A ) ) )
       => ( V_S
          = ( '2d.area-of/1' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_cosA_dot_0: $real] :
      ( V_cosA_dot_0
      = ( $quotient @ 7.0 @ 25.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] : ( V_S_dot_0 = 36.0 ) ),
    answer_to(p2_question,[])).

