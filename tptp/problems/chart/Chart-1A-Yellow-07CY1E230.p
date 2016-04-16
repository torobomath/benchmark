%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E230
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   83 (   6 equality;  43 variable)
%            Maximal formula depth :   29 (  16 average)
%            Number of connectives :   69 (   0   ~;   0   |;  12   &;  57   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;  10   ?;   2   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    1 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_Cir: '3d.Shape',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_AA: '3d.Point',V_BB: '3d.Point',V_Trapezoid: '3d.Shape',V_Sphere: '3d.Shape',V_TrancatedCone: '3d.Shape'] :
        ( ( '3d.circle-type/1' @ V_Cir )
        & ( '3d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_A @ V_D ) @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_B @ V_C ) @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( ( $quotient @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) ) @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) ) )
          = ( $quotient @ 1.0 @ V_k ) )
        & ( $less @ 1.0 @ V_k )
        & ( '3d.point-symmetry/3' @ V_A @ V_AA @ V_D )
        & ( '3d.point-symmetry/3' @ V_B @ V_BB @ V_D )
        & ( V_Trapezoid
          = ( '3d.square/4' @ V_A @ V_B @ V_BB @ V_AA ) )
        & ( '3d.is-inscribed-in/2' @ V_Cir @ V_Trapezoid )
        & ( V_Sphere
          = ( '3d.solid-of-revolution/2' @ V_Cir @ ( '3d.line/2' @ V_C @ V_D ) ) )
        & ( V_TrancatedCone
          = ( '3d.solid-of-revolution/2' @ V_Trapezoid @ ( '3d.line/2' @ V_C @ V_D ) ) )
        & ( ( $quotient @ 7.0 @ 4.0 )
          = ( $quotient @ ( '3d.volume-of/1' @ V_TrancatedCone ) @ ( '3d.volume-of/1' @ V_Sphere ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_0: $real] : ( V_k_dot_0 = 2.0 ) ),
    answer_to(p_question,[])).

