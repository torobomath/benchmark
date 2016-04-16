%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2R066
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  119 (  13 equality;  22 variable)
%            Maximal formula depth :   18 (  10 average)
%            Number of connectives :   95 (   2   ~;   0   |;  13   &;  80   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   2   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   8   ?;   4   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   0 pred;    3 func;    8 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_l: '2d.Shape',V_l0: '2d.Shape',V_P: '2d.Point'] :
        ( ( V_l
          = ( '2d.line/2' @ ( '2d.point/2' @ 1.0 @ -3.0 ) @ V_P ) )
        & ( V_l0
          = ( '2d.line2d/3' @ 6.0 @ 3.0 @ 5.0 ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( V_P
         != ( '2d.point/2' @ 1.0 @ -3.0 ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ V_l )
        & ( '2d.parallel/2' @ V_l @ V_l0 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_l: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 0.0 @ 6.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 4.0 @ 4.0 ) )
        & ( V_l
          = ( '2d.line/2' @ V_P @ V_Q ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( V_P != V_Q )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ V_l )
        & ( '2d.is-perp-bisector/2' @ V_l @ ( '2d.seg/2' @ V_A @ V_B ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 0.0
        = ( $sum @ ( $sum @ ( $product @ 2.0 @ 'x/0' ) @ 'y/0' ) @ 1.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 0.0
        = ( $sum @ ( $sum @ ( $product @ 2.0 @ 'x/0' ) @ ( $uminus @ 'y/0' ) ) @ 1.0 ) ) ) ),
    answer_to(p2_question,[])).

