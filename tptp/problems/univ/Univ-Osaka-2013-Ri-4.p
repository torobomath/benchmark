%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2013, Science Course, Problem 4
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-07-31
%%
%% <PROBLEM-TEXT>
%% Let $V$ be the cone obtained by rotating the triangle $OAB$ whose
%% vertices are the points $O(0, 0, 0)$, $A(1, 0, 1)$, and $B(1, 1, 0)$
%% in the $x y z$ space around the $x$ axis. Find the volume of the
%% solid obtained by rotating the cone $V$ around the $y$ axis.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   29 (   2 equality;   2 variable)
%            Maximal formula depth :   15 (  11 average)
%            Number of connectives :   23 (   0   ~;   0   |;   0   &;  23   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    2 func;    4 numbers)

include('axioms.ax').

thf(p4_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_v: $real] :
        ( V_v
        = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.solid-of-revolution/2' @ ( '3d.triangle/3' @ ( '3d.point/3' @ 0.0 @ 0.0 @ 0.0 ) @ ( '3d.point/3' @ 1.0 @ 1.0 @ 0.0 ) @ ( '3d.point/3' @ 1.0 @ 0.0 @ 1.0 ) ) @ '3d.x-axis/0' ) @ '3d.y-axis/0' ) ) ) )).

thf(p4_answer,answer,(
    ^ [V_v_dot_0: $real] :
      ( V_v_dot_0
      = ( $product @ ( $quotient @ 8.0 @ 3.0 ) @ 'Pi/0' ) ) ),
    answer_to(p4_question,[])).

