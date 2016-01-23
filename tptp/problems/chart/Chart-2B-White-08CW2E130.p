%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E130
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   99 (  15 equality;  26 variable)
%            Maximal formula depth :   13 (   8 average)
%            Number of connectives :   61 (   0   ~;   0   |;   9   &;  52   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   17 (   0 sgn;   0   !;   9   ?;   8   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ -2 @ -3 ) )
        & ( V_B
          = ( '2d.point/2' @ 3 @ 7 ) )
        & ( V_P
          = ( '2d.internally-dividing-point/3' @ V_A @ V_B @ ( '//2' @ 4 @ 5 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_B
          = ( '2d.point/2' @ 3 @ 7 ) )
        & ( V_C
          = ( '2d.point/2' @ 5 @ 2 ) )
        & ( '2d.divide-externally/4' @ V_P @ ( '2d.seg/2' @ V_B @ V_C ) @ 2 @ 3 ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_A: '2d.Point',V_C: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ -2 @ -3 ) )
        & ( V_C
          = ( '2d.point/2' @ 5 @ 2 ) )
        & ( V_P
          = ( '2d.midpoint-of/2' @ V_C @ V_A ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_G: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ -2 @ -3 ) )
        & ( V_B
          = ( '2d.point/2' @ 3 @ 7 ) )
        & ( V_C
          = ( '2d.point/2' @ 5 @ 2 ) )
        & ( '2d.is-center-of-gravity-of/2' @ V_G @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ 2 @ 5 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ -1 @ 17 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ ( '//2' @ 3 @ 2 ) @ ( '//2' @ -1 @ 2 ) ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_G_dot_0: '2d.Point'] :
      ( V_G_dot_0
      = ( '2d.point/2' @ 2 @ 2 ) ) ),
    answer_to(p4_question,[])).
