%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2013, Humanities Course, Problem 2
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2015-01-08
%%
%% <PROBLEM-TEXT>
%% For the parallelogram $ABCD$, let $E$ be the point that internally
%% divides the side $AB$ in a ratio of $1:1$, $F$ the point that
%% internally divides the side $BC$ in a ratio of $2:1$, and $G$, the
%% point that internally divides the side $CD$ in a ratio of $3:1$. Let
%% $P$ be the intersection of the line segments $CE$ and $FG$, let $Q$
%% be the intersection of the extended line of the line segment $AP$ and
%% the side $BC$, then find the ratio $AP:PQ$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  145 (   2 equality;  25 variable)
%            Maximal formula depth :   27 (  16 average)
%            Number of connectives :  139 (   0   ~;   0   |;   3   &; 136   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   6   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    1 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_r: $real] :
      ? [V_p1: $real,V_p2: $real,V_d1: $real,V_d2: $real,V_q1: $real,V_q2: $real] :
        ( ( $less @ 0.0 @ V_d2 )
        & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.line/2' @ ( '2d.vec->point/1' @ ( '2d.v+/2' @ ( '2d.vec2d/2' @ 1.0 @ 0.0 ) @ ( '2d.vec2d/2' @ V_d1 @ V_d2 ) ) ) @ ( '2d.vec->point/1' @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( $quotient @ 1.0 @ 2.0 ) @ ( '2d.vec/2' @ '2d.origin/0' @ '2d.origin/0' ) ) @ ( '2d.sv*/2' @ ( $quotient @ 1.0 @ 2.0 ) @ ( '2d.vec/2' @ '2d.origin/0' @ ( '2d.vec->point/1' @ ( '2d.vec2d/2' @ 1.0 @ 0.0 ) ) ) ) ) ) ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.line/2' @ ( '2d.vec->point/1' @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( $quotient @ 1.0 @ 3.0 ) @ ( '2d.vec/2' @ '2d.origin/0' @ ( '2d.vec->point/1' @ ( '2d.vec2d/2' @ 1.0 @ 0.0 ) ) ) ) @ ( '2d.sv*/2' @ ( $quotient @ 2.0 @ 3.0 ) @ ( '2d.vec/2' @ '2d.origin/0' @ ( '2d.vec->point/1' @ ( '2d.v+/2' @ ( '2d.vec2d/2' @ 1.0 @ 0.0 ) @ ( '2d.vec2d/2' @ V_d1 @ V_d2 ) ) ) ) ) ) ) @ ( '2d.vec->point/1' @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( $quotient @ 1.0 @ 4.0 ) @ ( '2d.vec/2' @ '2d.origin/0' @ ( '2d.vec->point/1' @ ( '2d.v+/2' @ ( '2d.vec2d/2' @ 1.0 @ 0.0 ) @ ( '2d.vec2d/2' @ V_d1 @ V_d2 ) ) ) ) ) @ ( '2d.sv*/2' @ ( $quotient @ 3.0 @ 4.0 ) @ ( '2d.vec/2' @ '2d.origin/0' @ ( '2d.vec->point/1' @ ( '2d.vec2d/2' @ V_d1 @ V_d2 ) ) ) ) ) ) ) @ ( 'nil/0' @ '2d.Shape' ) ) ) @ ( '2d.point/2' @ V_p1 @ V_p2 ) )
        & ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ V_p1 @ V_p2 ) ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.line/2' @ ( '2d.vec->point/1' @ ( '2d.vec2d/2' @ 1.0 @ 0.0 ) ) @ ( '2d.vec->point/1' @ ( '2d.v+/2' @ ( '2d.vec2d/2' @ 1.0 @ 0.0 ) @ ( '2d.vec2d/2' @ V_d1 @ V_d2 ) ) ) ) @ ( 'nil/0' @ '2d.Shape' ) ) ) @ ( '2d.point/2' @ V_q1 @ V_q2 ) )
        & ( V_r
          = ( 'sqrt/1' @ ( $quotient @ ( '2d.distance^2/2' @ ( '2d.point/2' @ V_p1 @ V_p2 ) @ ( '2d.point/2' @ V_q1 @ V_q2 ) ) @ ( '2d.distance^2/2' @ '2d.origin/0' @ ( '2d.point/2' @ V_p1 @ V_p2 ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_r_dot_0: $real] :
      ( V_r_dot_0
      = ( $quotient @ 3.0 @ 19.0 ) ) ),
    answer_to(p_question,[])).

