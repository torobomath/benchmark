%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP075
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  190 (  24 equality; 100 variable)
%            Maximal formula depth :   31 (  20 average)
%            Number of connectives :  142 (   0   ~;   0   |;  28   &; 113   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   35 (   0 sgn;   4   !;  22   ?;   4   ^)
%                                         (  30   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_c1: 'R',V_c2: 'R',V_d1: 'R',V_d2: 'R'] :
        ( ( V_P
          = ( '2d.internally-dividing-point/3' @ V_O @ V_A @ V_t ) )
        & ( V_Q
          = ( '2d.internally-dividing-point/3' @ V_A @ V_B @ V_t ) )
        & ( V_R
          = ( '2d.internally-dividing-point/3' @ V_B @ V_O @ V_t ) )
        & ( V_a
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( '</2' @ 0 @ V_t )
        & ( '</2' @ V_t @ 1 )
        & ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( ( '2d.vec/2' @ V_P @ V_Q )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_c1 @ V_a ) @ ( '2d.sv*/2' @ V_c2 @ V_b ) ) )
        & ( ( '2d.vec/2' @ V_P @ V_R )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_d1 @ V_a ) @ ( '2d.sv*/2' @ V_d2 @ V_b ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_c1 @ ( 'cons/2' @ V_c2 @ ( 'cons/2' @ V_d1 @ ( 'cons/2' @ V_d2 @ 'nil/0' ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_OA_dot_0: 'R',V_OB_dot_0: 'R',V_AB_dot_0: 'R'] :
        ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_OA_dot_0
          = ( '2d.distance/2' @ V_O @ V_A ) )
        & ( V_OB_dot_0
          = ( '2d.distance/2' @ V_O @ V_B ) )
        & ( V_AB_dot_0
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( V_answer
          = ( 'cons/2' @ V_OA_dot_0 @ ( 'cons/2' @ V_OB_dot_0 @ ( 'cons/2' @ V_AB_dot_0 @ 'nil/0' ) ) ) )
        & ! [V_t: 'R',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
            ( ( ( '</2' @ 0 @ V_t )
              & ( '</2' @ V_t @ 1 )
              & ( V_P
                = ( '2d.internally-dividing-point/3' @ V_O @ V_A @ V_t ) )
              & ( V_Q
                = ( '2d.internally-dividing-point/3' @ V_A @ V_B @ V_t ) )
              & ( V_R
                = ( '2d.internally-dividing-point/3' @ V_B @ V_O @ V_t ) ) )
           => ( ( '*/2' @ V_OA_dot_0 @ ( '2d.distance/2' @ V_P @ V_Q ) )
              = ( '*/2' @ V_OB_dot_0 @ ( '2d.distance/2' @ V_P @ V_R ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
    ? [V_c1_dot_0: 'R',V_c2_dot_0: 'R',V_d1_dot_0: 'R',V_d2_dot_0: 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_c1_dot_0 @ ( 'cons/2' @ V_c2_dot_0 @ ( 'cons/2' @ V_d1_dot_0 @ ( 'cons/2' @ V_d2_dot_0 @ 'nil/0' ) ) ) ) )
      & ( '</2' @ 0 @ V_t )
      & ( '</2' @ V_t @ 1 )
      & ( ( '-/2' @ 1 @ ( '*/2' @ 2 @ V_t ) )
        = V_c1_dot_0 )
      & ( V_t = V_c2_dot_0 )
      & ( ( '-/1' @ V_t )
        = V_d1_dot_0 )
      & ( ( '-/2' @ 1 @ V_t )
        = V_d2_dot_0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_OA @ ( 'cons/2' @ V_OB @ ( 'cons/2' @ V_AB @ 'nil/0' ) ) ) )
      & ( '</2' @ 0 @ V_OA )
      & ( V_OA = V_OB )
      & ( V_OB = V_AB ) ) ),
    answer_to(p2_question,[])).
