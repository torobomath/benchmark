%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1985, Problem 5
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% A circle with center $O$ passes through the vertices $A$ and $C$ of triangle $ABC$
%% and intersects the segments $AB$ and $BC$ again at distinct points $K$ and $N$,
%% respectively. The circumscribed circles of the triangles $ABC$ and $EBN$ intersect
%% at exactly two distinct points $B$ and $M$. Prove that angle $OMB$ is a right
%% angle.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   83 (   7 equality;  54 variable)
%            Maximal formula depth :   36 (  36 average)
%            Number of connectives :   72 (   4   ~;   1   |;  19   &;  46   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :   11 (   0 sgn;  11   !;   0   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_circle: '2d.Shape',V_circle1: '2d.Shape',V_circle2: '2d.Shape',V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_K: '2d.Point',V_N: '2d.Point',V_M: '2d.Point'] :
      ( ( ( '2d.circle-type/1' @ V_circle )
        & ( V_O
          = ( '2d.center-of/1' @ V_circle ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_A @ V_circle )
        & ( '2d.on/2' @ V_C @ V_circle )
        & ( '2d.on/2' @ V_K @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_K @ V_circle )
        & ( V_K != V_A )
        & ( '2d.on/2' @ V_N @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_N @ V_circle )
        & ( V_N != V_C )
        & ( V_K != V_N )
        & ( '2d.circle-type/1' @ V_circle1 )
        & ( '2d.circle-type/1' @ V_circle2 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_circle1 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_K @ V_B @ V_N ) @ V_circle1 )
        & ( '2d.intersect/3' @ V_circle1 @ V_circle2 @ V_M )
        & ( '2d.intersect/3' @ V_circle1 @ V_circle2 @ V_B )
        & ( V_B != V_M )
        & ! [V_M0: '2d.Point'] :
            ( ( '2d.intersect/3' @ V_circle1 @ V_circle2 @ V_M0 )
           => ( ( V_M = V_M0 )
              | ( V_B = V_M0 ) ) ) )
     => ( '2d.is-right/1' @ ( '2d.angle/3' @ V_O @ V_M @ V_B ) ) ) )).

