%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE168
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   95 (   8 equality;  40 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   75 (   0   ~;   0   |;   9   &;  66   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   0 pred;    1 func;    3 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_A: '2d.Point',V_P: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_Q: '2d.Point'] :
        ( ( '2d.points-same-side/2' @ ( '2d.line/2' @ V_A @ V_B ) @ ( 'cons/2' @ '2d.Point' @ V_C @ ( 'cons/2' @ '2d.Point' @ V_D @ ( 'nil/0' @ '2d.Point' ) ) ) )
        & ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_C @ V_B ) @ ( '2d.seg/2' @ V_D @ V_A ) @ V_Q )
        & ( ( $product @ 40.0 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_P @ V_A ) ) )
        & ( ( $product @ 40.0 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_P @ V_B ) ) )
        & ( V_x
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_Q @ V_B ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_y: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_M: '2d.Point'] :
        ( ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( ( $product @ 40.0 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_E @ V_M @ V_D ) ) )
        & ( V_y
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_E @ V_A @ V_D ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( V_x_dot_0
      = ( $product @ 140.0 @ 'Degree/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_y_dot_0: $real] :
      ( V_y_dot_0
      = ( $product @ 70.0 @ 'Degree/0' ) ) ),
    answer_to(p2_question,[])).

