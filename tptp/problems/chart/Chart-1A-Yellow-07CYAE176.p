%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE176
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   83 (   7 equality;  46 variable)
%            Maximal formula depth :   29 (  20 average)
%            Number of connectives :   69 (   2   ~;   0   |;  15   &;  52   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :   15 (   2 sgn;   0   !;   9   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
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
        & ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( V_b
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_G ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '<=/2' @ V_a @ V_b )
      & ( V_x_dot_0
        = ( '//2' @ ( '-/2' @ ( '^/2' @ V_b @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) @ V_a ) ) ) ),
    answer_to(p_question,[])).
