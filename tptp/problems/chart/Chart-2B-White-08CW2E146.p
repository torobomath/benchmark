%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E146
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  166 (  14 equality;  45 variable)
%            Maximal formula depth :   25 (  12 average)
%            Number of connectives :  138 (   0   ~;   0   |;  15   &; 123   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   2   :;   0   =)
%            Number of variables   :   23 (   0 sgn;   0   !;  19   ?;   4   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    3 func;    7 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_x1: $real,V_x2: $real,V_x3: $real,V_y1: $real,V_y2: $real,V_y3: $real] :
        ( ( V_A
          = ( '2d.point/2' @ 4.0 @ 7.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 1.0 @ 2.0 ) )
        & ( V_C
          = ( '2d.point/2' @ 4.0 @ 3.0 ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_x1 @ ( 'cons/2' @ $real @ V_y1 @ ( 'cons/2' @ $real @ V_x2 @ ( 'cons/2' @ $real @ V_y2 @ ( 'cons/2' @ $real @ V_x3 @ ( 'cons/2' @ $real @ V_y3 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x1 @ V_y1 ) @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x2 @ V_y2 ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x3 @ V_y3 ) @ ( '2d.line/2' @ V_C @ V_A ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_G: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 4.0 @ 7.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 1.0 @ 2.0 ) )
        & ( V_C
          = ( '2d.point/2' @ 4.0 @ 3.0 ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.is-center-of-gravity-of/2' @ V_G @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.line/2' @ V_A @ V_G ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_x10: $real,V_x20: $real,V_x30: $real,V_y10: $real,V_y20: $real,V_y30: $real] :
      ( ( V_y10
        = ( $sum @ ( $product @ ( $quotient @ 5.0 @ 3.0 ) @ V_x10 ) @ ( $quotient @ 1.0 @ 3.0 ) ) )
      & ( V_y20
        = ( $sum @ ( $product @ ( $quotient @ 1.0 @ 3.0 ) @ V_x20 ) @ ( $quotient @ 5.0 @ 3.0 ) ) )
      & ( V_x30 = 4.0 )
      & ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_x10 @ ( 'cons/2' @ $real @ V_y10 @ ( 'cons/2' @ $real @ V_x20 @ ( 'cons/2' @ $real @ V_y20 @ ( 'cons/2' @ $real @ V_x30 @ ( 'cons/2' @ $real @ V_y30 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'y/0'
        = ( $sum @ ( $product @ 3.0 @ 'x/0' ) @ -5.0 ) ) ) ),
    answer_to(p2_question,[])).

