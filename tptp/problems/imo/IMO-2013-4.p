%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2013, Problem 4
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-15
%%
%% <PROBLEM-TEXT>
%% Let $ABC$ be an acute-angled triangle with orthocentre $H$, and let $W$ be a point
%% on the side $BC$, lying strictly between $B$ and $C$.
%% The points $M$ and $N$ are the feet of the altitudes from $B$ and $C$, respectively.
%% Denote by $\omega_1$ the circumcircle of $BWN$, and let $X$ be the point on $\omega_1$
%% such that $WX$ is a diameter of $\omega_1$. Analogously, denote by $\omega_2$
%% the circumcircle of $CWM$, and let $Y$ be the point on $\omega_2$ such that $WY$
%% is a diameter of $\omega_2$. Prove that $X$, $Y$ and $H$ are collinear.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   65 (   4 equality;  41 variable)
%            Maximal formula depth :   30 (  30 average)
%            Number of connectives :   58 (   2   ~;   0   |;  12   &;  43   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :   11 (   0 sgn;  11   !;   0   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_H: '2d.Point',V_w1: '2d.Shape',V_w2: '2d.Shape',V_M: '2d.Point',V_N: '2d.Point',V_X: '2d.Point',V_Y: '2d.Point',V_W: '2d.Point'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-orthocenter-of/2' @ V_H @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_W @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( V_W != V_B )
        & ( V_W != V_C )
        & ( V_M
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_B @ ( '2d.line/2' @ V_A @ V_C ) ) )
        & ( V_N
          = ( '2d.foot-of-perpendicular-line-from-to/2' @ V_C @ ( '2d.line/2' @ V_A @ V_B ) ) )
        & ( '2d.circle-type/1' @ V_w1 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_B @ V_W @ V_N ) @ V_w1 )
        & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_W @ V_X ) @ V_w1 )
        & ( '2d.circle-type/1' @ V_w2 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_C @ V_W @ V_M ) @ V_w2 )
        & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_W @ V_Y ) @ V_w2 ) )
     => ( '2d.colinear/3' @ V_X @ V_Y @ V_H ) ) )).

