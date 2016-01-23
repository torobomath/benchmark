%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE120
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  140 (  15 equality;  40 variable)
%            Maximal formula depth :   20 (  13 average)
%            Number of connectives :  110 (   0   ~;   0   |;  12   &;  98   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   24 (   0 sgn;   0   !;  18   ?;   6   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_x: 'R',V_y: 'R',V_z: 'R'] :
        ( ( V_A
          = ( '3d.point/3' @ -3 @ 0 @ 4 ) )
        & ( V_B
          = ( '3d.point/3' @ V_x @ V_y @ V_z ) )
        & ( V_C
          = ( '3d.point/3' @ 5 @ -1 @ 2 ) )
        & ( '3d.divide-internally/4' @ ( '3d.point/3' @ -1 @ 1 @ 3 ) @ ( '3d.seg/2' @ V_A @ V_B ) @ 1 @ 2 )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_x: 'R',V_y: 'R',V_z: 'R'] :
        ( ( V_A
          = ( '3d.point/3' @ -3 @ 0 @ 4 ) )
        & ( V_B
          = ( '3d.point/3' @ V_x @ V_y @ V_z ) )
        & ( V_C
          = ( '3d.point/3' @ 5 @ -1 @ 2 ) )
        & ( '3d.divide-externally/4' @ ( '3d.point/3' @ -3 @ -6 @ 4 ) @ ( '3d.seg/2' @ V_A @ V_B ) @ 3 @ 4 )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_x: 'R',V_y: 'R',V_z: 'R'] :
        ( ( V_A
          = ( '3d.point/3' @ -3 @ 0 @ 4 ) )
        & ( V_B
          = ( '3d.point/3' @ V_x @ V_y @ V_z ) )
        & ( V_C
          = ( '3d.point/3' @ 5 @ -1 @ 2 ) )
        & ( '3d.is-center-of-gravity-of/2' @ ( '3d.point/3' @ 1 @ 1 @ 3 ) @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 3 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ -3 @ ( 'cons/2' @ 2 @ ( 'cons/2' @ 4 @ 'nil/0' ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 1 @ ( 'cons/2' @ 4 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) ) ),
    answer_to(p3_question,[])).
