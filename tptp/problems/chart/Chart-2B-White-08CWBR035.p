%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B White Book, Problem 08CWBR035
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   64 (  11 equality;  20 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   38 (   0   ~;   0   |;   7   &;  31   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   11 (   0 sgn;   0   !;   7   ?;   4   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
      ? [V_A: '2d.Point',V_l: '2d.Shape',V_H: '2d.Point',V_n: '2d.Vector'] :
        ( ( V_A
          = ( '2d.point/2' @ 3 @ 1 ) )
        & ( V_l
          = ( '2d.line2d/3' @ 1 @ 2 @ -3 ) )
        & ( V_H
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_A @ V_l ) )
        & ( V_n
          = ( '2d.vec2d/2' @ 1 @ 2 ) )
        & ( ( '2d.vec/2' @ V_A @ V_H )
          = ( '2d.sv*/2' @ V_k @ V_n ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
      ? [V_A: '2d.Point',V_l: '2d.Shape',V_H: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 3 @ 1 ) )
        & ( V_l
          = ( '2d.line2d/3' @ 1 @ 2 @ -3 ) )
        & ( V_H
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_A @ V_l ) )
        & ( V_d
          = ( '2d.point-shape-distance/2' @ V_A @ V_l ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_k_dot_0: 'R'] :
      ( V_k_dot_0
      = ( '//2' @ -8 @ 5 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_d_dot_0: 'R'] :
      ( V_d_dot_0
      = ( '//2' @ ( '*/2' @ 8 @ ( 'sqrt/1' @ 5 ) ) @ 5 ) ) ),
    answer_to(p2_question,[])).
