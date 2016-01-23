%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2013, Science Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-14
%%
%% <PROBLEM-TEXT>
%% Consider the quadrangular pyramid $POABC$ whose base is the square
%% $OABC$ with the side length of $1$ and whose vertex is $P$, where the
%% point $P$ satisfies the conditions
%% $\vec{OA}\cdot\vec{OP} =\frac{1}{4}$ and
%% $\vec{OC}\cdot\vec{OP} =\frac{1}{2}$ for the inner product. Let $M$
%% be the point that internally divides the side $AP$ in the ratio of
%% $2 : 1$, and let $N$ be the midpoint of the side $CP$. Assume that
%% the straight line $PQ$ passing through the point $P$ and the point
%% $Q$ on the straight line $BC$ is perpendicular to the plane $OMN$.
%% Find the ratio of the length $BQ : QC$ and the length of the line
%% segment $OP$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   99 (   6 equality;  46 variable)
%            Maximal formula depth :   29 (  19 average)
%            Number of connectives :   87 (   0   ~;   0   |;  13   &;  74   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   11 (   0 sgn;   0   !;   9   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_ans: 'ListOf' @ 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_M: '3d.Point',V_N: '3d.Point',V_Q: '3d.Point',V_OMN: '3d.Shape'] :
        ( ( V_ans
          = ( 'cons/2' @ ( '//2' @ ( '3d.distance/2' @ V_B @ V_Q ) @ ( '3d.distance/2' @ V_Q @ V_C ) ) @ ( 'cons/2' @ ( '3d.distance/2' @ V_O @ V_P ) @ 'nil/0' ) ) )
        & ( '3d.is-regular-square/4' @ V_O @ V_A @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_O @ V_A )
          = 1 )
        & ( '3d.is-square-pyramid/5' @ V_P @ V_O @ V_A @ V_B @ V_C )
        & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_O @ V_A ) @ ( '3d.vec/2' @ V_O @ V_P ) )
          = ( '//2' @ 1 @ 4 ) )
        & ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_O @ V_C ) @ ( '3d.vec/2' @ V_O @ V_P ) )
          = ( '//2' @ 1 @ 2 ) )
        & ( '3d.divide-internally/4' @ V_M @ ( '3d.seg/2' @ V_A @ V_P ) @ 2 @ 1 )
        & ( V_N
          = ( '3d.midpoint-of/2' @ V_C @ V_P ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.line/2' @ V_B @ V_C ) )
        & ( '3d.plane-type/1' @ V_OMN )
        & ( '3d.on/2' @ V_O @ V_OMN )
        & ( '3d.on/2' @ V_M @ V_OMN )
        & ( '3d.on/2' @ V_N @ V_OMN )
        & ( '3d.is-normal-vector-of/2' @ ( '3d.vec/2' @ V_P @ V_Q ) @ V_OMN ) ) )).

thf(p1_answer,answer,(
    ^ [V_ans_dot_0: 'ListOf' @ 'R'] :
      ( V_ans_dot_0
      = ( 'cons/2' @ ( '//2' @ 1 @ 5 ) @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 21 ) @ 4 ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).
