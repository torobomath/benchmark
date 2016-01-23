%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CRBE027
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  163 (  22 equality;  53 variable)
%            Maximal formula depth :   25 (  13 average)
%            Number of connectives :  113 (   0   ~;   1   |;  18   &;  94   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   22 (   0 sgn;   0   !;  15   ?;   7   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_H: '3d.Point'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ 2 @ 1 @ 2 ) )
        & ( V_B
          = ( '3d.point/3' @ 6 @ 2 @ 2 ) )
        & ( V_C
          = ( '3d.point/3' @ 5 @ 7 @ 5 ) )
        & ( V_H
          = ( '3d.foot-of-perpendicular-line-from-to/2' @ V_C @ ( '3d.line/2' @ V_O @ V_A ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_D: '3d.Point'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_H: '3d.Point'] :
        ( ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ 2 @ 1 @ 2 ) )
        & ( V_B
          = ( '3d.point/3' @ 6 @ 2 @ 2 ) )
        & ( V_C
          = ( '3d.point/3' @ 5 @ 7 @ 5 ) )
        & ( V_H
          = ( '3d.foot-of-perpendicular-line-from-to/2' @ V_C @ ( '3d.line/2' @ V_O @ V_A ) ) )
        & ( 0
          = ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_D @ V_H ) @ ( '3d.vec/2' @ V_O @ V_H ) ) )
        & ( ( '3d.distance/2' @ V_D @ V_H )
          = ( '3d.distance/2' @ V_C @ V_H ) )
        & ( '3d.on/2' @ V_D @ ( '3d.plane1/3' @ V_O @ V_A @ V_B ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '3d.Point'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_min: 'R'] :
        ( ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ 2 @ 1 @ 2 ) )
        & ( V_B
          = ( '3d.point/3' @ 6 @ 2 @ 2 ) )
        & ( V_C
          = ( '3d.point/3' @ 5 @ 7 @ 5 ) )
        & ( V_min
          = ( '+/2' @ ( '3d.distance/2' @ V_B @ V_P ) @ ( '3d.distance/2' @ V_C @ V_P ) ) )
        & ( '3d.on/2' @ V_P @ ( '3d.line/2' @ V_O @ V_A ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_P0: '3d.Point'] :
                ( ( '3d.on/2' @ V_P0 @ ( '3d.line/2' @ V_O @ V_A ) )
                & ( V_v
                  = ( '+/2' @ ( '3d.distance/2' @ V_B @ V_P0 ) @ ( '3d.distance/2' @ V_C @ V_P0 ) ) ) ) )
          @ V_min ) ) )).

thf(p1_answer,answer,(
    ^ [V_H_dot_0: '3d.Point'] :
      ( V_H_dot_0
      = ( '3d.point/3' @ 6 @ 3 @ 6 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_D_dot_0: '3d.Point'] :
      ( ( V_D_dot_0
        = ( '3d.point/3' @ 9 @ 3 @ 3 ) )
      | ( V_D_dot_0
        = ( '3d.point/3' @ 3 @ 3 @ 9 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_P_dot_0: '3d.Point'] :
      ( V_P_dot_0
      = ( '3d.point/3' @ ( '//2' @ 24 @ 5 ) @ ( '//2' @ 12 @ 5 ) @ ( '//2' @ 24 @ 5 ) ) ) ),
    answer_to(p3_question,[])).
