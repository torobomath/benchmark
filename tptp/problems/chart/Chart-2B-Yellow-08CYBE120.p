%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE120
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  170 (  15 equality;  40 variable)
%            Maximal formula depth :   20 (  14 average)
%            Number of connectives :  140 (   0   ~;   0   |;  12   &; 128   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :   24 (   0 sgn;   0   !;  18   ?;   6   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    0 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_x: $real,V_y: $real,V_z: $real] :
        ( ( V_A
          = ( '3d.point/3' @ -3.0 @ 0.0 @ 4.0 ) )
        & ( V_B
          = ( '3d.point/3' @ V_x @ V_y @ V_z ) )
        & ( V_C
          = ( '3d.point/3' @ 5.0 @ -1.0 @ 2.0 ) )
        & ( '3d.divide-internally/4' @ ( '3d.point/3' @ -1.0 @ 1.0 @ 3.0 ) @ ( '3d.seg/2' @ V_A @ V_B ) @ 1.0 @ 2.0 )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'cons/2' @ $real @ V_z @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_x: $real,V_y: $real,V_z: $real] :
        ( ( V_A
          = ( '3d.point/3' @ -3.0 @ 0.0 @ 4.0 ) )
        & ( V_B
          = ( '3d.point/3' @ V_x @ V_y @ V_z ) )
        & ( V_C
          = ( '3d.point/3' @ 5.0 @ -1.0 @ 2.0 ) )
        & ( '3d.divide-externally/4' @ ( '3d.point/3' @ -3.0 @ -6.0 @ 4.0 ) @ ( '3d.seg/2' @ V_A @ V_B ) @ 3.0 @ 4.0 )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'cons/2' @ $real @ V_z @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_x: $real,V_y: $real,V_z: $real] :
        ( ( V_A
          = ( '3d.point/3' @ -3.0 @ 0.0 @ 4.0 ) )
        & ( V_B
          = ( '3d.point/3' @ V_x @ V_y @ V_z ) )
        & ( V_C
          = ( '3d.point/3' @ 5.0 @ -1.0 @ 2.0 ) )
        & ( '3d.is-center-of-gravity-of/2' @ ( '3d.point/3' @ 1.0 @ 1.0 @ 3.0 ) @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'cons/2' @ $real @ V_z @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ 3.0 @ ( 'cons/2' @ $real @ 3.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ -3.0 @ ( 'cons/2' @ $real @ 2.0 @ ( 'cons/2' @ $real @ 4.0 @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 4.0 @ ( 'cons/2' @ $real @ 3.0 @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p3_question,[])).

