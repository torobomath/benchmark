%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE192
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   71 (   4 equality;  29 variable)
%            Maximal formula depth :   22 (  12 average)
%            Number of connectives :   61 (   0   ~;   0   |;   6   &;  54   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   4   !;   2   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    2 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_min: $real] :
      ! [V_O: '2d.Point',V_X: '2d.Point',V_Y: '2d.Point',V_A: '2d.Point'] :
        ( ( ( '2d.is-triangle/3' @ V_X @ V_O @ V_Y )
          & ( ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 )
            = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_X @ V_O @ V_Y ) ) )
          & ( $less @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_X @ V_O @ V_A ) ) )
          & ( $less @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_O @ V_Y ) ) )
          & ( 3.0
            = ( '2d.distance/2' @ V_O @ V_A ) ) )
       => ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_O @ V_X ) )
                & ( '2d.on/2' @ V_Q @ ( '2d.line/2' @ V_O @ V_Y ) )
                & ( V_v
                  = ( $sum @ ( '2d.distance/2' @ V_A @ V_P ) @ ( $sum @ ( '2d.distance/2' @ V_P @ V_Q ) @ ( '2d.distance/2' @ V_Q @ V_A ) ) ) ) ) )
          @ V_min ) ) )).

thf(p_answer,answer,(
    ^ [V_min_dot_0: $real] : ( V_min_dot_0 = 3.0 ) ),
    answer_to(p_question,[])).

