%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE117
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  182 (  14 equality;  77 variable)
%            Maximal formula depth :   33 (  18 average)
%            Number of connectives :  154 (   0   ~;   0   |;  16   &; 138   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   26 (   0 sgn;   0   !;  22   ?;   4   ^)
%                                         (  26   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    1 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_s: $real,V_t: $real] :
        ( ( V_a
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ V_O @ V_B ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_s @ ( 'cons/2' @ $real @ V_t @ ( 'nil/0' @ $real ) ) ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( '3d.on/2' @ V_P @ ( '3d.plane1/3' @ V_O @ V_A @ V_B ) )
        & ( ( '3d.sv*/2' @ 3.0 @ ( '3d.vec/2' @ V_O @ V_P ) )
          = ( '3d.v+/2' @ ( '3d.sv*/2' @ 2.0 @ ( '3d.vec/2' @ V_A @ V_P ) ) @ ( '3d.vec/2' @ V_P @ V_B ) ) )
        & ( ( '3d.vec/2' @ V_O @ V_P )
          = ( '3d.v+/2' @ ( '3d.sv*/2' @ V_s @ V_a ) @ ( '3d.sv*/2' @ V_t @ V_b ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_G: '3d.Point',V_Q: '3d.Point',V_s: $real,V_t: $real,V_u: $real] :
        ( ( V_O
          = ( '3d.point/3' @ 0.0 @ 0.0 @ 0.0 ) )
        & ( V_a
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ V_O @ V_B ) )
        & ( V_c
          = ( '3d.vec/2' @ V_O @ V_C ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_s @ ( 'cons/2' @ $real @ V_t @ ( 'cons/2' @ $real @ V_u @ ( 'nil/0' @ $real ) ) ) ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( '3d.on/2' @ V_P @ ( '3d.plane1/3' @ V_O @ V_A @ V_B ) )
        & ( ( '3d.sv*/2' @ 3.0 @ ( '3d.vec/2' @ V_O @ V_P ) )
          = ( '3d.v+/2' @ ( '3d.sv*/2' @ 2.0 @ ( '3d.vec/2' @ V_A @ V_P ) ) @ ( '3d.vec/2' @ V_P @ V_B ) ) )
        & ( '3d.is-center-of-gravity-of/2' @ V_G @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '3d.intersect/3' @ ( '3d.line/2' @ V_G @ V_P ) @ ( '3d.plane1/3' @ V_O @ V_B @ V_C ) @ V_Q )
        & ( ( '3d.vec/2' @ V_O @ V_Q )
          = ( '3d.v+/2' @ ( '3d.v+/2' @ ( '3d.sv*/2' @ V_s @ V_a ) @ ( '3d.sv*/2' @ V_t @ V_b ) ) @ ( '3d.sv*/2' @ V_u @ V_c ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 3.0 @ 8.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 4.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p2_question,[])).

