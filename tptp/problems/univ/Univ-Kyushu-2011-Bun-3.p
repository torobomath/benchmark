%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2011, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-21
%%
%% <PROBLEM-TEXT>
%% Consider the right triangle $ABC$ on a plane, and let $2$ be the
%% length of the hypotenuse $BC$ of the triangle. Assume that the point
%% $O$ satisfies $4\vec{OA} -\vec{OB} -\vec{OC} =\vec{0}$. Answer the
%% following questions:
%%
%% (1) Let $M$ be the midpoint of the side $BC$, then prove that the
%% point $A$ is at the midpoint of the line segment $OM$.
%%
%% (2) Prove that $|\vec{OB}|^2 + |\vec{OC}|^2 = 10$.
%%
%% (3) Let $P$ be the point that satisfies
%% $4 |\vec{PA}|^2 - |\vec{PB}|^2 - |\vec{PC}|^2 = - 4$, then find the
%% value of $|\vec{OP}|$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  119 (  12 equality;  53 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :   91 (   0   ~;   0   |;   9   &;  80   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   9   !;   5   ?;   2   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_M: '2d.Point'] :
      ( ( ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( ( '2d.distance/2' @ V_B @ V_C )
          = 2.0 )
        & ( ( '2d.v-/2' @ ( '2d.sv*/2' @ 4.0 @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.v+/2' @ ( '2d.vec/2' @ V_O @ V_B ) @ ( '2d.vec/2' @ V_O @ V_C ) ) )
          = '2d.zero-vector/0' )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) ) )
     => ( V_A
        = ( '2d.midpoint-of/2' @ V_O @ V_M ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point'] :
      ( ( ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( ( '2d.distance/2' @ V_B @ V_C )
          = 2.0 )
        & ( ( '2d.v-/2' @ ( '2d.sv*/2' @ 4.0 @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.v+/2' @ ( '2d.vec/2' @ V_O @ V_B ) @ ( '2d.vec/2' @ V_O @ V_C ) ) )
          = '2d.zero-vector/0' ) )
     => ( ( $sum @ ( '2d.distance^2/2' @ V_O @ V_B ) @ ( '2d.distance^2/2' @ V_O @ V_C ) )
        = 10.0 ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_OP: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_P: '2d.Point'] :
        ( ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( ( '2d.distance/2' @ V_B @ V_C )
          = 2.0 )
        & ( ( '2d.v-/2' @ ( '2d.sv*/2' @ 4.0 @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.v+/2' @ ( '2d.vec/2' @ V_O @ V_B ) @ ( '2d.vec/2' @ V_O @ V_C ) ) )
          = '2d.zero-vector/0' )
        & ( ( $difference @ ( $product @ 4.0 @ ( '2d.distance^2/2' @ V_P @ V_A ) ) @ ( $sum @ ( '2d.distance^2/2' @ V_P @ V_B ) @ ( '2d.distance^2/2' @ V_P @ V_C ) ) )
          = -4.0 )
        & ( V_OP
          = ( '2d.distance/2' @ V_O @ V_P ) ) ) )).

thf(p3_answer,answer,(
    ^ [V_OP_dot_0: $real] : ( V_OP_dot_0 = 1.0 ) ),
    answer_to(p3_question,[])).

