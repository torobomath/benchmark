%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE062
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    6 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  184 (  16 equality;  73 variable)
%            Maximal formula depth :   27 (  12 average)
%            Number of connectives :  149 (   0   ~;   0   |;  29   &; 119   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   33 (   3   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   8   !;  10   ?;   2   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    4 func;    5 numbers)

include('axioms.ax').

thf('a_a/0_type',type,(
    'a_a/0': $real )).

thf('a_b/0_type',type,(
    'a_b/0': $real )).

thf('b_b/0_type',type,(
    'b_b/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_s: $real] :
      ? [V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_D
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_E
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( V_F
          = ( '2d.internally-dividing-point/3' @ V_A @ V_C @ V_s ) )
        & ( 'a_a/0'
          = ( '2d.inner-prod/2' @ V_a @ V_a ) )
        & ( 'a_b/0'
          = ( '2d.inner-prod/2' @ V_a @ V_b ) )
        & ( 'b_b/0'
          = ( '2d.inner-prod/2' @ V_b @ V_b ) )
        & ( $less @ 0.0 @ V_s )
        & ( $less @ V_s @ 1.0 )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( V_a
          = ( '2d.vec/2' @ V_A @ V_B ) )
        & ( V_b
          = ( '2d.vec/2' @ V_A @ V_C ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_D @ V_F ) @ ( '2d.line/2' @ V_A @ V_E ) ) ) )).

thf(p2,conjecture,(
    ! [V_s: $real,V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point'] :
      ( ( ( V_D
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_E
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( V_F
          = ( '2d.internally-dividing-point/3' @ V_A @ V_C @ V_s ) )
        & ( $less @ 0.0 @ V_s )
        & ( $less @ V_s @ 1.0 )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_D @ V_F ) @ ( '2d.line/2' @ V_A @ V_E ) @ V_P )
        & ( '2d.divide-internally/4' @ V_P @ ( '2d.seg/2' @ V_A @ V_E ) @ 3.0 @ 2.0 ) )
     => ( '2d.zero-vector/0'
        = ( '2d.v+/2' @ ( '2d.v+/2' @ ( '2d.sv*/2' @ 4.0 @ ( '2d.vec/2' @ V_P @ V_A ) ) @ ( '2d.sv*/2' @ 3.0 @ ( '2d.vec/2' @ V_P @ V_B ) ) ) @ ( '2d.sv*/2' @ 3.0 @ ( '2d.vec/2' @ V_P @ V_C ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_s_dot_0: $real] :
    ? [V_a_dot_0: '2d.Vector',V_b_dot_0: '2d.Vector'] :
      ( ( $less @ 0.0 @ 'a_a/0' )
      & ( $less @ 0.0 @ 'a_b/0' )
      & ( $less @ 0.0 @ 'b_b/0' )
      & ( $less @ ( '^/2' @ 'a_b/0' @ 2.0 ) @ ( $product @ 'a_a/0' @ 'b_b/0' ) )
      & ( $less @ ( $difference @ 'a_a/0' @ ( $product @ 2.0 @ 'b_b/0' ) ) @ 'a_b/0' )
      & ( $less @ 'a_b/0' @ ( $product @ 2.0 @ 'b_b/0' ) )
      & ( 'a_a/0'
        = ( '2d.inner-prod/2' @ V_a_dot_0 @ V_a_dot_0 ) )
      & ( 'a_b/0'
        = ( '2d.inner-prod/2' @ V_a_dot_0 @ V_b_dot_0 ) )
      & ( 'b_b/0'
        = ( '2d.inner-prod/2' @ V_b_dot_0 @ V_b_dot_0 ) )
      & ( V_s_dot_0
        = ( $quotient @ ( $sum @ 'a_a/0' @ 'a_b/0' ) @ ( $product @ 2.0 @ ( $sum @ 'b_b/0' @ 'a_b/0' ) ) ) ) ) ),
    answer_to(p1_question,[])).

