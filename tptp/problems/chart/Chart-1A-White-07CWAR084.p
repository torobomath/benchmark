%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR084
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   45 (   6 equality;  15 variable)
%            Maximal formula depth :   19 (  11 average)
%            Number of connectives :   31 (   0   ~;   0   |;   4   &;  26   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   4   !;   1   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   0 pred;    1 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_min: $real] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( ( V_A
            = ( '2d.point/2' @ 0.0 @ 0.0 ) )
          & ( V_B
            = ( '2d.point/2' @ 2.0 @ 0.0 ) )
          & ( V_C
            = ( '2d.point/2' @ 2.0 @ 4.0 ) )
          & ( V_D
            = ( '2d.point/2' @ 0.0 @ 4.0 ) ) )
       => ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_P: '2d.Point'] :
                ( ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_B @ V_C ) )
                & ( V_v
                  = ( $sum @ ( '2d.distance/2' @ V_A @ V_P ) @ ( '2d.distance/2' @ V_P @ ( '2d.midpoint-of/2' @ V_C @ V_D ) ) ) ) ) )
          @ V_min ) ) )).

thf(p_answer,answer,(
    ^ [V_min_dot_0: $real] : ( V_min_dot_0 = 5.0 ) ),
    answer_to(p_question,[])).

