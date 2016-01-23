%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2001, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-21
%%
%% <PROBLEM-TEXT>
%% In a triangle ABC, let AP bisect angle(BAC), with P on BC,
%% and let BQ bisect angle(ABC), with Q on CA.
%% It is known that angle(BAC) = 60 Degree and that AB + BP = AQ + QB.
%% What are the possible angles of triangle ABC?
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   95 (   4 equality;  41 variable)
%            Maximal formula depth :   24 (  18 average)
%            Number of connectives :   87 (   0   ~;   0   |;   7   &;  80   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   5   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_angles: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_A @ V_P ) @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ V_C @ V_A ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_B @ V_Q ) @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
          = ( '//2' @ 'Pi/0' @ 3 ) )
        & ( ( '+/2' @ ( '2d.distance/2' @ V_A @ V_B ) @ ( '2d.distance/2' @ V_B @ V_P ) )
          = ( '+/2' @ ( '2d.distance/2' @ V_A @ V_Q ) @ ( '2d.distance/2' @ V_Q @ V_B ) ) )
        & ( V_angles
          = ( 'cons/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) @ ( 'cons/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) @ ( 'cons/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) @ 'nil/0' ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_angles_dot_0: 'ListOf' @ 'R'] :
      ( V_angles_dot_0
      = ( 'cons/2' @ ( '//2' @ 'Pi/0' @ 3 ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ 4 @ 9 ) @ 'Pi/0' ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ 2 @ 9 ) @ 'Pi/0' ) @ 'nil/0' ) ) ) ) ),
    answer_to(p_question,[])).
