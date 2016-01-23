%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP141
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  100 (  17 equality;  28 variable)
%            Maximal formula depth :   17 (  10 average)
%            Number of connectives :   60 (   0   ~;   0   |;  11   &;  49   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   17 (   0 sgn;   0   !;  11   ?;   6   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_A
          = ( '3d.point/3' @ 2 @ -2 @ -1 ) )
        & ( V_B
          = ( '3d.point/3' @ -1 @ 2 @ 2 ) )
        & ( V_C
          = ( '3d.point/3' @ -1 @ -2 @ 0 ) )
        & ( V_S
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ 2 @ -2 @ -1 ) )
        & ( V_B
          = ( '3d.point/3' @ -1 @ 2 @ 2 ) )
        & ( V_C
          = ( '3d.point/3' @ -1 @ -2 @ 0 ) )
        & ( V_d
          = ( '3d.point-shape-distance/2' @ V_O @ ( '3d.extend-to-plane/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ 2 @ -2 @ -1 ) )
        & ( V_B
          = ( '3d.point/3' @ -1 @ 2 @ 2 ) )
        & ( V_C
          = ( '3d.point/3' @ -1 @ -2 @ 0 ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_O @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] : ( V_S_dot_0 = 7 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_d_dot_0: 'R'] :
      ( V_d_dot_0
      = ( '//2' @ 4 @ 7 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '//2' @ 4 @ 3 ) ) ),
    answer_to(p3_question,[])).
