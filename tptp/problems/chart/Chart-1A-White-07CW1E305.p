%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E305
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  170 (  14 equality;  86 variable)
%            Maximal formula depth :   18 (  15 average)
%            Number of connectives :  142 (   0   ~;   0   |;  24   &; 118   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   22 (   0 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_a
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( V_b
          = ( '2d.distance/2' @ V_C @ V_A ) )
        & ( V_c
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( ( '*/2' @ V_a @ ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) )
          = ( '*/2' @ V_b @ ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_a
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( V_b
          = ( '2d.distance/2' @ V_C @ V_A ) )
        & ( V_c
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( ( '*/2' @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) @ ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) )
          = ( '2d.sin-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) )
      & ( '</2' @ 0 @ V_a )
      & ( '</2' @ 0 @ V_b )
      & ( '</2' @ 0 @ V_c )
      & ( '</2' @ V_a @ ( '+/2' @ V_b @ V_c ) )
      & ( '</2' @ V_b @ ( '+/2' @ V_c @ V_a ) )
      & ( '</2' @ V_c @ ( '+/2' @ V_a @ V_b ) )
      & ( V_a = V_b ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) )
      & ( '</2' @ 0 @ V_a )
      & ( '</2' @ 0 @ V_b )
      & ( '</2' @ 0 @ V_c )
      & ( '</2' @ V_a @ ( '+/2' @ V_b @ V_c ) )
      & ( '</2' @ V_b @ ( '+/2' @ V_c @ V_a ) )
      & ( '</2' @ V_c @ ( '+/2' @ V_a @ V_b ) )
      & ( ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) )
        = ( '^/2' @ V_c @ 2 ) ) ) ),
    answer_to(p2_question,[])).
