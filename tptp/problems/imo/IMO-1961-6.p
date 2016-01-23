%% DOMAIN:    Geometry, coordinates and vectors in 3D space
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1961, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-16
%%
%% <PROBLEM-TEXT>
%% Consider a plane $\epsilon$ and three non-collinear points $A$, $B$, $C$ on the same
%% side of $\epsilon$; suppose the plane determined by these three points is
%% not parallel to $\epsilon$. In plane $\epsilon$ take three arbitrary points $A'$, $B'$, $C'$.
%% Let $L$, $M$, $N$ be the midpoints of segments $AA'$, $BB'$, $CC'$; let $G$ be the
%% centroid of triangle $LMN$. (We will not consider positions of the
%% points $A'$, $B'$, $C'$ such that the points $L$, $M$, $N$ do not form a triangle.)
%% What is the locus of point $G$ as $A'$ , $B'$ , $C'$ range independently over
%% the plane $\epsilon$.
%% </PROBLEM-TEXT>
%%@ NOTE: eps is set to the xy-plane

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  123 (  14 equality;  69 variable)
%            Maximal formula depth :   37 (  26 average)
%            Number of connectives :   99 (   6   ~;   2   |;  21   &;  70   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   32 (  12 sgn;   0   !;  10   ?;   4   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_Gs: '3d.Shape'] :
      ? [V_eps: '3d.Shape',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_eps = '3d.xy-plane/0' )
        & ( V_A
          = ( '3d.point/3' @ V_Ax @ V_Ay @ V_Az ) )
        & ( V_B
          = ( '3d.point/3' @ V_Bx @ V_By @ V_Bz ) )
        & ( V_C
          = ( '3d.point/3' @ V_Cx @ V_Cy @ V_Cz ) )
        & ( '</2' @ 0 @ V_Az )
        & ( '</2' @ 0 @ V_Bz )
        & ( '</2' @ 0 @ V_Cz )
        & ~ ( '3d.colinear/3' @ V_A @ V_B @ V_C )
        & ~ ( '3d.parallel/2' @ ( '3d.plane1/3' @ V_A @ V_B @ V_C ) @ V_eps )
        & ( V_Gs
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_G: '3d.Point'] :
              ? [V_A2: '3d.Point',V_B2: '3d.Point',V_C2: '3d.Point',V_L: '3d.Point',V_M: '3d.Point',V_N: '3d.Point'] :
                ( ( '3d.on/2' @ V_A2 @ V_eps )
                & ( '3d.on/2' @ V_B2 @ V_eps )
                & ( '3d.on/2' @ V_C2 @ V_eps )
                & ( ( '3d.midpoint-of/2' @ V_A @ V_A2 )
                  = V_L )
                & ( ( '3d.midpoint-of/2' @ V_B @ V_B2 )
                  = V_M )
                & ( ( '3d.midpoint-of/2' @ V_C @ V_C2 )
                  = V_N )
                & ( '3d.is-triangle/3' @ V_L @ V_M @ V_N )
                & ( V_G
                  = ( '3d.centroid-of/1' @ ( '3d.triangle/3' @ V_L @ V_M @ V_N ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_Gs_dot_0: '3d.Shape'] :
      ( ~ ( '3d.colinear/3' @ ( '3d.point/3' @ V_Ax @ V_Ay @ V_Az ) @ ( '3d.point/3' @ V_Bx @ V_By @ V_Bz ) @ ( '3d.point/3' @ V_Cx @ V_Cy @ V_Cz ) )
      & ( ( V_Az != V_Bz )
        | ( V_Bz != V_Cz )
        | ( V_Cz != V_Az ) )
      & ( '</2' @ 0 @ V_Az )
      & ( '</2' @ 0 @ V_Bz )
      & ( '</2' @ 0 @ V_Cz )
      & ( V_Gs_dot_0
        = ( '3d.shape-of-cpfun/1'
          @ ^ [V_G_dot_0: '3d.Point'] :
              ( ( '3d.z-coord/1' @ V_G_dot_0 )
              = ( '//2' @ ( '+/2' @ V_Az @ ( '+/2' @ V_Bz @ V_Cz ) ) @ 6 ) ) ) ) ) ),
    answer_to(p_question,[])).
