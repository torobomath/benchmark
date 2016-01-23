%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E122
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   74 (   8 equality;  26 variable)
%            Maximal formula depth :   27 (  18 average)
%            Number of connectives :   58 (   0   ~;   0   |;   6   &;  52   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   11 (   0 sgn;   0   !;   8   ?;   3   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_min: 'R',V_x: 'R',V_y: 'R'] :
        ( ( V_A
          = ( '2d.point/2' @ 0 @ 0 ) )
        & ( V_B
          = ( '2d.point/2' @ 2 @ 5 ) )
        & ( V_C
          = ( '2d.point/2' @ 6 @ 0 ) )
        & ( V_min
          = ( '+/2' @ ( '+/2' @ ( '2d.distance^2/2' @ V_P @ V_A ) @ ( '2d.distance^2/2' @ V_P @ V_B ) ) @ ( '2d.distance^2/2' @ V_P @ V_C ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_P0: '2d.Point'] :
                ( V_v
                = ( '+/2' @ ( '+/2' @ ( '2d.distance^2/2' @ V_P0 @ V_A ) @ ( '2d.distance^2/2' @ V_P0 @ V_B ) ) @ ( '2d.distance^2/2' @ V_P0 @ V_C ) ) ) )
          @ V_min )
        & ( ( '2d.point/2' @ V_x @ V_y )
          = V_P )
        & ( V_answer
          = ( 'cons/2' @ V_min @ ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ ( '//2' @ 106 @ 3 ) @ ( 'cons/2' @ ( '//2' @ 8 @ 3 ) @ ( 'cons/2' @ ( '//2' @ 5 @ 3 ) @ 'nil/0' ) ) ) ) ),
    answer_to(p_question,[])).
