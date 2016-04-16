%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1970, Problem 1
%% SCORE:     5
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-27
%%
%% <PROBLEM-TEXT>
%% Let $M$ be a point on the side $AB$ of $\triangle ABC$.
%% Let $r_1$, $r_2$ and $r$ be the radii of the inscribed circles of triangles $AMC$,
%% $BMC$ and $ABC$. Let $q_1$, $q_2$ and $q$ be the radii of the escribed circles of the
%% same triangles that lie in the angle $ACB$. Prove that\[
%% \frac{r_1}{q_1} \cdot \frac{r_2}{q_2} = \frac{r}{q}.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   95 (   7 equality;  57 variable)
%            Maximal formula depth :   41 (  41 average)
%            Number of connectives :   80 (   0   ~;   0   |;  19   &;  60   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :   16 (   0 sgn;  16   !;   0   ?;   0   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    2 func;    0 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_M: '2d.Point',V_r1: $real,V_r2: $real,V_K1: '2d.Shape',V_K2: '2d.Shape',V_rho1: $real,V_rho2: $real,V_K3: '2d.Shape',V_K4: '2d.Shape',V_r: $real,V_rho: $real,V_K5: '2d.Shape',V_K6: '2d.Shape'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_M @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.circle-type/1' @ V_K1 )
        & ( '2d.circle-type/1' @ V_K2 )
        & ( '2d.is-inscribed-in/2' @ V_K1 @ ( '2d.triangle/3' @ V_A @ V_C @ V_M ) )
        & ( '2d.is-inscribed-in/2' @ V_K2 @ ( '2d.triangle/3' @ V_B @ V_C @ V_M ) )
        & ( ( '2d.radius-of/1' @ V_K1 )
          = V_r1 )
        & ( ( '2d.radius-of/1' @ V_K2 )
          = V_r2 )
        & ( '2d.circle-type/1' @ V_K3 )
        & ( '2d.circle-type/1' @ V_K4 )
        & ( '2d.is-excircle-of/3' @ V_K3 @ ( '2d.triangle/3' @ V_A @ V_C @ V_M ) @ V_C )
        & ( '2d.is-excircle-of/3' @ V_K4 @ ( '2d.triangle/3' @ V_B @ V_C @ V_M ) @ V_C )
        & ( ( '2d.radius-of/1' @ V_K3 )
          = V_rho1 )
        & ( ( '2d.radius-of/1' @ V_K4 )
          = V_rho2 )
        & ( '2d.circle-type/1' @ V_K5 )
        & ( '2d.circle-type/1' @ V_K6 )
        & ( '2d.is-inscribed-in/2' @ V_K5 @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-excircle-of/3' @ V_K6 @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_C )
        & ( ( '2d.radius-of/1' @ V_K5 )
          = V_r )
        & ( ( '2d.radius-of/1' @ V_K6 )
          = V_rho ) )
     => ( ( $product @ ( $quotient @ V_r1 @ V_rho1 ) @ ( $quotient @ V_r2 @ V_rho2 ) )
        = ( $quotient @ V_r @ V_rho ) ) ) )).

