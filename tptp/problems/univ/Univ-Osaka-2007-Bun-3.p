%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2007, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-02
%%
%% <PROBLEM-TEXT>
%% On the $x y$ plane, let $C$ be the circle of the radius $r$ $(r > 0)$
%% passing through the origin $O$, and let $A$ be the center of the
%% circle. For the point $P$ on $C$ except $O$, consider the point $Q$
%% determined by the following $2$ conditions: (a) $\vec{OP}$ and
%% $\vec{OQ}$ have the same direction. (b) $|\vec{OP}| |\vec{OQ}| = 1$.
%% Answer the following questions:
%%
%% (1) Assuming that the point $P$ moves on $C$ except $O$, prove that
%% the point $Q$ moves on a straight line orthogonal to $\vec{OA}$.
%%
%% (2) Let $l$ be the straight line described in $l$. Assuming that $l$
%% intersects with $C$ at two points, find the range of the possible
%% value of $r$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  112 (   9 equality;  59 variable)
%            Maximal formula depth :   27 (  17 average)
%            Number of connectives :   94 (   3   ~;   0   |;  22   &;  68   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   6   !;   9   ?;   2   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   2 pred;    2 func;    3 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_O: '2d.Point',V_r: $real,V_C: '2d.Shape',V_A: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( ( V_O = '2d.origin/0' )
        & ( $less @ 0.0 @ V_r )
        & ( V_C
          = ( '2d.circle/2' @ V_A @ V_r ) )
        & ( '2d.on/2' @ V_O @ V_C )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( V_P != V_O )
        & ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ V_O @ V_P ) @ ( '2d.vec/2' @ V_O @ V_Q ) )
        & ( ( $product @ ( '2d.distance/2' @ V_O @ V_P ) @ ( '2d.distance/2' @ V_O @ V_Q ) )
          = 1.0 ) )
     => ? [V_l: '2d.Shape'] :
          ( ( '2d.line-type/1' @ V_l )
          & ( '2d.perpendicular/2' @ V_l @ ( '2d.line/2' @ V_O @ V_A ) )
          & ( '2d.on/2' @ V_Q @ V_l ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_r: $real] :
      ? [V_O: '2d.Point',V_C: '2d.Shape',V_A: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_l: '2d.Shape',V_p: '2d.Point',V_q: '2d.Point'] :
        ( ( V_O = '2d.origin/0' )
        & ( $less @ 0.0 @ V_r )
        & ( V_C
          = ( '2d.circle/2' @ V_A @ V_r ) )
        & ( '2d.on/2' @ V_O @ V_C )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( V_P != V_O )
        & ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ V_O @ V_P ) @ ( '2d.vec/2' @ V_O @ V_Q ) )
        & ( ( $product @ ( '2d.distance/2' @ V_O @ V_P ) @ ( '2d.distance/2' @ V_O @ V_Q ) )
          = 1.0 )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.perpendicular/2' @ V_l @ ( '2d.line/2' @ V_O @ V_A ) )
        & ( '2d.on/2' @ V_Q @ V_l )
        & ( V_p != V_q )
        & ( '2d.on/2' @ V_p @ ( '2d.intersection/2' @ V_C @ V_l ) )
        & ( '2d.on/2' @ V_q @ ( '2d.intersection/2' @ V_C @ V_l ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_r_dot_0: $real] :
      ( $greater @ V_r_dot_0 @ ( $quotient @ 1.0 @ 2.0 ) ) ),
    answer_to(p2_question,[])).

