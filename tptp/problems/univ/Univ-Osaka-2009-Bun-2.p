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

% Syntax   : Number of formulae    :   10 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  349 (  33 equality; 166 variable)
%            Maximal formula depth :   29 (  15 average)
%            Number of connectives :  275 (   0   ~;   0   |;  44   &; 231   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   51 (   0 sgn;   0   !;  41   ?;  10   ^)
%                                         (  51   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_AOB: 'R'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_t: 'R',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_a
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( V_t
          = ( '//2' @ ( '2d.radius/1' @ V_a ) @ ( '*/2' @ 2 @ ( '2d.radius/1' @ V_b ) ) ) )
        & ( '2d.divide-internally/4' @ V_C @ ( '2d.seg/2' @ V_O @ V_A ) @ 1 @ 2 )
        & ( ( '2d.vec/2' @ V_O @ V_D )
          = ( '2d.sv*/2' @ V_t @ V_b ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_O @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_O @ V_A ) )
        & ( V_AOB
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_O @ V_B ) ) ) ) )).

thf(p1_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_AOB: 'R'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_t: 'R',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ 3 @ 0 ) )
        & ( V_a
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( V_t
          = ( '//2' @ ( '2d.radius/1' @ V_a ) @ ( '*/2' @ 2 @ ( '2d.radius/1' @ V_b ) ) ) )
        & ( '2d.divide-internally/4' @ V_C @ ( '2d.seg/2' @ V_O @ V_A ) @ 1 @ 2 )
        & ( ( '2d.vec/2' @ V_O @ V_D )
          = ( '2d.sv*/2' @ V_t @ V_b ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_O @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_O @ V_A ) )
        & ( V_AOB
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_O @ V_B ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_a
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( V_t
          = ( '//2' @ ( '2d.radius/1' @ V_a ) @ ( '*/2' @ 2 @ ( '2d.radius/1' @ V_b ) ) ) )
        & ( '2d.divide-internally/4' @ V_C @ ( '2d.seg/2' @ V_O @ V_A ) @ 1 @ 2 )
        & ( ( '2d.vec/2' @ V_O @ V_D )
          = ( '2d.sv*/2' @ V_t @ V_b ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_O @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_O @ V_A ) ) ) )).

thf(p2_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_O
          = ( '2d.point/2' @ 1 @ 1 ) )
        & ( V_A
          = ( '2d.point/2' @ 1 @ 4 ) )
        & ( V_a
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( V_t
          = ( '//2' @ ( '2d.radius/1' @ V_a ) @ ( '*/2' @ 2 @ ( '2d.radius/1' @ V_b ) ) ) )
        & ( '2d.divide-internally/4' @ V_C @ ( '2d.seg/2' @ V_O @ V_A ) @ 1 @ 2 )
        & ( ( '2d.vec/2' @ V_O @ V_D )
          = ( '2d.sv*/2' @ V_t @ V_b ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_O @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_O @ V_A ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector',V_t: 'R',V_C: '2d.Point',V_D: '2d.Point',V_P: '2d.Point',V_x: 'R',V_y: 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.is-triangle/3' @ V_O @ V_A @ V_B )
        & ( V_a
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( V_t
          = ( '//2' @ ( '2d.radius/1' @ V_a ) @ ( '*/2' @ 2 @ ( '2d.radius/1' @ V_b ) ) ) )
        & ( '2d.divide-internally/4' @ V_C @ ( '2d.seg/2' @ V_O @ V_A ) @ 1 @ 2 )
        & ( ( '2d.vec/2' @ V_O @ V_D )
          = ( '2d.sv*/2' @ V_t @ V_b ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_O @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_O @ V_A ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_B @ V_C ) @ V_P )
        & ( ( '2d.vec/2' @ V_O @ V_P )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_x @ V_a ) @ ( '2d.sv*/2' @ V_y @ V_b ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_AOB_dot_0: 'R'] :
      ( V_AOB_dot_0
      = ( '//2' @ 1 @ 2 ) ) ),
    answer_to(p1_question,[])).

thf(p1_1_answer,answer,(
    ^ [V_AOB_dot_0: 'R'] :
      ( V_AOB_dot_0
      = ( '//2' @ 1 @ 2 ) ) ),
    answer_to(p1_1_question,[])).

thf(p2_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( V_t_dot_0
      = ( '//2' @ 3 @ 4 ) ) ),
    answer_to(p2_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( V_t_dot_0
      = ( '//2' @ 3 @ 4 ) ) ),
    answer_to(p2_1_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ ( '//2' @ 1 @ 9 ) @ ( 'cons/2' @ ( '//2' @ 2 @ 3 ) @ 'nil/0' ) ) ) ),
    answer_to(p3_question,[])).
