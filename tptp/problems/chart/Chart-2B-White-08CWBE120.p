%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B White Book, Problem 08CWBE120
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    8 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  300 (  32 equality; 124 variable)
%            Maximal formula depth :   36 (  17 average)
%            Number of connectives :  234 (   0   ~;   0   |;  43   &; 191   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   2   :;   0   =)
%            Number of variables   :   47 (   0 sgn;   0   !;  39   ?;   8   ^)
%                                         (  47   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    3 func;    3 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_M: '3d.Point',V_N: '3d.Point',V_u: $real,V_v: $real,V_w: $real] :
        ( ( V_a
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ V_O @ V_B ) )
        & ( V_c
          = ( '3d.vec/2' @ V_O @ V_C ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_u @ ( 'cons/2' @ $real @ V_v @ ( 'cons/2' @ $real @ V_w @ ( 'nil/0' @ $real ) ) ) ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( 1.0
          = ( '3d.distance/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_M @ ( '3d.seg/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_N @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_O @ V_M ) )
          = 'x/0' )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_B @ V_N ) )
          = 'y/0' )
        & ( ( '3d.vec/2' @ V_M @ V_N )
          = ( '3d.v+/2' @ ( '3d.v+/2' @ ( '3d.sv*/2' @ V_u @ V_a ) @ ( '3d.sv*/2' @ V_v @ V_b ) ) @ ( '3d.sv*/2' @ V_w @ V_c ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_M: '3d.Point',V_N: '3d.Point',V_min: $real] :
        ( ( V_a
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ V_O @ V_B ) )
        & ( V_c
          = ( '3d.vec/2' @ V_O @ V_C ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( 1.0
          = ( '3d.distance/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_M @ ( '3d.seg/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_N @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_O @ V_M ) )
          = 'x/0' )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_B @ V_N ) )
          = 'y/0' )
        & ( V_min
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_M @ V_N ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_M0: '3d.Point',V_N0: '3d.Point'] :
                ( ( '3d.on/2' @ V_M0 @ ( '3d.seg/2' @ V_O @ V_A ) )
                & ( '3d.on/2' @ V_N0 @ ( '3d.seg/2' @ V_B @ V_C ) )
                & ( V_v
                  = ( '3d.radius/1' @ ( '3d.vec/2' @ V_M0 @ V_N0 ) ) ) ) )
          @ V_min ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_cos: $real] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_M: '3d.Point',V_N: '3d.Point',V_min: $real] :
        ( ( V_a
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ V_O @ V_B ) )
        & ( V_c
          = ( '3d.vec/2' @ V_O @ V_C ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( 1.0
          = ( '3d.distance/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_M @ ( '3d.seg/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_N @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( V_min
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_M @ V_N ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_M0: '3d.Point',V_N0: '3d.Point'] :
                ( ( '3d.on/2' @ V_M0 @ ( '3d.seg/2' @ V_O @ V_A ) )
                & ( '3d.on/2' @ V_N0 @ ( '3d.seg/2' @ V_B @ V_C ) )
                & ( V_v
                  = ( '3d.radius/1' @ ( '3d.vec/2' @ V_M0 @ V_N0 ) ) ) ) )
          @ V_min )
        & ( V_cos
          = ( '3d.cos-of-angle/1' @ ( '3d.angle-of-vectors/2' @ ( '3d.vec/2' @ V_O @ V_C ) @ ( '3d.vec/2' @ V_M @ V_N ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_u_dot_0: $real,V_v_dot_0: $real,V_w_dot_0: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_u_dot_0 @ ( 'cons/2' @ $real @ V_v_dot_0 @ ( 'cons/2' @ $real @ V_w_dot_0 @ ( 'nil/0' @ $real ) ) ) ) )
      & ( $lesseq @ 0.0 @ 'x/0' )
      & ( $lesseq @ 'x/0' @ 1.0 )
      & ( $lesseq @ 0.0 @ 'y/0' )
      & ( $lesseq @ 'y/0' @ 1.0 )
      & ( V_u_dot_0
        = ( $uminus @ 'x/0' ) )
      & ( V_v_dot_0
        = ( $difference @ 1.0 @ 'y/0' ) )
      & ( V_w_dot_0 = 'y/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'x/0'
        = ( $quotient @ 1.0 @ 2.0 ) )
      & ( 'y/0'
        = ( $quotient @ 1.0 @ 2.0 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_cos_dot_0: $real] :
      ( V_cos_dot_0
      = ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p3_question,[])).

