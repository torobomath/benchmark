%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2009, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2013-12-25
%%
%% <PROBLEM-TEXT>
%% Answer the following questions.
%%
%% (1) Find the coordinates of the foot $H$ of the perpendicular drawn
%% from the point $C(2, 3, 3)$ to the straight line $l$ passing through
%% the points $A(-3, -1, 1)$ and $B(-1, 0, 0)$ in the $xyz$ space.
%%
%% (2) Consider a game of taking two balls at a time out of a bag
%% containing white and red balls. If the two balls are both white, it
%% is regarded as "success" and the game ends. Otherwise, it is regarded
%% as "failure" and the two balls are returned to the bag with one extra
%% red ball, and the game goes on. If there are two white balls and one
%% red ball in the bag at the beginning, find the probability of
%% succeeding on the $n$th try after $n-1$ times of failure, where
%% $n\ge 2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   39 (   1 equality;   6 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   35 (   0   ~;   0   |;   3   &;  32   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   0   !;   1   ?;   2   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    0 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ '3d.Point'
    @ ^ [V_p: '3d.Point'] :
      ? [V_k: '3d.Shape'] :
        ( ( '3d.line-type/1' @ V_k )
        & ( '3d.perpendicular/2' @ V_k @ ( '3d.line/2' @ ( '3d.point/3' @ -3.0 @ -1.0 @ 1.0 ) @ ( '3d.point/3' @ -1.0 @ 0.0 @ 0.0 ) ) )
        & ( '3d.on/2' @ ( '3d.point/3' @ 2.0 @ 3.0 @ 3.0 ) @ V_k )
        & ( '3d.intersect/3' @ V_k @ ( '3d.line/2' @ ( '3d.point/3' @ -3.0 @ -1.0 @ 1.0 ) @ ( '3d.point/3' @ -1.0 @ 0.0 @ 0.0 ) ) @ V_p ) ) )).

thf(p1_answer,answer,(
    ^ [V_p_dot_0: '3d.Point'] :
      ( V_p_dot_0
      = ( '3d.point/3' @ 1.0 @ 1.0 @ -1.0 ) ) ),
    answer_to(p1_question,[])).

