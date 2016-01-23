%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2013, Problem 3
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-15
%%
%% <PROBLEM-TEXT>
%% Let the excircle of triangle $ABC$ opposite the vertex $A$ be tangent to the
%% side $BC$ at the point $A_1$. Define the points $B_1$ on $CA$ and $C_1$ on $AB$ analogously,
%% using the excircles opposite $B$ and $C$, respectively. Suppose that
%% the circumcentre of triangle $A_1B_1C_1$ lies on the circumcircle of triangle $ABC$.
%% Prove that triangle $ABC$ is right-angled.
%% The excircle of triangle $ABC$ opposite the vertex $A$ is the circle that is
%% tangent to the line segment $BC$, to the ray $AB$ beyond $B$, and to the ray
%% $AC$ beyond $C$. The excircles opposite $B$ and $C$ are similarly defined.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   71 (   0 equality;  47 variable)
%            Maximal formula depth :   31 (  31 average)
%            Number of connectives :   70 (   0   ~;   0   |;  13   &;  56   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :   11 (   0 sgn;  11   !;   0   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_SA: '2d.Shape',V_SB: '2d.Shape',V_SC: '2d.Shape',V_A1: '2d.Point',V_B1: '2d.Point',V_C1: '2d.Point',V_P: '2d.Point',V_S: '2d.Shape'] :
      ( ( ( '2d.circle-type/1' @ V_SA )
        & ( '2d.circle-type/1' @ V_SB )
        & ( '2d.circle-type/1' @ V_SC )
        & ( '2d.circle-type/1' @ V_S )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-excircle-of/3' @ V_SA @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_A )
        & ( '2d.tangent/3' @ V_SA @ ( '2d.line/2' @ V_B @ V_C ) @ V_A1 )
        & ( '2d.is-excircle-of/3' @ V_SB @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_B )
        & ( '2d.tangent/3' @ V_SB @ ( '2d.line/2' @ V_C @ V_A ) @ V_B1 )
        & ( '2d.is-excircle-of/3' @ V_SC @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_C )
        & ( '2d.tangent/3' @ V_SC @ ( '2d.line/2' @ V_A @ V_B ) @ V_C1 )
        & ( '2d.is-circumcenter-of/2' @ V_P @ ( '2d.triangle/3' @ V_A1 @ V_B1 @ V_C1 ) )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_S )
        & ( '2d.on/2' @ V_P @ V_S ) )
     => ( '2d.is-right-triangle/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) )).
