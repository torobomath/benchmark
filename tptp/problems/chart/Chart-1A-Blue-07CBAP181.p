%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP181
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   52 (   3 equality;  27 variable)
%            Maximal formula depth :   23 (  14 average)
%            Number of connectives :   44 (   0   ~;   0   |;   9   &;  35   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   6   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   0 pred;    1 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_angleBDC: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_Cir: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.on/2' @ V_A @ V_Cir )
        & ( '2d.on/2' @ V_B @ V_Cir )
        & ( '2d.on/2' @ V_C @ V_Cir )
        & ( '2d.on/2' @ V_D @ V_Cir )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_E ) )
        & ( '2d.on/2' @ V_C @ ( '2d.seg/2' @ V_B @ V_E ) )
        & ( ( $product @ 76.0 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_D ) ) )
        & ( V_angleBDC
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_D @ V_C ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_angleBDC_dot_0: $real] :
      ( V_angleBDC_dot_0
      = ( $product @ 50.0 @ 'Degree/0' ) ) ),
    answer_to(p_question,[])).

