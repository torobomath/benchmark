%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P223
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  139 (  15 equality;  47 variable)
%            Maximal formula depth :   24 (  16 average)
%            Number of connectives :  109 (   0   ~;   0   |;  15   &;  94   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   0   !;  13   ?;   4   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    1 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_cR: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_R: $real,V_a: $real,V_c: $real,V_Cir: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_Cir )
        & ( V_R
          = ( '2d.radius-of/1' @ V_Cir ) )
        & ( ( $product @ 60.0 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) )
        & ( ( $product @ 45.0 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) )
        & ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( V_a = 3.0 )
        & ( V_c
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( V_cR
          = ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_R @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_AC: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_R: $real,V_a: $real,V_Cir: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_Cir )
        & ( V_R
          = ( '2d.radius-of/1' @ V_Cir ) )
        & ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( V_a
          = ( 'sqrt/1' @ 2.0 ) )
        & ( ( $product @ 50.0 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) )
        & ( V_R = 1.0 )
        & ( V_AC
          = ( 'cons/2' @ $real @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) @ ( 'cons/2' @ $real @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_cR_dot_0: ( 'ListOf' @ $real )] :
      ( V_cR_dot_0
      = ( 'cons/2' @ $real @ ( 'sqrt/1' @ 6.0 ) @ ( 'cons/2' @ $real @ ( 'sqrt/1' @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_AC_dot_0: ( 'ListOf' @ $real )] :
      ( V_AC_dot_0
      = ( 'cons/2' @ $real @ ( $product @ 45.0 @ 'Degree/0' ) @ ( 'cons/2' @ $real @ ( $product @ 85.0 @ 'Degree/0' ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p2_question,[])).

