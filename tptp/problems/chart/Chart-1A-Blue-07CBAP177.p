%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP177
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  200 (  10 equality; 116 variable)
%            Maximal formula depth :   36 (  19 average)
%            Number of connectives :  176 (   0   ~;   0   |;  26   &; 150   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   30 (   0 sgn;   0   !;  26   ?;   4   ^)
%                                         (  30   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_ratio: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_H: '2d.Point',V_I: '2d.Point',V_J: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_D
          = ( '2d.midpoint-of/2' @ V_A @ V_C ) )
        & ( '2d.divide-internally/4' @ V_E @ ( '2d.seg/2' @ V_A @ V_B ) @ 1 @ 2 )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_D ) @ ( '2d.line/2' @ V_C @ V_E ) @ V_F )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_F ) @ ( '2d.seg/2' @ V_B @ V_C ) @ V_G )
        & ( '2d.on/2' @ V_H @ ( '2d.line/2' @ V_A @ V_F ) )
        & ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ V_A @ V_G ) @ ( '2d.vec/2' @ V_A @ V_H ) )
        & ( '2d.point-outside-of/2' @ V_H @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_I
          = ( '2d.midpoint-of/2' @ V_H @ V_C ) )
        & ( V_J
          = ( '2d.midpoint-of/2' @ V_H @ V_B ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_I ) @ ( '2d.line/2' @ V_C @ V_J ) @ V_P )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_C @ V_J ) @ ( '2d.line/2' @ V_H @ V_G ) @ V_Q )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_H @ V_G ) @ ( '2d.line/2' @ V_B @ V_I ) @ V_R )
        & ( V_ratio
          = ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_G ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_G @ V_C ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ratio: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_H: '2d.Point',V_I: '2d.Point',V_J: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_D
          = ( '2d.midpoint-of/2' @ V_A @ V_C ) )
        & ( '2d.divide-internally/4' @ V_E @ ( '2d.seg/2' @ V_A @ V_B ) @ 1 @ 2 )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_D ) @ ( '2d.line/2' @ V_C @ V_E ) @ V_F )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_F ) @ ( '2d.seg/2' @ V_B @ V_C ) @ V_G )
        & ( '2d.on/2' @ V_H @ ( '2d.line/2' @ V_A @ V_F ) )
        & ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ V_A @ V_G ) @ ( '2d.vec/2' @ V_A @ V_H ) )
        & ( '2d.point-outside-of/2' @ V_H @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_I
          = ( '2d.midpoint-of/2' @ V_H @ V_C ) )
        & ( V_J
          = ( '2d.midpoint-of/2' @ V_H @ V_B ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_I ) @ ( '2d.line/2' @ V_C @ V_J ) @ V_P )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_C @ V_J ) @ ( '2d.line/2' @ V_H @ V_G ) @ V_Q )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_H @ V_G ) @ ( '2d.line/2' @ V_B @ V_I ) @ V_R )
        & ( V_ratio
          = ( '//2' @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_B @ V_C @ V_H ) ) @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_ratio_dot_0: 'R'] : ( V_ratio_dot_0 = 2 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ratio_dot_0: 'R'] : ( V_ratio_dot_0 = 60 ) ),
    answer_to(p2_question,[])).
