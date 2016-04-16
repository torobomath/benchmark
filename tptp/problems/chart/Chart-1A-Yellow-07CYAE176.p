%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE176
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :   84 (   7 equality;  38 variable)
%            Maximal formula depth :   29 (  11 average)
%            Number of connectives :   70 (   2   ~;   0   |;  15   &;  53   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   2   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   0   !;   9   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   2 pred;    2 func;    2 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_CirO: '2d.Shape',V_B: '2d.Point',V_CirB: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_A: '2d.Point',V_E: '2d.Point'] :
        ( ( '2d.circle-type/1' @ V_CirO )
        & ( '2d.circle-type/1' @ V_CirB )
        & ( V_B
          = ( '2d.center-of/1' @ V_CirB ) )
        & ( V_P != V_Q )
        & ( '2d.intersect/3' @ V_CirO @ V_CirB @ V_P )
        & ( '2d.intersect/3' @ V_CirO @ V_CirB @ V_Q )
        & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_F @ V_G ) @ V_CirB )
        & ( V_A != V_B )
        & ( '2d.intersect/3' @ V_CirO @ ( '2d.seg/2' @ V_F @ V_G ) @ V_A )
        & ( '2d.intersect/3' @ V_CirO @ ( '2d.seg/2' @ V_F @ V_G ) @ V_B )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_P @ V_Q ) @ ( '2d.line/2' @ V_F @ V_G ) @ V_E )
        & ( V_x
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_A ) ) )
        & ( 'a/0'
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( 'b/0'
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_G ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $lesseq @ 'a/0' @ 'b/0' )
      & ( V_x_dot_0
        = ( $quotient @ ( $difference @ ( '^/2' @ 'b/0' @ 2.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ 'a/0' ) ) ) ),
    answer_to(p_question,[])).

