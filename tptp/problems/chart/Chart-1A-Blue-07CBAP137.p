%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP137
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  218 (  19 equality;  90 variable)
%            Maximal formula depth :   25 (  15 average)
%            Number of connectives :  178 (   0   ~;   0   |;  26   &; 152   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   0   :;   0   =)
%            Number of variables   :   27 (   0 sgn;   0   !;  21   ?;   6   ^)
%                                         (  27   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   0 pred;    2 func;   11 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_a: $real,V_b: $real] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) )
          = 8.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_B ) )
          = V_b )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_E ) )
          = V_a )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_E ) )
          = 9.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = 12.0 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_C ) )
          = 2.0 )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_D @ V_E ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( V_ab
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_xy: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_x: $real,V_y: $real] :
        ( ( '2d.parallel/2' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_F ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_F @ V_A @ V_D ) ) )
        & ( V_x
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_F @ V_C @ V_D ) ) )
        & ( V_y
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_F @ V_A ) ) )
        & ( ( $product @ 55.0 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_F @ V_E @ V_C ) ) )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_E ) @ ( '2d.seg/2' @ V_B @ V_C ) @ V_F )
        & ( '2d.on/2' @ V_C @ ( '2d.seg/2' @ V_E @ V_D ) )
        & ( V_xy
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_O: '2d.Point',V_Cir: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( V_O
          = ( '2d.center-of/1' @ V_Cir ) )
        & ( '2d.on/2' @ V_A @ V_Cir )
        & ( '2d.on/2' @ V_B @ V_Cir )
        & ( '2d.on/2' @ V_C @ V_Cir )
        & ( '2d.on/2' @ V_D @ V_Cir )
        & ( '2d.on/2' @ V_O @ ( '2d.seg/2' @ V_B @ V_D ) )
        & ( ( $product @ 56.0 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_D ) ) )
        & ( V_x
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_D @ V_B ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $real )] :
      ( V_ab_dot_0
      = ( 'cons/2' @ $real @ 6.0 @ ( 'cons/2' @ $real @ ( $quotient @ 8.0 @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_xy_dot_0: ( 'ListOf' @ $real )] :
      ( V_xy_dot_0
      = ( 'cons/2' @ $real @ ( $product @ 110.0 @ 'Degree/0' ) @ ( 'cons/2' @ $real @ ( $product @ 125.0 @ 'Degree/0' ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( V_x_dot_0
      = ( $product @ 22.0 @ 'Degree/0' ) ) ),
    answer_to(p3_question,[])).

