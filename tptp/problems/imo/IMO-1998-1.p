%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1998, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-05
%%
%% <PROBLEM-TEXT>
%% In the convex quadrilateral $ABCD$, the diagonals $AC$ and $BD$ are perpendicular
%% and the opposite sides $AB$ and $DC$ are not parallel. Suppose that the point $P$,
%% where the perpendicular bisectors of $AB$ and $DC$ meet, is inside $ABCD$. Prove
%% that $ABCD$ is a cyclic quadrilateral if and only if the triangles $ABP$ and $CDP$
%% have equal areas.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   74 (   1 equality;  40 variable)
%            Maximal formula depth :   22 (  22 average)
%            Number of connectives :   72 (   1   ~;   0   |;   9   &;  60   @)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   7   !;   1   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_L1: '2d.Shape',V_L2: '2d.Shape',V_P: '2d.Point'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_C ) @ ( '2d.line/2' @ V_B @ V_D ) )
        & ~ ( '2d.parallel/2' @ ( '2d.line/2' @ V_A @ V_B ) @ ( '2d.line/2' @ V_D @ V_C ) )
        & ( '2d.line-type/1' @ V_L1 )
        & ( '2d.line-type/1' @ V_L2 )
        & ( '2d.is-perp-bisector/2' @ V_L1 @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.is-perp-bisector/2' @ V_L2 @ ( '2d.seg/2' @ V_C @ V_D ) )
        & ( '2d.intersect/3' @ V_L1 @ V_L2 @ V_P )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) ) )
     => ( ? [V_K: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_K )
            & ( '2d.is-inscribed-in/2' @ ( '2d.polygon/1' @ ( 'cons/2' @ '2d.Point' @ V_A @ ( 'cons/2' @ '2d.Point' @ V_B @ ( 'cons/2' @ '2d.Point' @ V_C @ ( 'cons/2' @ '2d.Point' @ V_D @ ( 'nil/0' @ '2d.Point' ) ) ) ) ) ) @ V_K ) )
      <=> ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_P ) )
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_C @ V_D @ V_P ) ) ) ) ) )).

