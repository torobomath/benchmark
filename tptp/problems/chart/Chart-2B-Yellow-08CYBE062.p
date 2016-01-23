%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE062
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  151 (  14 equality;  79 variable)
%            Maximal formula depth :   26 (  20 average)
%            Number of connectives :  120 (   0   ~;   0   |;  21   &;  98   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :)
%            Number of variables   :   28 (   8 sgn;   8   !;  10   ?;   2   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_s: 'R'] :
      ? [V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_D
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_E
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( V_F
          = ( '2d.internally-dividing-point/3' @ V_A @ V_C @ V_s ) )
        & ( V_a
          = ( '2d.vec2d/2' @ V_a1 @ V_a2 ) )
        & ( V_b
          = ( '2d.vec2d/2' @ V_b1 @ V_b2 ) )
        & ( '</2' @ 0 @ V_s )
        & ( '</2' @ V_s @ 1 )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( V_a
          = ( '2d.vec/2' @ V_A @ V_B ) )
        & ( V_b
          = ( '2d.vec/2' @ V_A @ V_C ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_D @ V_F ) @ ( '2d.line/2' @ V_A @ V_E ) ) ) )).

thf(p2,conjecture,(
    ! [V_s: 'R',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point'] :
      ( ( ( V_D
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_E
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( V_F
          = ( '2d.internally-dividing-point/3' @ V_A @ V_C @ V_s ) )
        & ( '</2' @ 0 @ V_s )
        & ( '</2' @ V_s @ 1 )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_D @ V_F ) @ ( '2d.line/2' @ V_A @ V_E ) @ V_P )
        & ( '2d.divide-internally/4' @ V_P @ ( '2d.seg/2' @ V_A @ V_E ) @ 3 @ 2 ) )
     => ( '2d.zero-vector/0'
        = ( '2d.v+/2' @ ( '2d.v+/2' @ ( '2d.sv*/2' @ 4 @ ( '2d.vec/2' @ V_P @ V_A ) ) @ ( '2d.sv*/2' @ 3 @ ( '2d.vec/2' @ V_P @ V_B ) ) ) @ ( '2d.sv*/2' @ 3 @ ( '2d.vec/2' @ V_P @ V_C ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_s_dot_0: 'R'] :
    ? [V_a_dot_0: '2d.Vector',V_b_dot_0: '2d.Vector'] :
      ( ( V_a_dot_0
        = ( '2d.vec2d/2' @ V_a1 @ V_a2 ) )
      & ( V_b_dot_0
        = ( '2d.vec2d/2' @ V_b1 @ V_b2 ) )
      & ( V_s_dot_0
        = ( '//2' @ ( '+/2' @ ( '2d.radius^2/1' @ V_a_dot_0 ) @ ( '2d.inner-prod/2' @ V_a_dot_0 @ V_b_dot_0 ) ) @ ( '*/2' @ 2 @ ( '+/2' @ ( '2d.radius^2/1' @ V_b_dot_0 ) @ ( '2d.inner-prod/2' @ V_a_dot_0 @ V_b_dot_0 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).
