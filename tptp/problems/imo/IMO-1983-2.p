%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1983, Problem 2
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% Let $A$ be one of the two distinct points of intersection of two unequal coplanar
%% circles $C_1$ and $C_2$ with centers $O_1$ and $O_2$, respectively. One of the
%% common tangents to the circles touches $C_1$ at $P_1$ and $C_2$ at $P_2$, while
%% the other touches $C_1$ at $Q_1$ and $C_2$ at $Q_2$. Let $M_1$ be the midpoint of
%% $P_1Q_1$, and $M_2$ be the midpoint of $P_2Q_2$.
%% Prove that $¥angle O_1AO_2 = ¥angle M_1AM_2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   75 (   7 equality;  44 variable)
%            Maximal formula depth :   29 (  29 average)
%            Number of connectives :   62 (   2   ~;   0   |;  13   &;  46   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;  11   !;   1   ?;   0   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_C1: '2d.Shape',V_C2: '2d.Shape',V_O1: '2d.Point',V_O2: '2d.Point',V_M1: '2d.Point',V_M2: '2d.Point',V_P1: '2d.Point',V_P2: '2d.Point',V_Q1: '2d.Point',V_Q2: '2d.Point'] :
      ( ( ( '2d.on/2' @ V_A @ ( '2d.intersection/2' @ V_C1 @ V_C2 ) )
        & ? [V_B: '2d.Point'] :
            ( ( V_A != V_B )
            & ( '2d.on/2' @ V_B @ ( '2d.intersection/2' @ V_C1 @ V_C2 ) ) )
        & ( '2d.circle-type/1' @ V_C1 )
        & ( '2d.circle-type/1' @ V_C2 )
        & ( V_O1
          = ( '2d.center-of/1' @ V_C1 ) )
        & ( V_O2
          = ( '2d.center-of/1' @ V_C2 ) )
        & ( V_M1
          = ( '2d.midpoint-of/2' @ V_P1 @ V_Q1 ) )
        & ( V_M2
          = ( '2d.midpoint-of/2' @ V_P2 @ V_Q2 ) )
        & ( ( '2d.radius-of/1' @ V_C1 )
         != ( '2d.radius-of/1' @ V_C2 ) )
        & ( '2d.tangent/3' @ V_C1 @ ( '2d.line/2' @ V_P1 @ V_P2 ) @ V_P1 )
        & ( '2d.tangent/3' @ V_C2 @ ( '2d.line/2' @ V_P1 @ V_P2 ) @ V_P2 )
        & ( '2d.tangent/3' @ V_C1 @ ( '2d.line/2' @ V_Q1 @ V_Q2 ) @ V_Q1 )
        & ( '2d.tangent/3' @ V_C2 @ ( '2d.line/2' @ V_Q1 @ V_Q2 ) @ V_Q2 ) )
     => ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_O1 @ V_A @ V_O2 ) )
        = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_M1 @ V_A @ V_M2 ) ) ) ) )).

