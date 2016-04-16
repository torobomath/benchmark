%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1987, Science Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-17
%%
%% <PROBLEM-TEXT>
%% Consider the spherical surface $K$ with the center at the point
%% $P(0, 0, 1)$ and the radius $1$ in the $x y z$ space.
%%
%% When the point $Q(a, b, c)$ on $K$ moves on $K$ under the conditions
%% $a>0$, $b>0$, and $c>1$, let $L$ be the plane in contact with $K$ at
%% $Q$, and let $A$, $B$, and $C$ be the intersections of $L$ and the
%% $x$, $y$, and $z$ axes, respectively.
%% Find the minimum area of the triangle $ABC$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   71 (   5 equality;  28 variable)
%            Maximal formula depth :   33 (  20 average)
%            Number of connectives :   60 (   0   ~;   0   |;  12   &;  48   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;   0   !;  10   ?;   3   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    2 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S_min: $real] :
      ? [V_S_set: ( 'SetOf' @ $real ),V_K: '3d.Shape'] :
        ( ( 'minimum/2' @ V_S_set @ V_S_min )
        & ( V_K
          = ( '3d.sphere/2' @ ( '3d.point/3' @ 0.0 @ 0.0 @ 1.0 ) @ 1.0 ) )
        & ( V_S_set
          = ( 'set-by-def/1' @ $real
            @ ^ [V_S: $real] :
              ? [V_a: $real,V_b: $real,V_c: $real,V_Q: '3d.Point',V_L: '3d.Shape',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
                ( ( V_Q
                  = ( '3d.point/3' @ V_a @ V_b @ V_c ) )
                & ( '3d.on/2' @ V_Q @ V_K )
                & ( $greater @ V_a @ 0.0 )
                & ( $greater @ V_b @ 0.0 )
                & ( $greater @ V_c @ 1.0 )
                & ( '3d.plane-type/1' @ V_L )
                & ( '3d.tangent/3' @ V_L @ V_K @ V_Q )
                & ( '3d.on/2' @ V_A @ ( '3d.intersection/2' @ V_L @ '3d.x-axis/0' ) )
                & ( '3d.on/2' @ V_B @ ( '3d.intersection/2' @ V_L @ '3d.y-axis/0' ) )
                & ( '3d.on/2' @ V_C @ ( '3d.intersection/2' @ V_L @ '3d.z-axis/0' ) )
                & ( V_S
                  = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_min_dot_0: $real] :
      ( V_S_min_dot_0
      = ( $sum @ 3.0 @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) ) ) ),
    answer_to(p_question,[])).

