%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE117
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  164 (  14 equality;  77 variable)
%            Maximal formula depth :   33 (  18 average)
%            Number of connectives :  136 (   0   ~;   0   |;  16   &; 120   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   26 (   0 sgn;   0   !;  22   ?;   4   ^)
%                                         (  26   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_s: 'R',V_t: 'R'] :
        ( ( V_a
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ V_O @ V_B ) )
        & ( V_answer
          = ( 'cons/2' @ V_s @ ( 'cons/2' @ V_t @ 'nil/0' ) ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( '3d.on/2' @ V_P @ ( '3d.plane1/3' @ V_O @ V_A @ V_B ) )
        & ( ( '3d.sv*/2' @ 3 @ ( '3d.vec/2' @ V_O @ V_P ) )
          = ( '3d.v+/2' @ ( '3d.sv*/2' @ 2 @ ( '3d.vec/2' @ V_A @ V_P ) ) @ ( '3d.vec/2' @ V_P @ V_B ) ) )
        & ( ( '3d.vec/2' @ V_O @ V_P )
          = ( '3d.v+/2' @ ( '3d.sv*/2' @ V_s @ V_a ) @ ( '3d.sv*/2' @ V_t @ V_b ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_G: '3d.Point',V_Q: '3d.Point',V_s: 'R',V_t: 'R',V_u: 'R'] :
        ( ( V_O
          = ( '3d.point/3' @ 0 @ 0 @ 0 ) )
        & ( V_a
          = ( '3d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '3d.vec/2' @ V_O @ V_B ) )
        & ( V_c
          = ( '3d.vec/2' @ V_O @ V_C ) )
        & ( V_answer
          = ( 'cons/2' @ V_s @ ( 'cons/2' @ V_t @ ( 'cons/2' @ V_u @ 'nil/0' ) ) ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( '3d.on/2' @ V_P @ ( '3d.plane1/3' @ V_O @ V_A @ V_B ) )
        & ( ( '3d.sv*/2' @ 3 @ ( '3d.vec/2' @ V_O @ V_P ) )
          = ( '3d.v+/2' @ ( '3d.sv*/2' @ 2 @ ( '3d.vec/2' @ V_A @ V_P ) ) @ ( '3d.vec/2' @ V_P @ V_B ) ) )
        & ( '3d.is-center-of-gravity-of/2' @ V_G @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '3d.intersect/3' @ ( '3d.line/2' @ V_G @ V_P ) @ ( '3d.plane1/3' @ V_O @ V_B @ V_C ) @ V_Q )
        & ( ( '3d.vec/2' @ V_O @ V_Q )
          = ( '3d.v+/2' @ ( '3d.v+/2' @ ( '3d.sv*/2' @ V_s @ V_a ) @ ( '3d.sv*/2' @ V_t @ V_b ) ) @ ( '3d.sv*/2' @ V_u @ V_c ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ -1 @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 3 @ 8 ) @ ( 'cons/2' @ ( '//2' @ 1 @ 4 ) @ 'nil/0' ) ) ) ) ),
    answer_to(p2_question,[])).
