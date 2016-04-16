%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE172
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  148 (  11 equality;  67 variable)
%            Maximal formula depth :   29 (  17 average)
%            Number of connectives :  124 (   0   ~;   0   |;  23   &; 101   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   0   !;  16   ?;   4   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    1 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_xy: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_O: '2d.Point',V_l: '2d.Shape',V_Cir: '2d.Shape',V_x: $real,V_y: $real] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.line-type/1' @ V_l )
        & ( V_O
          = ( '2d.center-of/1' @ V_Cir ) )
        & ( '2d.on/2' @ V_A @ V_Cir )
        & ( '2d.on/2' @ V_B @ V_Cir )
        & ( '2d.on/2' @ V_C @ V_Cir )
        & ( '2d.on/2' @ V_O @ ( '2d.seg/2' @ V_C @ V_B ) )
        & ( '2d.tangent/3' @ V_Cir @ V_l @ V_A )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_C ) @ V_l @ V_D )
        & ( V_x
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_O @ V_B @ V_A ) ) )
        & ( V_y
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_D @ V_A ) ) )
        & ( ( $product @ 120.0 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_D ) ) )
        & ( V_xy
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_z: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_l: '2d.Shape',V_Cir: '2d.Shape',V_E: '2d.Point'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.on/2' @ V_A @ V_Cir )
        & ( '2d.on/2' @ V_B @ V_Cir )
        & ( '2d.on/2' @ V_C @ V_Cir )
        & ( '2d.on/2' @ V_D @ V_Cir )
        & ( '2d.on/2' @ V_E @ V_l )
        & ( '2d.tangent/3' @ V_Cir @ V_l @ V_A )
        & ( ( $product @ 60.0 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_E ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_D ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_B @ V_D ) ) )
        & ( ( $product @ 94.0 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_D ) ) )
        & ( V_z
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_D @ V_C ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_xy_dot_0: ( 'ListOf' @ $real )] :
      ( V_xy_dot_0
      = ( 'cons/2' @ $real @ ( $product @ 30.0 @ 'Degree/0' ) @ ( 'cons/2' @ $real @ ( $product @ 30.0 @ 'Degree/0' ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_z_dot_0: $real] :
      ( V_z_dot_0
      = ( $product @ 52.0 @ 'Degree/0' ) ) ),
    answer_to(p2_question,[])).

