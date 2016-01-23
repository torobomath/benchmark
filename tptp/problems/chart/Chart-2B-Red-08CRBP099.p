%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP099
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  113 (  14 equality;  38 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :   83 (   0   ~;   0   |;  12   &;  71   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :)
%            Number of variables   :   19 (   0 sgn;   0   !;  15   ?;   4   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_P: '3d.Point',V_A: '3d.Point',V_d: '3d.Vector',V_g: '3d.Shape',V_H: '3d.Point',V_x: 'R',V_y: 'R',V_z: 'R'] :
        ( ( V_P
          = ( '3d.point/3' @ 1 @ 2 @ 6 ) )
        & ( V_A
          = ( '3d.point/3' @ 2 @ -6 @ -6 ) )
        & ( V_d
          = ( '3d.vec3d/3' @ 3 @ -2 @ 4 ) )
        & ( V_g
          = ( '3d.line/2' @ V_A @ ( '3d.vec-translate/2' @ V_A @ V_d ) ) )
        & ( V_H
          = ( '3d.foot-of-perpendicular-line-from-to/2' @ V_P @ V_g ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
        & ( '3d.on/2' @ ( '3d.point/3' @ V_x @ V_y @ V_z ) @ ( '3d.line/2' @ V_P @ V_H ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_Q: '3d.Point'] :
      ? [V_P: '3d.Point',V_A: '3d.Point',V_d: '3d.Vector',V_g: '3d.Shape'] :
        ( ( V_P
          = ( '3d.point/3' @ 1 @ 2 @ 6 ) )
        & ( V_A
          = ( '3d.point/3' @ 2 @ -6 @ -6 ) )
        & ( V_d
          = ( '3d.vec3d/3' @ 3 @ -2 @ 4 ) )
        & ( V_g
          = ( '3d.line/2' @ V_A @ ( '3d.vec-translate/2' @ V_A @ V_d ) ) )
        & ( '3d.line-symmetry/3' @ V_P @ V_Q @ V_g ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
    ? [V_x_dot_0: 'R',V_y_dot_0: 'R',V_z_dot_0: 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x_dot_0 @ ( 'cons/2' @ V_y_dot_0 @ ( 'cons/2' @ V_z_dot_0 @ 'nil/0' ) ) ) )
      & ( 0
        = ( '+/2' @ ( '+/2' @ ( '*/2' @ 5 @ V_x_dot_0 ) @ ( '*/2' @ 2 @ V_y_dot_0 ) ) @ -9 ) )
      & ( 0
        = ( '+/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_x_dot_0 ) @ V_z_dot_0 ) @ -8 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_Q_dot_0: '3d.Point'] :
      ( V_Q_dot_0
      = ( '3d.point/3' @ 9 @ -18 @ -10 ) ) ),
    answer_to(p2_question,[])).
