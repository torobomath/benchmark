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

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  229 (  16 equality; 113 variable)
%            Maximal formula depth :   23 (  22 average)
%            Number of connectives :  194 (   0   ~;   0   |;  23   &; 168   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   24 (   0 sgn;  24   !;   0   ?;   0   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_M: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_a
          = ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_O @ V_A ) ) @ ( '2d.vec/2' @ V_O @ V_A ) ) )
        & ( V_b
          = ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_O @ V_B ) ) @ ( '2d.vec/2' @ V_O @ V_B ) ) )
        & ( ( '2d.inner-prod/2' @ V_a @ ( '2d.vec/2' @ V_O @ V_P ) )
          = ( '-/1' @ ( '2d.inner-prod/2' @ V_b @ ( '2d.vec/2' @ V_O @ V_P ) ) ) )
        & ( '>/2' @ ( '2d.inner-prod/2' @ V_a @ ( '2d.vec/2' @ V_O @ V_P ) ) @ 0 )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.line/2' @ V_A @ V_Q ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.line/2' @ V_O @ V_P ) ) )
     => ( '2d.vec-parallel/2' @ ( '2d.vec/2' @ V_M @ V_Q ) @ V_b ) ) )).

thf(p2,conjecture,(
    ! [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_M: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_a
          = ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_O @ V_A ) ) @ ( '2d.vec/2' @ V_O @ V_A ) ) )
        & ( V_b
          = ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_O @ V_B ) ) @ ( '2d.vec/2' @ V_O @ V_B ) ) )
        & ( ( '2d.inner-prod/2' @ V_a @ ( '2d.vec/2' @ V_O @ V_P ) )
          = ( '-/1' @ ( '2d.inner-prod/2' @ V_b @ ( '2d.vec/2' @ V_O @ V_P ) ) ) )
        & ( '>/2' @ ( '2d.inner-prod/2' @ V_a @ ( '2d.vec/2' @ V_O @ V_P ) ) @ 0 )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.line/2' @ V_A @ V_Q ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.line/2' @ V_O @ V_P ) ) )
     => ( ( '2d.distance/2' @ V_M @ V_Q )
        = ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '+/2' @ ( '2d.distance/2' @ V_O @ V_A ) @ ( '2d.distance/2' @ V_O @ V_B ) ) ) ) ) )).

thf(p2_1,conjecture,(
    ! [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_M: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ 1 @ 0 ) )
        & ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_a
          = ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_O @ V_A ) ) @ ( '2d.vec/2' @ V_O @ V_A ) ) )
        & ( V_b
          = ( '2d.sv*/2' @ ( '//2' @ 1 @ ( '2d.distance/2' @ V_O @ V_B ) ) @ ( '2d.vec/2' @ V_O @ V_B ) ) )
        & ( ( '2d.inner-prod/2' @ V_a @ ( '2d.vec/2' @ V_O @ V_P ) )
          = ( '-/1' @ ( '2d.inner-prod/2' @ V_b @ ( '2d.vec/2' @ V_O @ V_P ) ) ) )
        & ( '>/2' @ ( '2d.inner-prod/2' @ V_a @ ( '2d.vec/2' @ V_O @ V_P ) ) @ 0 )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.line/2' @ V_A @ V_Q ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.line/2' @ V_O @ V_P ) ) )
     => ( ( '2d.distance/2' @ V_M @ V_Q )
        = ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '+/2' @ ( '2d.distance/2' @ V_O @ V_A ) @ ( '2d.distance/2' @ V_O @ V_B ) ) ) ) ) )).
