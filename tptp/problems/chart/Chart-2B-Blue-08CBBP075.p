%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP075
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  212 (  24 equality;  89 variable)
%            Maximal formula depth :   32 (  18 average)
%            Number of connectives :  164 (   0   ~;   0   |;  28   &; 135   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   1   :;   0   =)
%            Number of variables   :   33 (   0 sgn;   4   !;  25   ?;   4   ^)
%                                         (  33   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    3 func;    3 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_c1: $real,V_c2: $real,V_d1: $real,V_d2: $real] :
        ( ( V_P
          = ( '2d.internally-dividing-point/3' @ V_O @ V_A @ 't/0' ) )
        & ( V_Q
          = ( '2d.internally-dividing-point/3' @ V_A @ V_B @ 't/0' ) )
        & ( V_R
          = ( '2d.internally-dividing-point/3' @ V_B @ V_O @ 't/0' ) )
        & ( V_a
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( $less @ 0.0 @ 't/0' )
        & ( $less @ 't/0' @ 1.0 )
        & ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( ( '2d.vec/2' @ V_P @ V_Q )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_c1 @ V_a ) @ ( '2d.sv*/2' @ V_c2 @ V_b ) ) )
        & ( ( '2d.vec/2' @ V_P @ V_R )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_d1 @ V_a ) @ ( '2d.sv*/2' @ V_d2 @ V_b ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_c1 @ ( 'cons/2' @ $real @ V_c2 @ ( 'cons/2' @ $real @ V_d1 @ ( 'cons/2' @ $real @ V_d2 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_OA: $real,V_OB: $real,V_AB: $real] :
        ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_OA
          = ( '2d.distance/2' @ V_O @ V_A ) )
        & ( V_OB
          = ( '2d.distance/2' @ V_O @ V_B ) )
        & ( V_AB
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_OA @ ( 'cons/2' @ $real @ V_OB @ ( 'cons/2' @ $real @ V_AB @ ( 'nil/0' @ $real ) ) ) ) )
        & ! [V_t: $real,V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
            ( ( ( $less @ 0.0 @ V_t )
              & ( $less @ V_t @ 1.0 )
              & ( V_P
                = ( '2d.internally-dividing-point/3' @ V_O @ V_A @ V_t ) )
              & ( V_Q
                = ( '2d.internally-dividing-point/3' @ V_A @ V_B @ V_t ) )
              & ( V_R
                = ( '2d.internally-dividing-point/3' @ V_B @ V_O @ V_t ) ) )
           => ( ( $product @ V_OA @ ( '2d.distance/2' @ V_P @ V_Q ) )
              = ( $product @ V_OB @ ( '2d.distance/2' @ V_P @ V_R ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_c1_dot_0: $real,V_c2_dot_0: $real,V_d1_dot_0: $real,V_d2_dot_0: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_c1_dot_0 @ ( 'cons/2' @ $real @ V_c2_dot_0 @ ( 'cons/2' @ $real @ V_d1_dot_0 @ ( 'cons/2' @ $real @ V_d2_dot_0 @ ( 'nil/0' @ $real ) ) ) ) ) )
      & ( $less @ 0.0 @ 't/0' )
      & ( $less @ 't/0' @ 1.0 )
      & ( ( $difference @ 1.0 @ ( $product @ 2.0 @ 't/0' ) )
        = V_c1_dot_0 )
      & ( 't/0' = V_c2_dot_0 )
      & ( ( $uminus @ 't/0' )
        = V_d1_dot_0 )
      & ( ( $difference @ 1.0 @ 't/0' )
        = V_d2_dot_0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_OA_dot_0: $real,V_OB_dot_0: $real,V_AB_dot_0: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_OA_dot_0 @ ( 'cons/2' @ $real @ V_OB_dot_0 @ ( 'cons/2' @ $real @ V_AB_dot_0 @ ( 'nil/0' @ $real ) ) ) ) )
      & ( $less @ 0.0 @ V_OA_dot_0 )
      & ( V_OA_dot_0 = V_OB_dot_0 )
      & ( V_OB_dot_0 = V_AB_dot_0 ) ) ),
    answer_to(p2_question,[])).

