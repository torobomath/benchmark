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

% Syntax   : Number of formulae    :   11 (   0 unit;   9 type;   0 defn)
%            Number of atoms       :  124 (  14 equality;  36 variable)
%            Maximal formula depth :   37 (   6 average)
%            Number of connectives :  100 (   6   ~;   2   |;  21   &;  71   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   9   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   0   !;  10   ?;   4   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    2 func;    2 numbers)

include('axioms.ax').

thf('Ax/0_type',type,(
    'Ax/0': $real )).

thf('Ay/0_type',type,(
    'Ay/0': $real )).

thf('Az/0_type',type,(
    'Az/0': $real )).

thf('Bx/0_type',type,(
    'Bx/0': $real )).

thf('By/0_type',type,(
    'By/0': $real )).

thf('Bz/0_type',type,(
    'Bz/0': $real )).

thf('Cx/0_type',type,(
    'Cx/0': $real )).

thf('Cy/0_type',type,(
    'Cy/0': $real )).

thf('Cz/0_type',type,(
    'Cz/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ '3d.Shape'
    @ ^ [V_Gs: '3d.Shape'] :
      ? [V_eps: '3d.Shape',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_eps = '3d.xy-plane/0' )
        & ( V_A
          = ( '3d.point/3' @ 'Ax/0' @ 'Ay/0' @ 'Az/0' ) )
        & ( V_B
          = ( '3d.point/3' @ 'Bx/0' @ 'By/0' @ 'Bz/0' ) )
        & ( V_C
          = ( '3d.point/3' @ 'Cx/0' @ 'Cy/0' @ 'Cz/0' ) )
        & ( $less @ 0.0 @ 'Az/0' )
        & ( $less @ 0.0 @ 'Bz/0' )
        & ( $less @ 0.0 @ 'Cz/0' )
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
      ( ~ ( '3d.colinear/3' @ ( '3d.point/3' @ 'Ax/0' @ 'Ay/0' @ 'Az/0' ) @ ( '3d.point/3' @ 'Bx/0' @ 'By/0' @ 'Bz/0' ) @ ( '3d.point/3' @ 'Cx/0' @ 'Cy/0' @ 'Cz/0' ) )
      & ( ( 'Az/0' != 'Bz/0' )
        | ( 'Bz/0' != 'Cz/0' )
        | ( 'Cz/0' != 'Az/0' ) )
      & ( $less @ 0.0 @ 'Az/0' )
      & ( $less @ 0.0 @ 'Bz/0' )
      & ( $less @ 0.0 @ 'Cz/0' )
      & ( V_Gs_dot_0
        = ( '3d.shape-of-cpfun/1'
          @ ^ [V_G_dot_0: '3d.Point'] :
              ( ( '3d.z-coord/1' @ V_G_dot_0 )
              = ( $quotient @ ( $sum @ 'Az/0' @ ( $sum @ 'Bz/0' @ 'Cz/0' ) ) @ 6.0 ) ) ) ) ) ),
    answer_to(p_question,[])).

