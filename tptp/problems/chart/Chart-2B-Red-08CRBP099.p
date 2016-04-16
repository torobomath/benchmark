%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP099
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  124 (  14 equality;  38 variable)
%            Maximal formula depth :   23 (  14 average)
%            Number of connectives :   94 (   0   ~;   0   |;  12   &;  82   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :;   0   =)
%            Number of variables   :   19 (   0 sgn;   0   !;  15   ?;   4   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   16 (   0 pred;    2 func;   14 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_P: '3d.Point',V_A: '3d.Point',V_d: '3d.Vector',V_g: '3d.Shape',V_H: '3d.Point',V_x: $real,V_y: $real,V_z: $real] :
        ( ( V_P
          = ( '3d.point/3' @ 1.0 @ 2.0 @ 6.0 ) )
        & ( V_A
          = ( '3d.point/3' @ 2.0 @ -6.0 @ -6.0 ) )
        & ( V_d
          = ( '3d.vec3d/3' @ 3.0 @ -2.0 @ 4.0 ) )
        & ( V_g
          = ( '3d.line/2' @ V_A @ ( '3d.vec-translate/2' @ V_A @ V_d ) ) )
        & ( V_H
          = ( '3d.foot-of-perpendicular-line-from-to/2' @ V_P @ V_g ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'cons/2' @ $real @ V_z @ ( 'nil/0' @ $real ) ) ) ) )
        & ( '3d.on/2' @ ( '3d.point/3' @ V_x @ V_y @ V_z ) @ ( '3d.line/2' @ V_P @ V_H ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '3d.Point'
    @ ^ [V_Q: '3d.Point'] :
      ? [V_P: '3d.Point',V_A: '3d.Point',V_d: '3d.Vector',V_g: '3d.Shape'] :
        ( ( V_P
          = ( '3d.point/3' @ 1.0 @ 2.0 @ 6.0 ) )
        & ( V_A
          = ( '3d.point/3' @ 2.0 @ -6.0 @ -6.0 ) )
        & ( V_d
          = ( '3d.vec3d/3' @ 3.0 @ -2.0 @ 4.0 ) )
        & ( V_g
          = ( '3d.line/2' @ V_A @ ( '3d.vec-translate/2' @ V_A @ V_d ) ) )
        & ( '3d.line-symmetry/3' @ V_P @ V_Q @ V_g ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_x_dot_0: $real,V_y_dot_0: $real,V_z_dot_0: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_x_dot_0 @ ( 'cons/2' @ $real @ V_y_dot_0 @ ( 'cons/2' @ $real @ V_z_dot_0 @ ( 'nil/0' @ $real ) ) ) ) )
      & ( 0.0
        = ( $sum @ ( $sum @ ( $product @ 5.0 @ V_x_dot_0 ) @ ( $product @ 2.0 @ V_y_dot_0 ) ) @ -9.0 ) )
      & ( 0.0
        = ( $sum @ ( $sum @ ( $product @ 2.0 @ V_x_dot_0 ) @ V_z_dot_0 ) @ -8.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_Q_dot_0: '3d.Point'] :
      ( V_Q_dot_0
      = ( '3d.point/3' @ 9.0 @ -18.0 @ -10.0 ) ) ),
    answer_to(p2_question,[])).

