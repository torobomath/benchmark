%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1999, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Two circles $G_1$ and $G_2$ are contained inside the circle $G$, and are tangent
%% to $G$ at the distinct points $M$ and $N$, respectively. $G_1$ passes through the
%% center of $G_2$. The line passing through the two points of intersection of $G_1$
%% and $G_2$ meets $G$ at $A$ and $B$. The lines $MA$ and $MB$ meet $G_1$ at $C$ and
%% $D$, respectively. Prove that $CD$ is tangent to $G_2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   73 (   4 equality;  48 variable)
%            Maximal formula depth :   35 (  35 average)
%            Number of connectives :   68 (   4   ~;   0   |;  17   &;  46   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :;   0   =)
%            Number of variables   :   11 (   0 sgn;  11   !;   0   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_G: '2d.Shape',V_G1: '2d.Shape',V_G2: '2d.Shape',V_M: '2d.Point',V_N: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
      ( ( ( '2d.circle-type/1' @ V_G )
        & ( '2d.circle-type/1' @ V_G1 )
        & ( '2d.circle-type/1' @ V_G2 )
        & ( '2d.is-inscribed-in/2' @ V_G1 @ V_G )
        & ( '2d.is-inscribed-in/2' @ V_G2 @ V_G )
        & ( '2d.tangent/3' @ V_G @ V_G1 @ V_M )
        & ( '2d.tangent/3' @ V_G @ V_G2 @ V_N )
        & ( V_M != V_N )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_G2 ) @ V_G1 )
        & ( '2d.intersect/3' @ V_G1 @ V_G2 @ V_P )
        & ( '2d.intersect/3' @ V_G1 @ V_G2 @ V_Q )
        & ( V_P != V_Q )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_P @ V_Q ) @ V_G @ V_A )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_P @ V_Q ) @ V_G @ V_B )
        & ( V_A != V_B )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_M @ V_A ) @ V_G1 @ V_C )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_M @ V_B ) @ V_G1 @ V_D )
        & ( V_C != V_D ) )
     => ( '2d.tangent/2' @ ( '2d.line/2' @ V_C @ V_D ) @ V_G2 ) ) )).

