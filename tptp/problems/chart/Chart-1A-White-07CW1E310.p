%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E310
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   52 (   3 equality;  28 variable)
%            Maximal formula depth :   25 (  14 average)
%            Number of connectives :   44 (   0   ~;   0   |;   1   &;  42   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   8   !;   0   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    0 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Point',V_G: '3d.Point',V_H: '3d.Point'] :
        ( ( ( '3d.is-cube/8' @ V_A @ V_B @ V_C @ V_D @ V_E @ V_F @ V_G @ V_H )
          & ( 6.0
            = ( '3d.distance/2' @ V_A @ V_B ) ) )
       => ( V_V
          = ( '3d.volume-of/1' @ ( '3d.intersection/1' @ ( 'cons/2' @ '3d.Shape' @ ( '3d.cube/8' @ V_A @ V_B @ V_C @ V_D @ V_E @ V_F @ V_G @ V_H ) @ ( 'cons/2' @ '3d.Shape' @ ( '3d.divided-region-including/2' @ ( '3d.plane1/3' @ V_A @ V_F @ V_C ) @ V_E ) @ ( 'cons/2' @ '3d.Shape' @ ( '3d.divided-region-including/2' @ ( '3d.plane1/3' @ V_B @ V_G @ V_D ) @ V_E ) @ ( 'nil/0' @ '3d.Shape' ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: $real] : ( V_V_dot_0 = 153.0 ) ),
    answer_to(p_question,[])).

