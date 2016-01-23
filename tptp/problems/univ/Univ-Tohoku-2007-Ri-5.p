%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2007, Science Course, Problem 5
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% In the $x y z$ space, let $l$ be the line segment that connects the
%% points $(1, 0, 1)$ and $(1, 0, 2)$, and $A$, the figure obtained by
%% rotating $l$ around the $z$ axis. Find the volume of the solid
%% obtained by rotating $A$ around the $x$ axis.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   28 (   4 equality;   6 variable)
%            Maximal formula depth :   12 (   8 average)
%            Number of connectives :   18 (   0   ~;   0   |;   2   &;  16   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_l: '3d.Shape',V_A: '3d.Shape'] :
        ( ( V_l
          = ( '3d.line/2' @ ( '3d.point/3' @ 1 @ 0 @ 1 ) @ ( '3d.point/3' @ 1 @ 0 @ 2 ) ) )
        & ( V_A
          = ( '3d.rotation-around/2' @ V_l @ '3d.z-axis/0' ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.rotation-around/2' @ V_A @ '3d.x-axis/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ 6 @ 'Pi/0' ) ) ),
    answer_to(p_question,[])).
