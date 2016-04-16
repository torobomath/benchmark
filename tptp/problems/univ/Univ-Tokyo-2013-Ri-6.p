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

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  121 (   4 equality;   4 variable)
%            Maximal formula depth :   16 (  10 average)
%            Number of connectives :  109 (   0   ~;   0   |;   0   &; 109   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   1   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   0   !;   0   ?;   4   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   0 pred;    3 func;    8 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( V_x
        = ( '3d.area-of/1' @ ( '3d.intersection/2' @ ( '3d.solid-of-revolution/2' @ ( '3d.square/4' @ ( '3d.point/3' @ -1.0 @ 1.0 @ 0.0 ) @ ( '3d.point/3' @ 1.0 @ 1.0 @ 0.0 ) @ ( '3d.point/3' @ 1.0 @ -1.0 @ 0.0 ) @ ( '3d.point/3' @ -1.0 @ -1.0 @ 0.0 ) ) @ ( '3d.line/2' @ ( '3d.point/3' @ 1.0 @ 1.0 @ 0.0 ) @ ( '3d.point/3' @ -1.0 @ -1.0 @ 0.0 ) ) ) @ ( '3d.plane/4' @ 1.0 @ 0.0 @ 0.0 @ 't/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( V_x
        = ( '3d.volume-of/1' @ ( '3d.intersection/2' @ ( '3d.solid-of-revolution/2' @ ( '3d.square/4' @ ( '3d.point/3' @ -1.0 @ 1.0 @ 0.0 ) @ ( '3d.point/3' @ 1.0 @ 1.0 @ 0.0 ) @ ( '3d.point/3' @ 1.0 @ -1.0 @ 0.0 ) @ ( '3d.point/3' @ -1.0 @ -1.0 @ 0.0 ) ) @ ( '3d.line/2' @ ( '3d.point/3' @ 1.0 @ 1.0 @ 0.0 ) @ ( '3d.point/3' @ -1.0 @ -1.0 @ 0.0 ) ) ) @ ( '3d.solid-of-revolution/2' @ ( '3d.square/4' @ ( '3d.point/3' @ -1.0 @ 1.0 @ 0.0 ) @ ( '3d.point/3' @ 1.0 @ 1.0 @ 0.0 ) @ ( '3d.point/3' @ 1.0 @ -1.0 @ 0.0 ) @ ( '3d.point/3' @ -1.0 @ -1.0 @ 0.0 ) ) @ ( '3d.line/2' @ ( '3d.point/3' @ -1.0 @ 1.0 @ 0.0 ) @ ( '3d.point/3' @ 1.0 @ -1.0 @ 0.0 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( V_x_dot_0
      = ( $product @ ( $quotient @ ( $product @ 8.0 @ ( 'sqrt/1' @ 2.0 ) ) @ 3.0 ) @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( V_x_dot_0
      = ( $product @ ( $quotient @ 32.0 @ 9.0 ) @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p2_question,[])).

