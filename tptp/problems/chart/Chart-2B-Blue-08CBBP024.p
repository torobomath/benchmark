%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP024
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   71 (   9 equality;  22 variable)
%            Maximal formula depth :   15 (  10 average)
%            Number of connectives :   49 (   0   ~;   0   |;   5   &;  44   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :   11 (   0 sgn;   0   !;   7   ?;   4   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( ( '2d.vec2d/2' @ 2 @ 1 )
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( ( '2d.vec2d/2' @ V_x @ 1 )
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle-of-vectors/2' @ ( '2d.vec/2' @ V_O @ V_A ) @ ( '2d.vec/2' @ V_O @ V_B ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_H: '2d.Point',V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( V_H
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_B @ ( '2d.line/2' @ V_O @ V_A ) ) )
        & ( ( '2d.vec2d/2' @ 2 @ 1 )
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( ( '2d.vec2d/2' @ V_x @ 1 )
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( ( '2d.vec2d/2' @ ( '//2' @ -1 @ 2 ) @ ( '//2' @ -1 @ 4 ) )
          = ( '2d.vec/2' @ V_A @ V_H ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '//2' @ 1 @ 3 )
      = V_x_dot_0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '//2' @ 11 @ 8 )
      = V_x_dot_0 ) ),
    answer_to(p2_question,[])).
