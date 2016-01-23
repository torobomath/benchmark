%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P143
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   58 (   7 equality;  23 variable)
%            Maximal formula depth :   15 (  12 average)
%            Number of connectives :   44 (   0   ~;   0   |;   7   &;  37   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   11 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_g: '2d.Shape',V_F: '2d.Point',V_P: '2d.Point'] :
        ( ( V_g
          = ( '2d.line/2' @ ( '2d.point/2' @ 0 @ ( '-/1' @ V_p ) ) @ ( '2d.point/2' @ 1 @ ( '-/1' @ V_p ) ) ) )
        & ( V_F
          = ( '2d.point/2' @ 0 @ V_p ) )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( '</2' @ 0 @ V_p )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( ( '2d.point-shape-distance^2/2' @ V_P @ V_g )
          = ( '2d.distance^2/2' @ V_P @ V_F ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( '</2' @ 0 @ V_p )
      & ( V_y
        = ( '//2' @ ( '^/2' @ V_x @ 2 ) @ ( '*/2' @ 4 @ V_p ) ) ) ) ),
    answer_to(p_question,[])).
