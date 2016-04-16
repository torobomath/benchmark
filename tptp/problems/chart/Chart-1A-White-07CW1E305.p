%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E305
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    7 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  190 (  14 equality;  37 variable)
%            Maximal formula depth :   18 (  10 average)
%            Number of connectives :  162 (   0   ~;   0   |;  24   &; 138   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   3   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    2 func;    2 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( 'a/0'
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( 'b/0'
          = ( '2d.distance/2' @ V_C @ V_A ) )
        & ( 'c/0'
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( ( $product @ 'a/0' @ ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) )
          = ( $product @ 'b/0' @ ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'c/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( 'a/0'
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( 'b/0'
          = ( '2d.distance/2' @ V_C @ V_A ) )
        & ( 'c/0'
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( ( $product @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) @ ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) )
          = ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'c/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'c/0' @ ( 'nil/0' @ $real ) ) ) ) )
      & ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 0.0 @ 'b/0' )
      & ( $less @ 0.0 @ 'c/0' )
      & ( $less @ 'a/0' @ ( $sum @ 'b/0' @ 'c/0' ) )
      & ( $less @ 'b/0' @ ( $sum @ 'c/0' @ 'a/0' ) )
      & ( $less @ 'c/0' @ ( $sum @ 'a/0' @ 'b/0' ) )
      & ( 'a/0' = 'b/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'c/0' @ ( 'nil/0' @ $real ) ) ) ) )
      & ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 0.0 @ 'b/0' )
      & ( $less @ 0.0 @ 'c/0' )
      & ( $less @ 'a/0' @ ( $sum @ 'b/0' @ 'c/0' ) )
      & ( $less @ 'b/0' @ ( $sum @ 'c/0' @ 'a/0' ) )
      & ( $less @ 'c/0' @ ( $sum @ 'a/0' @ 'b/0' ) )
      & ( ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) )
        = ( '^/2' @ 'c/0' @ 2.0 ) ) ) ),
    answer_to(p2_question,[])).

