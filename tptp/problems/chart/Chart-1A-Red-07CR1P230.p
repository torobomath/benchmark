%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P230
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    7 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  309 (  24 equality;  64 variable)
%            Maximal formula depth :   27 (  15 average)
%            Number of connectives :  257 (   0   ~;   0   |;  40   &; 217   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   3   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   0   !;  16   ?;   4   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    4 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_PQ: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_L: '3d.Point',V_M: '3d.Point',V_N: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point'] :
        ( ( '3d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( $product @ 2.0 @ 'a/0' )
          = ( '3d.distance/2' @ V_B @ V_C ) )
        & ( ( $product @ 2.0 @ 'b/0' )
          = ( '3d.distance/2' @ V_C @ V_A ) )
        & ( ( $product @ 2.0 @ 'c/0' )
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 'a/0'
          = ( '3d.distance/2' @ V_L @ V_D ) )
        & ( 'b/0'
          = ( '3d.distance/2' @ V_M @ V_D ) )
        & ( 'c/0'
          = ( '3d.distance/2' @ V_N @ V_D ) )
        & ( V_L
          = ( '3d.midpoint-of/2' @ V_B @ V_C ) )
        & ( V_M
          = ( '3d.midpoint-of/2' @ V_C @ V_A ) )
        & ( V_N
          = ( '3d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_P
          = ( '3d.midpoint-of/2' @ V_M @ V_N ) )
        & ( V_Q
          = ( '3d.midpoint-of/2' @ V_D @ V_L ) )
        & ( V_PQ
          = ( '3d.distance/2' @ V_P @ V_Q ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_L: '3d.Point',V_M: '3d.Point',V_N: '3d.Point'] :
        ( ( '3d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( $product @ 2.0 @ 'a/0' )
          = ( '3d.distance/2' @ V_B @ V_C ) )
        & ( ( $product @ 2.0 @ 'b/0' )
          = ( '3d.distance/2' @ V_C @ V_A ) )
        & ( ( $product @ 2.0 @ 'c/0' )
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 'a/0'
          = ( '3d.distance/2' @ V_L @ V_D ) )
        & ( 'b/0'
          = ( '3d.distance/2' @ V_M @ V_D ) )
        & ( 'c/0'
          = ( '3d.distance/2' @ V_N @ V_D ) )
        & ( V_L
          = ( '3d.midpoint-of/2' @ V_B @ V_C ) )
        & ( V_M
          = ( '3d.midpoint-of/2' @ V_C @ V_A ) )
        & ( V_N
          = ( '3d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_L @ V_M @ V_N @ V_D ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_PQ_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 0.0 @ 'b/0' )
      & ( $less @ 0.0 @ 'c/0' )
      & ( $less @ 'a/0' @ ( $sum @ 'b/0' @ 'c/0' ) )
      & ( $less @ 'b/0' @ ( $sum @ 'c/0' @ 'a/0' ) )
      & ( $less @ 'c/0' @ ( $sum @ 'a/0' @ 'b/0' ) )
      & ( $less @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $sum @ ( '^/2' @ 'b/0' @ 2.0 ) @ ( '^/2' @ 'c/0' @ 2.0 ) ) )
      & ( $less @ ( '^/2' @ 'b/0' @ 2.0 ) @ ( $sum @ ( '^/2' @ 'c/0' @ 2.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) )
      & ( $less @ ( '^/2' @ 'c/0' @ 2.0 ) @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) )
      & ( V_PQ_dot_0
        = ( 'sqrt/1' @ ( $quotient @ ( $sum @ ( '^/2' @ 'b/0' @ 2.0 ) @ ( $difference @ ( '^/2' @ 'c/0' @ 2.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) @ 2.0 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 0.0 @ 'b/0' )
      & ( $less @ 0.0 @ 'c/0' )
      & ( $less @ 'a/0' @ ( $sum @ 'b/0' @ 'c/0' ) )
      & ( $less @ 'b/0' @ ( $sum @ 'c/0' @ 'a/0' ) )
      & ( $less @ 'c/0' @ ( $sum @ 'a/0' @ 'b/0' ) )
      & ( $less @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $sum @ ( '^/2' @ 'b/0' @ 2.0 ) @ ( '^/2' @ 'c/0' @ 2.0 ) ) )
      & ( $less @ ( '^/2' @ 'b/0' @ 2.0 ) @ ( $sum @ ( '^/2' @ 'c/0' @ 2.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) )
      & ( $less @ ( '^/2' @ 'c/0' @ 2.0 ) @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) )
      & ( V_V_dot_0
        = ( $quotient @ ( 'sqrt/1' @ ( $product @ 2.0 @ ( $product @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $difference @ ( '^/2' @ 'b/0' @ 2.0 ) @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) @ ( $product @ ( $sum @ ( '^/2' @ 'b/0' @ 2.0 ) @ ( $difference @ ( '^/2' @ 'c/0' @ 2.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) @ ( $sum @ ( '^/2' @ 'c/0' @ 2.0 ) @ ( $difference @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) ) ) ) ) @ 12.0 ) ) ) ),
    answer_to(p2_question,[])).

