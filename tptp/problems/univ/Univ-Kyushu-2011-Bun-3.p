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
%            Number of atoms       :  118 (  12 equality;  53 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :   90 (   0   ~;   0   |;   9   &;  79   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   18 (   1 sgn;  11   !;   5   ?;   2   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_M: '2d.Point'] :
      ( ( ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( ( '2d.distance/2' @ V_B @ V_C )
          = 2 )
        & ( ( '2d.v-/2' @ ( '2d.sv*/2' @ 4 @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.v+/2' @ ( '2d.vec/2' @ V_O @ V_B ) @ ( '2d.vec/2' @ V_O @ V_C ) ) )
          = '2d.zero-vector/0' )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) ) )
     => ( V_A
        = ( '2d.midpoint-of/2' @ V_O @ V_M ) ) ) )).

thf(p2,conjecture,(
    ! [Tv4: $tType,V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_M: Tv4] :
      ( ( ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( ( '2d.distance/2' @ V_B @ V_C )
          = 2 )
        & ( ( '2d.v-/2' @ ( '2d.sv*/2' @ 4 @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.v+/2' @ ( '2d.vec/2' @ V_O @ V_B ) @ ( '2d.vec/2' @ V_O @ V_C ) ) )
          = '2d.zero-vector/0' ) )
     => ( ( '+/2' @ ( '2d.distance^2/2' @ V_O @ V_B ) @ ( '2d.distance^2/2' @ V_O @ V_C ) )
        = 10 ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_OP: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_P: '2d.Point'] :
        ( ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( ( '2d.distance/2' @ V_B @ V_C )
          = 2 )
        & ( ( '2d.v-/2' @ ( '2d.sv*/2' @ 4 @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.v+/2' @ ( '2d.vec/2' @ V_O @ V_B ) @ ( '2d.vec/2' @ V_O @ V_C ) ) )
          = '2d.zero-vector/0' )
        & ( ( '-/2' @ ( '*/2' @ 4 @ ( '2d.distance^2/2' @ V_P @ V_A ) ) @ ( '+/2' @ ( '2d.distance^2/2' @ V_P @ V_B ) @ ( '2d.distance^2/2' @ V_P @ V_C ) ) )
          = -4 )
        & ( V_OP
          = ( '2d.distance/2' @ V_O @ V_P ) ) ) )).

thf(p3_answer,answer,(
    ^ [V_OP_dot_0: 'R'] : ( V_OP_dot_0 = 1 ) ),
    answer_to(p3_question,[])).
