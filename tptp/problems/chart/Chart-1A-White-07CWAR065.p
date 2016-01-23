%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR065
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  107 (  11 equality;  45 variable)
%            Maximal formula depth :   15 (  10 average)
%            Number of connectives :   79 (   0   ~;   0   |;   9   &;  70   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   18 (   0 sgn;   0   !;  12   ?;   6   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_alpha: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point'] :
        ( ( '2d.is-circumcenter-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( ( '*/2' @ 50 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) )
        & ( ( '*/2' @ 20 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_O ) ) )
        & ( V_alpha
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_O ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_alpha: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point'] :
        ( ( '2d.is-circumcenter-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_O @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( ( '*/2' @ 35 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_O ) ) )
        & ( V_alpha
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_O @ V_C ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_alpha: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_I: '2d.Point'] :
        ( ( '2d.is-incenter-of/2' @ V_I @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( ( '*/2' @ 70 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) )
        & ( ( '*/2' @ 30 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_I ) ) )
        & ( V_alpha
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_I @ V_C ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_alpha_dot_0: 'R'] :
      ( V_alpha_dot_0
      = ( '*/2' @ 40 @ 'Degree/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_alpha_dot_0: 'R'] :
      ( V_alpha_dot_0
      = ( '*/2' @ 70 @ 'Degree/0' ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_alpha_dot_0: 'R'] :
      ( V_alpha_dot_0
      = ( '*/2' @ 125 @ 'Degree/0' ) ) ),
    answer_to(p3_question,[])).
