%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE196
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  248 (  20 equality; 105 variable)
%            Maximal formula depth :   31 (  19 average)
%            Number of connectives :  216 (   8   ~;   0   |;  37   &; 171   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :   21 (   0 sgn;   0   !;  17   ?;   4   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    2 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_s: $real,V_t: $real] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( V_A != V_D )
        & ( V_B != V_D )
        & ( V_A != V_E )
        & ( V_C != V_E )
        & ( ( $product @ ( '^/2' @ 3.0 @ 2.0 ) @ ( '2d.distance^2/2' @ V_A @ V_D ) )
          = ( $product @ ( '^/2' @ 2.0 @ 2.0 ) @ ( '2d.distance^2/2' @ V_A @ V_E ) ) )
        & ( ( '2d.distance^2/2' @ V_B @ V_D )
          = ( $product @ ( '^/2' @ 3.0 @ 2.0 ) @ ( '2d.distance^2/2' @ V_C @ V_E ) ) )
        & ? [V_circle: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_circle )
            & ( '2d.on/2' @ V_B @ V_circle )
            & ( '2d.on/2' @ V_C @ V_circle )
            & ( '2d.on/2' @ V_E @ V_circle )
            & ( '2d.on/2' @ V_D @ V_circle ) )
        & ( $less @ 0.0 @ V_s )
        & ( $less @ 0.0 @ V_t )
        & ( ( '2d.distance^2/2' @ V_A @ V_D )
          = ( $product @ ( '^/2' @ V_s @ 2.0 ) @ ( '2d.distance^2/2' @ V_B @ V_D ) ) )
        & ( ( '2d.distance^2/2' @ V_A @ V_B )
          = ( $product @ ( '^/2' @ V_t @ 2.0 ) @ ( '2d.distance^2/2' @ V_A @ V_C ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_s @ ( 'cons/2' @ $real @ V_t @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_s: $real,V_t: $real] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( V_A != V_D )
        & ( V_B != V_D )
        & ( V_A != V_E )
        & ( V_C != V_E )
        & ( ( $product @ ( '^/2' @ 3.0 @ 2.0 ) @ ( '2d.distance^2/2' @ V_A @ V_D ) )
          = ( $product @ ( '^/2' @ 2.0 @ 2.0 ) @ ( '2d.distance^2/2' @ V_A @ V_E ) ) )
        & ( ( '2d.distance^2/2' @ V_B @ V_D )
          = ( $product @ ( '^/2' @ 3.0 @ 2.0 ) @ ( '2d.distance^2/2' @ V_C @ V_E ) ) )
        & ? [V_circle: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_circle )
            & ( '2d.on/2' @ V_B @ V_circle )
            & ( '2d.on/2' @ V_C @ V_circle )
            & ( '2d.on/2' @ V_E @ V_circle )
            & ( '2d.on/2' @ V_D @ V_circle ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_D @ V_E ) @ ( '2d.line/2' @ V_B @ V_C ) @ V_F )
        & ( $less @ 0.0 @ V_s )
        & ( $less @ 0.0 @ V_t )
        & ( ( '2d.distance^2/2' @ V_B @ V_C )
          = ( $product @ ( '^/2' @ V_s @ 2.0 ) @ ( '2d.distance^2/2' @ V_C @ V_F ) ) )
        & ( ( '2d.distance^2/2' @ V_D @ V_E )
          = ( $product @ ( '^/2' @ V_t @ 2.0 ) @ ( '2d.distance^2/2' @ V_E @ V_F ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_s @ ( 'cons/2' @ $real @ V_t @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 2.0 @ 5.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 3.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 7.0 @ 2.0 ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p2_question,[])).

