%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2009, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-25
%%
%% <PROBLEM-TEXT>
%% Consider the triangle $OAB$ on a plane, and let $\vec{a} =\vec{OA}$,
%% $\vec{b} =\vec{OB}$, and $t =\frac{|\vec{a}|}{2 |\vec{b}|}$. Let $C$
%% be the point that internally divide the side $OA$ into the ratio
%% $1 : 2$, and let $C$ be the point that satisfies
%% $\vec{OD} = t\vec{b}$. Assuming that $\vec{AD}$ is orthogonal to
%% $\vec{OB}$, and $\vec{BC}$ is orthogonal to $\vec{OA}$, answer the
%% following questions:
%%
%% (1) Find the value of $\angle AOB$.
%%
%% (2) Find the value of $t$.
%%
%% (3) Let $P$ be the intersection of $AD$ and $BC$, represent
%% $\vec{OP}$ using $\vec{a}$ and $\vec{b}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  220 (  18 equality; 102 variable)
%            Maximal formula depth :   29 (  15 average)
%            Number of connectives :  180 (   0   ~;   0   |;  25   &; 155   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :;   0   =)
%            Number of variables   :   32 (   0 sgn;   0   !;  26   ?;   6   ^)
%                                         (  32   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    2 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_AOB: $real] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_t: $real,V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_a
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( V_t
          = ( $quotient @ ( '2d.radius/1' @ V_a ) @ ( $product @ 2.0 @ ( '2d.radius/1' @ V_b ) ) ) )
        & ( '2d.divide-internally/4' @ V_C @ ( '2d.seg/2' @ V_O @ V_A ) @ 1.0 @ 2.0 )
        & ( ( '2d.vec/2' @ V_O @ V_D )
          = ( '2d.sv*/2' @ V_t @ V_b ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_O @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_O @ V_A ) )
        & ( V_AOB
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_O @ V_B ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_t: $real] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_a
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( V_t
          = ( $quotient @ ( '2d.radius/1' @ V_a ) @ ( $product @ 2.0 @ ( '2d.radius/1' @ V_b ) ) ) )
        & ( '2d.divide-internally/4' @ V_C @ ( '2d.seg/2' @ V_O @ V_A ) @ 1.0 @ 2.0 )
        & ( ( '2d.vec/2' @ V_O @ V_D )
          = ( '2d.sv*/2' @ V_t @ V_b ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_O @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_O @ V_A ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_t: $real,V_C: '2d.Point',V_D: '2d.Point',V_P: '2d.Point',V_x: $real,V_y: $real] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_a
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( V_t
          = ( $quotient @ ( '2d.radius/1' @ V_a ) @ ( $product @ 2.0 @ ( '2d.radius/1' @ V_b ) ) ) )
        & ( '2d.divide-internally/4' @ V_C @ ( '2d.seg/2' @ V_O @ V_A ) @ 1.0 @ 2.0 )
        & ( ( '2d.vec/2' @ V_O @ V_D )
          = ( '2d.sv*/2' @ V_t @ V_b ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_O @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_O @ V_A ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_B @ V_C ) @ V_P )
        & ( ( '2d.vec/2' @ V_O @ V_P )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_x @ V_a ) @ ( '2d.sv*/2' @ V_y @ V_b ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_AOB_dot_0: $real] :
      ( V_AOB_dot_0
      = ( $product @ 60.0 @ 'Degree/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_t_dot_0: $real] :
      ( V_t_dot_0
      = ( $quotient @ 3.0 @ 4.0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 9.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 2.0 @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p3_question,[])).

