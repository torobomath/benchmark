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

% Syntax   : Number of formulae    :    8 (   0 unit;   5 type;   0 defn)
%            Number of atoms       :  186 (   8 equality;  86 variable)
%            Maximal formula depth :   28 (  10 average)
%            Number of connectives :  167 (   0   ~;   0   |;  26   &; 140   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   5   :;   0   =)
%            Number of variables   :   20 (   0 sgn;  10   !;   8   ?;   2   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    3 func;    1 numbers)

include('axioms.ax').

thf('OAx/0_type',type,(
    'OAx/0': $real )).

thf('OAy/0_type',type,(
    'OAy/0': $real )).

thf('alpha/0_type',type,(
    'alpha/0': $real )).

thf('beta/0_type',type,(
    'beta/0': $real )).

thf('gamma/0_type',type,(
    'gamma/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Vector'
    @ ^ [V_OAp: '2d.Vector'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_OA: '2d.Vector',V_Ap: '2d.Point',V_Bp: '2d.Point',V_Cp: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-circumcenter-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.point-inside-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_OA
          = ( '2d.vec2d/2' @ 'OAx/0' @ 'OAy/0' ) )
        & ( V_OA
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( '2d.zero-vector/0'
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ 'alpha/0' @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ 'beta/0' @ ( '2d.vec/2' @ V_O @ V_B ) ) @ ( '2d.sv*/2' @ 'gamma/0' @ ( '2d.vec/2' @ V_O @ V_C ) ) ) ) )
        & ( $less @ 0.0 @ 'alpha/0' )
        & ( $less @ 0.0 @ 'beta/0' )
        & ( $less @ 0.0 @ 'gamma/0' )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_O @ V_A ) @ ( '2d.seg/2' @ V_B @ V_C ) @ V_Ap )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_O @ V_B ) @ ( '2d.seg/2' @ V_C @ V_A ) @ V_Bp )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_O @ V_C ) @ ( '2d.seg/2' @ V_A @ V_B ) @ V_Cp )
        & ( V_OAp
          = ( '2d.vec/2' @ V_O @ V_Ap ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_Ap: '2d.Point',V_Bp: '2d.Point',V_Cp: '2d.Point',V_alpha: $real,V_beta: $real,V_gamma: $real] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-circumcenter-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.point-inside-of/2' @ V_O @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.zero-vector/0'
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_alpha @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ V_beta @ ( '2d.vec/2' @ V_O @ V_B ) ) @ ( '2d.sv*/2' @ V_gamma @ ( '2d.vec/2' @ V_O @ V_C ) ) ) ) )
        & ( $less @ 0.0 @ V_alpha )
        & ( $less @ 0.0 @ V_beta )
        & ( $less @ 0.0 @ V_gamma )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_O @ V_A ) @ ( '2d.seg/2' @ V_B @ V_C ) @ V_Ap )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_O @ V_B ) @ ( '2d.seg/2' @ V_C @ V_A ) @ V_Bp )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_O @ V_C ) @ ( '2d.seg/2' @ V_A @ V_B ) @ V_Cp )
        & ( '2d.is-circumcenter-of/2' @ V_O @ ( '2d.triangle/3' @ V_Ap @ V_Bp @ V_Cp ) ) )
     => ( ( V_alpha = V_beta )
        & ( V_beta = V_gamma ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_OAp_dot_0: '2d.Vector'] :
      ( ( $less @ 0.0 @ 'alpha/0' )
      & ( $less @ 0.0 @ 'beta/0' )
      & ( $less @ 0.0 @ 'gamma/0' )
      & ( V_OAp_dot_0
        = ( '2d.sv*/2' @ ( $uminus @ ( $quotient @ 'alpha/0' @ ( $sum @ 'beta/0' @ 'gamma/0' ) ) ) @ ( '2d.vec2d/2' @ 'OAx/0' @ 'OAy/0' ) ) ) ) ),
    answer_to(p1_question,[])).

