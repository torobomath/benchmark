%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2C007
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   27 (   4 equality;   8 variable)
%            Maximal formula depth :   13 (   9 average)
%            Number of connectives :   17 (   0   ~;   0   |;   3   &;  14   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_G: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 1 @ 3 ) )
        & ( V_B
          = ( '2d.point/2' @ 4 @ -3 ) )
        & ( V_C
          = ( '2d.point/2' @ 7 @ 6 ) )
        & ( '2d.is-center-of-gravity-of/2' @ V_G @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) )).

thf(p_answer,answer,(
    ^ [V_G_dot_0: '2d.Point'] :
      ( V_G_dot_0
      = ( '2d.point/2' @ 4 @ 2 ) ) ),
    answer_to(p_question,[])).
