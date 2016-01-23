%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B White Book, Problem 08CWBE120
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  285 (  32 equality; 143 variable)
%            Maximal formula depth :   38 (  21 average)
%            Number of connectives :  219 (   0   ~;   0   |;  45   &; 174   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :)
%            Number of variables   :   55 (   0 sgn;   0   !;  33   ?;   8   ^)
%                                         (  41   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_M: '3d.Point',V_N: '3d.Point'] :
        ( ( V_a
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ V_O @ V_B ) )
        & ( V_c
          = ( '3d.vec/2' @ V_O @ V_C ) )
        & ( V_answer
          = ( 'cons/2' @ V_u @ ( 'cons/2' @ V_v @ ( 'cons/2' @ V_w @ 'nil/0' ) ) ) )
        & ( '</2' @ 0 @ V_x )
        & ( '</2' @ 0 @ V_y )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( 1
          = ( '3d.distance/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_M @ ( '3d.seg/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_N @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_O @ V_M ) )
          = V_x )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_B @ V_N ) )
          = V_y )
        & ( ( '3d.vec/2' @ V_M @ V_N )
          = ( '3d.v+/2' @ ( '3d.v+/2' @ ( '3d.sv*/2' @ V_u @ V_a ) @ ( '3d.sv*/2' @ V_v @ V_b ) ) @ ( '3d.sv*/2' @ V_w @ V_c ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_M: '3d.Point',V_N: '3d.Point',V_min: 'R'] :
        ( ( V_a
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ V_O @ V_B ) )
        & ( V_c
          = ( '3d.vec/2' @ V_O @ V_C ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '</2' @ 0 @ V_x )
        & ( '</2' @ 0 @ V_y )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( 1
          = ( '3d.distance/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_M @ ( '3d.seg/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_N @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_O @ V_M ) )
          = V_x )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_B @ V_N ) )
          = V_y )
        & ( V_min
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_M @ V_N ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_M0: '3d.Point',V_N0: '3d.Point'] :
                ( ( '3d.on/2' @ V_M0 @ ( '3d.seg/2' @ V_O @ V_A ) )
                & ( '3d.on/2' @ V_N0 @ ( '3d.seg/2' @ V_B @ V_C ) )
                & ( V_v
                  = ( '3d.radius/1' @ ( '3d.vec/2' @ V_M0 @ V_N0 ) ) ) ) )
          @ V_min ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_cos: 'R'] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_M: '3d.Point',V_N: '3d.Point',V_min: 'R'] :
        ( ( V_a
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ V_O @ V_B ) )
        & ( V_c
          = ( '3d.vec/2' @ V_O @ V_C ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( 1
          = ( '3d.distance/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_M @ ( '3d.seg/2' @ V_O @ V_A ) )
        & ( '3d.on/2' @ V_N @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( V_min
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_M @ V_N ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_M0: '3d.Point',V_N0: '3d.Point'] :
                ( ( '3d.on/2' @ V_M0 @ ( '3d.seg/2' @ V_O @ V_A ) )
                & ( '3d.on/2' @ V_N0 @ ( '3d.seg/2' @ V_B @ V_C ) )
                & ( V_v
                  = ( '3d.radius/1' @ ( '3d.vec/2' @ V_M0 @ V_N0 ) ) ) ) )
          @ V_min )
        & ( V_cos
          = ( '3d.cos-of-angle/1' @ ( '3d.angle-of-vectors/2' @ ( '3d.vec/2' @ V_O @ V_C ) @ ( '3d.vec/2' @ V_M @ V_N ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_u @ ( 'cons/2' @ V_v @ ( 'cons/2' @ V_w @ 'nil/0' ) ) ) )
      & ( '</2' @ 0 @ V_x )
      & ( '</2' @ 0 @ V_y )
      & ( V_u
        = ( '-/1' @ V_x ) )
      & ( V_v
        = ( '-/2' @ 1 @ V_y ) )
      & ( V_w = V_y ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( V_x
        = ( '//2' @ 1 @ 2 ) )
      & ( V_y
        = ( '//2' @ 1 @ 2 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_cos_dot_0: 'R'] :
      ( V_cos_dot_0
      = ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p3_question,[])).
