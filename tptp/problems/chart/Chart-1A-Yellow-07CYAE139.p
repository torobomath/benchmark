%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE139
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  132 (  10 equality;  66 variable)
%            Maximal formula depth :   24 (  14 average)
%            Number of connectives :  108 (   0   ~;   0   |;  20   &;  88   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   0   !;  14   ?;   4   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    1 func;    5 numbers)

include('axioms.ax').

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_BD: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_L1: '2d.Shape',V_L2: '2d.Shape'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.line-type/1' @ V_L1 )
        & ( '2d.line-type/1' @ V_L2 )
        & ( '2d.is-angle-bisector/2' @ V_L1 @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
        & ( '2d.is-angle-bisector/2' @ V_L2 @ ( '2d.angle/3' @ V_B @ V_A @ ( '2d.vec-translate/2' @ V_A @ ( '2d.vec/2' @ V_C @ V_A ) ) ) )
        & ( '2d.intersect/3' @ V_L1 @ ( '2d.line/2' @ V_B @ V_C ) @ V_D )
        & ( '2d.intersect/3' @ V_L2 @ ( '2d.line/2' @ V_B @ V_C ) @ V_E )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = 5.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) )
          = 3.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_C ) )
          = 6.0 )
        & ( V_BD
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_D ) ) ) ) )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_BC: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_L1: '2d.Shape',V_L2: '2d.Shape'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.line-type/1' @ V_L1 )
        & ( '2d.line-type/1' @ V_L2 )
        & ( '2d.is-angle-bisector/2' @ V_L1 @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
        & ( '2d.is-angle-bisector/2' @ V_L2 @ ( '2d.angle/3' @ V_B @ V_A @ ( '2d.vec-translate/2' @ V_A @ ( '2d.vec/2' @ V_C @ V_A ) ) ) )
        & ( '2d.intersect/3' @ V_L1 @ ( '2d.line/2' @ V_B @ V_C ) @ V_D )
        & ( '2d.intersect/3' @ V_L2 @ ( '2d.line/2' @ V_B @ V_C ) @ V_E )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = 5.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) )
          = 3.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_C ) )
          = 6.0 )
        & ( V_BC
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_BD_dot_0: $real] :
      ( V_BD_dot_0
      = ( $quotient @ 5.0 @ 2.0 ) ) ),
    answer_to(p2_question,[])).

thf(p1_answer,answer,(
    ^ [V_BC_dot_0: $real] : ( V_BC_dot_0 = 4.0 ) ),
    answer_to(p1_question,[])).

