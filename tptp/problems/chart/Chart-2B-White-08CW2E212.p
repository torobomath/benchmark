%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E212
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  173 (  13 equality;  55 variable)
%            Maximal formula depth :   26 (  12 average)
%            Number of connectives :  149 (   2   ~;   0   |;  29   &; 118   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   2   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    2 func;    5 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_F: '2d.Shape',V_Q: '2d.Point',V_R: '2d.Point',V_P: '2d.Point',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 4.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( V_Q != V_R )
        & ( '2d.on/2' @ V_Q @ V_F )
        & ( '2d.on/2' @ V_R @ V_F )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.on/2' @ V_Q @ V_l1 )
        & ( '2d.on/2' @ V_R @ V_l2 )
        & ( '2d.tangent/3' @ V_F @ V_l1 @ V_Q )
        & ( '2d.tangent/3' @ V_F @ V_l2 @ V_R )
        & ( '2d.perpendicular/2' @ V_l1 @ V_l2 )
        & ( '2d.on/2' @ V_P @ V_l1 )
        & ( '2d.on/2' @ V_P @ V_l2 )
        & ( ( '2d.point/2' @ 'x/0' @ 'y/0' )
          = V_P ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_F: '2d.Shape',V_M: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 4.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( V_Q != V_R )
        & ( '2d.on/2' @ V_Q @ V_F )
        & ( '2d.on/2' @ V_R @ V_F )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.on/2' @ V_Q @ V_l1 )
        & ( '2d.on/2' @ V_R @ V_l2 )
        & ( '2d.tangent/3' @ V_F @ V_l1 @ V_Q )
        & ( '2d.tangent/3' @ V_F @ V_l2 @ V_R )
        & ( '2d.perpendicular/2' @ V_l1 @ V_l2 )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_Q @ V_R ) )
        & ( ( '2d.point/2' @ 'x/0' @ 'y/0' )
          = V_M ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'y/0' = -1.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'y/0'
        = ( $sum @ ( $quotient @ ( '^/2' @ 'x/0' @ 2.0 ) @ 2.0 ) @ 1.0 ) ) ) ),
    answer_to(p2_question,[])).

