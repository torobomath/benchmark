%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1969, Problem 4
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% A semicircular arc $\gamma$ is drawn on $AB$ as diameter.
%% $C$ is a point on $\gamma$ other than $A$ and $B$, and $D$ is the foot of the
%% perpendicular from $C$ to $AB$. We consider three circles, $\gamma_1$, $\gamma_2$,
%% $\gamma_3$, all tangent to the line $AB$. Of these, $\gamma_1$ is
%% inscribed in $\triangle ABC$, while $\gamma_2$ and $\gamma_3$ are both tangent to
%% $CD$ and to $\gamma$, one on each side of $CD$. Prove that $\gamma_1$,
%% $\gamma_2$ and $\gamma_3$ have a second tangent in common.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   85 (   4 equality;  50 variable)
%            Maximal formula depth :   29 (  29 average)
%            Number of connectives :   79 (   3   ~;   0   |;  19   &;  56   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :    9 (   0 sgn;   8   !;   1   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_Gamma: '2d.Shape',V_C: '2d.Point',V_D: '2d.Point',V_Gamma1: '2d.Shape',V_Gamma2: '2d.Shape',V_Gamma3: '2d.Shape'] :
      ( ( ( '2d.circle-type/1' @ V_Gamma )
        & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_A @ V_B ) @ V_Gamma )
        & ( '2d.on/2' @ V_C @ V_Gamma )
        & ( V_C != V_A )
        & ( V_C != V_B )
        & ( ( '2d.foot-of-perpendicular-line-from-to/2' @ V_C @ ( '2d.line/2' @ V_A @ V_B ) )
          = V_D )
        & ( '2d.circle-type/1' @ V_Gamma1 )
        & ( '2d.circle-type/1' @ V_Gamma2 )
        & ( '2d.circle-type/1' @ V_Gamma3 )
        & ( '2d.tangent/2' @ ( '2d.line/2' @ V_A @ V_B ) @ V_Gamma1 )
        & ( '2d.tangent/2' @ ( '2d.line/2' @ V_A @ V_B ) @ V_Gamma2 )
        & ( '2d.tangent/2' @ ( '2d.line/2' @ V_A @ V_B ) @ V_Gamma3 )
        & ( '2d.is-inscribed-in/2' @ V_Gamma1 @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.tangent/2' @ ( '2d.seg/2' @ V_C @ V_D ) @ V_Gamma2 )
        & ( '2d.tangent/2' @ ( '2d.seg/2' @ V_C @ V_D ) @ V_Gamma3 )
        & ( '2d.intersect/2' @ ( '2d.seg/2' @ V_C @ V_D ) @ ( '2d.seg/2' @ ( '2d.center-of/1' @ V_Gamma2 ) @ ( '2d.center-of/1' @ V_Gamma3 ) ) ) )
     => ? [V_l: '2d.Shape'] :
          ( ( '2d.line-type/1' @ V_l )
          & ( '2d.tangent/2' @ V_l @ V_Gamma1 )
          & ( '2d.tangent/2' @ V_l @ V_Gamma2 )
          & ( '2d.tangent/2' @ V_l @ V_Gamma3 )
          & ( V_l
           != ( '2d.line/2' @ V_A @ V_B ) ) ) ) )).
