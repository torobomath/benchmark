%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR085
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  140 (  12 equality;  60 variable)
%            Maximal formula depth :   24 (  14 average)
%            Number of connectives :  112 (   0   ~;   0   |;  18   &;  94   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    1 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_AF_FE: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_E ) @ ( '2d.seg/2' @ V_C @ V_D ) @ V_F )
        & ( $less @ 0.0 @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( 1.0
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) ) )
        & ( 2.0
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_B ) ) )
        & ( 3.0
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_E ) ) )
        & ( 4.0
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_B ) ) )
        & ( V_AF_FE
          = ( $quotient @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_F ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_F @ V_E ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_CF_FD: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_E ) @ ( '2d.seg/2' @ V_C @ V_D ) @ V_F )
        & ( $less @ 0.0 @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( 1.0
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) ) )
        & ( 2.0
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_B ) ) )
        & ( 3.0
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_E ) ) )
        & ( 4.0
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_B ) ) )
        & ( V_CF_FD
          = ( $quotient @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_F ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_F @ V_D ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_AF_FE_dot_0: $real] :
      ( V_AF_FE_dot_0
      = ( $quotient @ 7.0 @ 6.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_CF_FD_dot_0: $real] :
      ( V_CF_FD_dot_0
      = ( $quotient @ 9.0 @ 4.0 ) ) ),
    answer_to(p2_question,[])).

