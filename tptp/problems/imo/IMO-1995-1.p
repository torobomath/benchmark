%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1995, Problem 1
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-10
%%
%% <PROBLEM-TEXT>
%% Let $A$, $B$, $C$, $D$ be four distinct points on a line, in that order. The
%% circles with diameters $AC$ and $BD$ intersect at $X$ and $Y$. The line $XY$ meets
%% $BC$ at $Z$. Let $P$ be a point on the line $XY$ other than $Z$. The line $CP$
%% intersects the circle with diameter $AC$ at $C$ and $M$, and the line $BP$
%% intersects the circle with diameter $BD$ at $B$ and $N$. Prove that the lines
%% $AM$, $DN$, $XY$ are concurrent.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  109 (   4 equality;  62 variable)
%            Maximal formula depth :   38 (  38 average)
%            Number of connectives :  107 (   7   ~;   0   |;  19   &;  80   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;  12   !;   0   ?;   0   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_S1: '2d.Shape',V_S2: '2d.Shape',V_X: '2d.Point',V_Y: '2d.Point',V_Z: '2d.Point',V_P: '2d.Point',V_M: '2d.Point',V_N: '2d.Point'] :
      ( ( ~ ( '2d.on/2' @ V_C @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ~ ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_B @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ~ ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( '2d.on/2' @ V_B @ ( '2d.seg/2' @ V_A @ V_D ) )
        & ( '2d.on/2' @ V_C @ ( '2d.seg/2' @ V_A @ V_D ) )
        & ( '2d.circle-type/1' @ V_S1 )
        & ( '2d.circle-type/1' @ V_S2 )
        & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_A @ V_C ) @ V_S1 )
        & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_B @ V_D ) @ V_S2 )
        & ( V_X != V_Y )
        & ( '2d.on/2' @ V_X @ ( '2d.intersection/2' @ V_S1 @ V_S2 ) )
        & ( '2d.on/2' @ V_Y @ ( '2d.intersection/2' @ V_S1 @ V_S2 ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_X @ V_Y ) @ ( '2d.line/2' @ V_B @ V_C ) @ V_Z )
        & ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_X @ V_Y ) )
        & ( V_P != V_Z )
        & ( V_M != V_C )
        & ( V_N != V_B )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_C @ V_P ) @ V_S1 @ V_M )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_P ) @ V_S2 @ V_N ) )
     => ( '2d.lines-intersect-at-one/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.line/2' @ V_A @ V_M ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.line/2' @ V_D @ V_N ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.line/2' @ V_X @ V_Y ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )).

