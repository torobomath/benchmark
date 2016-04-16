%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE119
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  156 (  10 equality;  56 variable)
%            Maximal formula depth :   27 (  16 average)
%            Number of connectives :  134 (   0   ~;   0   |;  16   &; 118   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   0   !;  16   ?;   4   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    1 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_b1: $real,V_b2: $real,V_b3: $real,V_c1: $real,V_c2: $real,V_c3: $real] :
        ( ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ 1.0 @ 0.0 @ 0.0 ) )
        & ( V_B
          = ( '3d.point/3' @ V_b1 @ V_b2 @ V_b3 ) )
        & ( V_C
          = ( '3d.point/3' @ V_c1 @ V_c2 @ V_c3 ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_b1 @ ( 'cons/2' @ $real @ V_b2 @ ( 'cons/2' @ $real @ V_b3 @ ( 'cons/2' @ $real @ V_c1 @ ( 'cons/2' @ $real @ V_c2 @ ( 'cons/2' @ $real @ V_c3 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( 1.0
          = ( '3d.distance/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_B @ '3d.xy-plane/0' )
        & ( $less @ 0.0 @ V_c1 )
        & ( $less @ 0.0 @ V_c2 )
        & ( $less @ 0.0 @ V_c3 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_costheta: $real] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point'] :
        ( ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( 1.0
          = ( '3d.distance/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_P @ ( '3d.line/2' @ V_A @ V_B ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.line/2' @ V_B @ V_C ) )
        & ( '3d.is-angle-bisector/2' @ ( '3d.line/2' @ V_O @ V_P ) @ ( '3d.angle/3' @ V_A @ V_O @ V_B ) )
        & ( '3d.is-angle-bisector/2' @ ( '3d.line/2' @ V_O @ V_Q ) @ ( '3d.angle/3' @ V_B @ V_O @ V_C ) )
        & ( V_costheta
          = ( '3d.cos-of-angle/1' @ ( '3d.angle-of-vectors/2' @ ( '3d.vec/2' @ V_O @ V_P ) @ ( '3d.vec/2' @ V_O @ V_Q ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 6.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_costheta_dot_0: $real] :
      ( V_costheta_dot_0
      = ( $quotient @ 5.0 @ 6.0 ) ) ),
    answer_to(p2_question,[])).

