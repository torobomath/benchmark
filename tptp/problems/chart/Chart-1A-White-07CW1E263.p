%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E263
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   6 equality;  19 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   42 (   0   ~;   0   |;   4   &;  37   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   4   !;   0   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_PC: $real] :
      ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point'] :
        ( ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_P )
          & ( 80.0
            = ( '3d.distance/2' @ V_A @ V_B ) )
          & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_P @ V_A @ V_C ) )
            = ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) )
          & ( ( 'cos/1' @ ( $product @ 2.0 @ ( '3d.rad-of-angle/1' @ ( '3d.angle/3' @ V_P @ V_A @ V_B ) ) ) )
            = ( $uminus @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) )
          & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_P @ V_B @ V_A ) )
            = ( $quotient @ 1.0 @ 2.0 ) ) )
       => ( V_PC
          = ( '3d.distance/2' @ V_P @ V_C ) ) ) )).

thf(p_answer,answer,(
    ^ [V_PC_dot_0: $real] :
      ( V_PC_dot_0
      = ( $product @ 20.0 @ ( 'sqrt/1' @ 6.0 ) ) ) ),
    answer_to(p_question,[])).

