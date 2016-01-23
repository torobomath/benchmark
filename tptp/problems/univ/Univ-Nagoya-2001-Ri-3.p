%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2001, Science Course, Problem 3
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-08-22
%%
%% <PROBLEM-TEXT>
%% Assume that the circumcenter (the center of a circumscribed circle)
%% $O$ of $\triangle ABC$ is inside the triangle, and ${\alpha}$,
%% ${\beta}$, and ${\gamma}$ are positive numbers that satisfy
%% ${\alpha}\vec{OA} + {\beta}\vec{OB} + {\gamma}\vec{OC} =\vec{0}$. Let
%% $A^{\prime }$, $B^{\prime }$, and $C^{\prime }$ be the intersections
%% of the straight lines $OA$, $OB$, and $OC$ and the sides $BC$, $CA$,
%% and $AB$, respectively.
%%
%% (1) Represent $\vec{OA^{\prime }}$ using $\vec{OA}$, ${\alpha}$, and
%% ${\beta}$, ${\gamma}$.
%%
%% (2) Prove that if the circumcenter of
%% $\triangle A^{\prime } B^{\prime } C^{\prime }$ matches $O$,
%% ${\alpha} = {\beta} = {\gamma}$ is true.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  185 (   8 equality; 102 variable)
%            Maximal formula depth :   28 (  22 average)
%            Number of connectives :  166 (   0   ~;   0   |;  26   &; 139   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   30 (   4 sgn;  10   !;   8   ?;   2   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_OAp: '2d.Vector'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_OA: '2d.Vector',V_Ap: '2d.Point',V_Bp: '2d.Point',V_Cp: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-circumcenter-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.point-inside-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_OA
          = ( '2d.vec2d/2' @ V_OAx @ V_OAy ) )
        & ( V_OA
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( '2d.zero-vector/0'
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_alpha @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ V_beta @ ( '2d.vec/2' @ V_O @ V_B ) ) @ ( '2d.sv*/2' @ V_gamma @ ( '2d.vec/2' @ V_O @ V_C ) ) ) ) )
        & ( '</2' @ 0 @ V_alpha )
        & ( '</2' @ 0 @ V_beta )
        & ( '</2' @ 0 @ V_gamma )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_O @ V_A ) @ ( '2d.seg/2' @ V_B @ V_C ) @ V_Ap )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_O @ V_B ) @ ( '2d.seg/2' @ V_C @ V_A ) @ V_Bp )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_O @ V_C ) @ ( '2d.seg/2' @ V_A @ V_B ) @ V_Cp )
        & ( V_OAp
          = ( '2d.vec/2' @ V_O @ V_Ap ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_Ap: '2d.Point',V_Bp: '2d.Point',V_Cp: '2d.Point',V_alpha: 'R',V_beta: 'R',V_gamma: 'R'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-circumcenter-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.point-inside-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.zero-vector/0'
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_alpha @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ V_beta @ ( '2d.vec/2' @ V_O @ V_B ) ) @ ( '2d.sv*/2' @ V_gamma @ ( '2d.vec/2' @ V_O @ V_C ) ) ) ) )
        & ( '</2' @ 0 @ V_alpha )
        & ( '</2' @ 0 @ V_beta )
        & ( '</2' @ 0 @ V_gamma )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_O @ V_A ) @ ( '2d.seg/2' @ V_B @ V_C ) @ V_Ap )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_O @ V_B ) @ ( '2d.seg/2' @ V_C @ V_A ) @ V_Bp )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_O @ V_C ) @ ( '2d.seg/2' @ V_A @ V_B ) @ V_Cp )
        & ( '2d.is-circumcenter-of/2' @ V_O @ ( '2d.triangle/3' @ V_Ap @ V_Bp @ V_Cp ) ) )
     => ( ( V_alpha = V_beta )
        & ( V_beta = V_gamma ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_OAp_dot_0: '2d.Vector'] :
      ( ( '</2' @ 0 @ V_alpha )
      & ( '</2' @ 0 @ V_beta )
      & ( '</2' @ 0 @ V_gamma )
      & ( V_OAp_dot_0
        = ( '2d.sv*/2' @ ( '-/1' @ ( '//2' @ V_alpha @ ( '+/2' @ V_beta @ V_gamma ) ) ) @ ( '2d.vec2d/2' @ V_OAx @ V_OAy ) ) ) ) ),
    answer_to(p1_question,[])).
