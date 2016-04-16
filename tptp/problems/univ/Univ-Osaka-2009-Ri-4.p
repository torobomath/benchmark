%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2009, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-02
%%
%% <PROBLEM-TEXT>
%% Consider the triangle $OAB$ on a plane, and let $M$ be the middle
%% point of the side $AB$. Assuming that
%% $\vec{a} =\frac{\vec{OA}}{|\vec{OA}|}$ and
%% $\vec{b} =\frac{\vec{OB}}{|\vec{OB}|}$, and consider the point $P$
%% such that $\vec{a}\cdot\vec{OP} = -\vec{b}\cdot\vec{OP} > 0$. Let $Q$
%% be the intersection of the perpendicular drawn from $A$ to the
%% straight line $OP$ and the straight line $OP$.
%%
%% (1) Prove that $\vec{MQ}$ is parallel to $\vec{b}$.
%%
%% (2) Prove that $|\vec{MQ}| =\frac{1}{2}(|\vec{OA}| + |\vec{OB}|)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  144 (   9 equality;  73 variable)
%            Maximal formula depth :   21 (  21 average)
%            Number of connectives :  124 (   0   ~;   0   |;  14   &; 108   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :   16 (   0 sgn;  16   !;   0   ?;   0   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    4 func;    3 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_M: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_a
          = ( '2d.sv*/2' @ ( $quotient @ 1.0 @ ( '2d.distance/2' @ V_O @ V_A ) ) @ ( '2d.vec/2' @ V_O @ V_A ) ) )
        & ( V_b
          = ( '2d.sv*/2' @ ( $quotient @ 1.0 @ ( '2d.distance/2' @ V_O @ V_B ) ) @ ( '2d.vec/2' @ V_O @ V_B ) ) )
        & ( ( '2d.inner-prod/2' @ V_a @ ( '2d.vec/2' @ V_O @ V_P ) )
          = ( $uminus @ ( '2d.inner-prod/2' @ V_b @ ( '2d.vec/2' @ V_O @ V_P ) ) ) )
        & ( $greater @ ( '2d.inner-prod/2' @ V_a @ ( '2d.vec/2' @ V_O @ V_P ) ) @ 0.0 )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.line/2' @ V_A @ V_Q ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.line/2' @ V_O @ V_P ) ) )
     => ( '2d.vec-parallel/2' @ ( '2d.vec/2' @ V_M @ V_Q ) @ V_b ) ) )).

thf(p2,conjecture,(
    ! [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_M: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_a
          = ( '2d.sv*/2' @ ( $quotient @ 1.0 @ ( '2d.distance/2' @ V_O @ V_A ) ) @ ( '2d.vec/2' @ V_O @ V_A ) ) )
        & ( V_b
          = ( '2d.sv*/2' @ ( $quotient @ 1.0 @ ( '2d.distance/2' @ V_O @ V_B ) ) @ ( '2d.vec/2' @ V_O @ V_B ) ) )
        & ( ( '2d.inner-prod/2' @ V_a @ ( '2d.vec/2' @ V_O @ V_P ) )
          = ( $uminus @ ( '2d.inner-prod/2' @ V_b @ ( '2d.vec/2' @ V_O @ V_P ) ) ) )
        & ( $greater @ ( '2d.inner-prod/2' @ V_a @ ( '2d.vec/2' @ V_O @ V_P ) ) @ 0.0 )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.line/2' @ V_A @ V_Q ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.line/2' @ V_O @ V_P ) ) )
     => ( ( '2d.distance/2' @ V_M @ V_Q )
        = ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( $sum @ ( '2d.distance/2' @ V_O @ V_A ) @ ( '2d.distance/2' @ V_O @ V_B ) ) ) ) ) )).

