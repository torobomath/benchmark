%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P230
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  307 (  24 equality; 130 variable)
%            Maximal formula depth :   27 (  24 average)
%            Number of connectives :  255 (   0   ~;   0   |;  40   &; 215   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :   32 (   0 sgn;   0   !;  16   ?;   4   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_PQ: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_L: '3d.Point',V_M: '3d.Point',V_N: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point'] :
        ( ( '3d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '*/2' @ 2 @ V_a )
          = ( '3d.distance/2' @ V_B @ V_C ) )
        & ( ( '*/2' @ 2 @ V_b )
          = ( '3d.distance/2' @ V_C @ V_A ) )
        & ( ( '*/2' @ 2 @ V_c )
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( V_a
          = ( '3d.distance/2' @ V_L @ V_D ) )
        & ( V_b
          = ( '3d.distance/2' @ V_M @ V_D ) )
        & ( V_c
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
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_L: '3d.Point',V_M: '3d.Point',V_N: '3d.Point'] :
        ( ( '3d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '*/2' @ 2 @ V_a )
          = ( '3d.distance/2' @ V_B @ V_C ) )
        & ( ( '*/2' @ 2 @ V_b )
          = ( '3d.distance/2' @ V_C @ V_A ) )
        & ( ( '*/2' @ 2 @ V_c )
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( V_a
          = ( '3d.distance/2' @ V_L @ V_D ) )
        & ( V_b
          = ( '3d.distance/2' @ V_M @ V_D ) )
        & ( V_c
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
    ^ [V_PQ_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '</2' @ 0 @ V_b )
      & ( '</2' @ 0 @ V_c )
      & ( '</2' @ V_a @ ( '+/2' @ V_b @ V_c ) )
      & ( '</2' @ V_b @ ( '+/2' @ V_c @ V_a ) )
      & ( '</2' @ V_c @ ( '+/2' @ V_a @ V_b ) )
      & ( '</2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) )
      & ( '</2' @ ( '^/2' @ V_b @ 2 ) @ ( '+/2' @ ( '^/2' @ V_c @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) )
      & ( '</2' @ ( '^/2' @ V_c @ 2 ) @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) )
      & ( V_PQ_dot_0
        = ( 'sqrt/1' @ ( '//2' @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ ( '-/2' @ ( '^/2' @ V_c @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) ) @ 2 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '</2' @ 0 @ V_b )
      & ( '</2' @ 0 @ V_c )
      & ( '</2' @ V_a @ ( '+/2' @ V_b @ V_c ) )
      & ( '</2' @ V_b @ ( '+/2' @ V_c @ V_a ) )
      & ( '</2' @ V_c @ ( '+/2' @ V_a @ V_b ) )
      & ( '</2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) )
      & ( '</2' @ ( '^/2' @ V_b @ 2 ) @ ( '+/2' @ ( '^/2' @ V_c @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) )
      & ( '</2' @ ( '^/2' @ V_c @ 2 ) @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) )
      & ( V_V_dot_0
        = ( '//2' @ ( 'sqrt/1' @ ( '*/2' @ 2 @ ( '*/2' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '-/2' @ ( '^/2' @ V_b @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) ) @ ( '*/2' @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ ( '-/2' @ ( '^/2' @ V_c @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) ) @ ( '+/2' @ ( '^/2' @ V_c @ 2 ) @ ( '-/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) ) ) ) ) ) @ 12 ) ) ) ),
    answer_to(p2_question,[])).
