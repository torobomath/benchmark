%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2013, Science Course, Problem 6
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2013-11-21
%%
%% <PROBLEM-TEXT>
%% Let $A(-1, 1, 0)$, $B(1, 1, 0)$, $C(1, -1, 0)$, and $D(-1, -1, 0)$ be
%% the four vertices of the square $S$ defined by the inequalities
%% $|x|\le 1$ and $|y|\le 1$ on the $xy$ plane in the coordinate space
%% Let $V_1$ be the solid obtained by rotating the square $S$ around the
%% straight line $BD$, and $V_2$, the solid obtained by rotating the
%% same square around the straight line $AC$.
%%
%% (1) For the real number $t$ that satisfies $0\le t<1$, find the area
%% of the cross section of $V_1$ by the plane $x=t$.
%%
%% (2) Find the volume of the intersection of $V_1$ and $V_2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  119 (   4 equality;   6 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :  107 (   0   ~;   0   |;   0   &; 107   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :    6 (   2 sgn;   0   !;   0   ?;   4   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( V_x
        = ( '3d.area-of/1' @ ( '3d.intersection/2' @ ( '3d.solid-of-revolution/2' @ ( '3d.square/4' @ ( '3d.point/3' @ -1 @ 1 @ 0 ) @ ( '3d.point/3' @ 1 @ 1 @ 0 ) @ ( '3d.point/3' @ 1 @ -1 @ 0 ) @ ( '3d.point/3' @ -1 @ -1 @ 0 ) ) @ ( '3d.line/2' @ ( '3d.point/3' @ 1 @ 1 @ 0 ) @ ( '3d.point/3' @ -1 @ -1 @ 0 ) ) ) @ ( '3d.plane/4' @ 1 @ 0 @ 0 @ V_t ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( V_x
        = ( '3d.volume-of/1' @ ( '3d.intersection/2' @ ( '3d.solid-of-revolution/2' @ ( '3d.square/4' @ ( '3d.point/3' @ -1 @ 1 @ 0 ) @ ( '3d.point/3' @ 1 @ 1 @ 0 ) @ ( '3d.point/3' @ 1 @ -1 @ 0 ) @ ( '3d.point/3' @ -1 @ -1 @ 0 ) ) @ ( '3d.line/2' @ ( '3d.point/3' @ 1 @ 1 @ 0 ) @ ( '3d.point/3' @ -1 @ -1 @ 0 ) ) ) @ ( '3d.solid-of-revolution/2' @ ( '3d.square/4' @ ( '3d.point/3' @ -1 @ 1 @ 0 ) @ ( '3d.point/3' @ 1 @ 1 @ 0 ) @ ( '3d.point/3' @ 1 @ -1 @ 0 ) @ ( '3d.point/3' @ -1 @ -1 @ 0 ) ) @ ( '3d.line/2' @ ( '3d.point/3' @ -1 @ 1 @ 0 ) @ ( '3d.point/3' @ 1 @ -1 @ 0 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( V_x_dot_0
      = ( '*/2' @ ( '//2' @ ( '*/2' @ 8 @ ( 'sqrt/1' @ 2 ) ) @ 3 ) @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_t @ 2 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( V_x_dot_0
      = ( '*/2' @ ( '//2' @ 32 @ 9 ) @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p2_question,[])).
