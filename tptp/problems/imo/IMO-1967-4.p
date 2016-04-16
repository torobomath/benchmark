%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1967, Problem 4
%% SCORE:     6
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-01-27
%%
%% <PROBLEM-TEXT>
%% Let $A_0B_0C_0$ and $A_1B_1C_1$ be any two acute-angled triangles.
%% Consider all triangles $ABC$ that are similar to $\triangle A_1B_1C_1$
%% (so that vertices $A_1$, $B_1$, $C_1$ correspond to vertices $A$, $B$, $C$, respectively)
%% and circumscribed about triangle $A_0B_0C_0$
%% (where $A_0$ lies on $BC$, $B_0$ on $CA$, and $AC_0$ on $AB$).
%% Of all such possible triangles, determine the one with maximum area,
%% and construct it.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   14 (   0 unit;  12 type;   0 defn)
%            Number of atoms       :  225 (   9 equality;  99 variable)
%            Maximal formula depth :   43 (   7 average)
%            Number of connectives :  205 (   0   ~;   0   |;  32   &; 173   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (  12   :;   0   =)
%            Number of variables   :   24 (   0 sgn;   0   !;  21   ?;   3   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf('A0x/0_type',type,(
    'A0x/0': $real )).

thf('A0y/0_type',type,(
    'A0y/0': $real )).

thf('A1x/0_type',type,(
    'A1x/0': $real )).

thf('A1y/0_type',type,(
    'A1y/0': $real )).

thf('B0x/0_type',type,(
    'B0x/0': $real )).

thf('B0y/0_type',type,(
    'B0y/0': $real )).

thf('B1x/0_type',type,(
    'B1x/0': $real )).

thf('B1y/0_type',type,(
    'B1y/0': $real )).

thf('C0x/0_type',type,(
    'C0x/0': $real )).

thf('C0y/0_type',type,(
    'C0y/0': $real )).

thf('C1x/0_type',type,(
    'C1x/0': $real )).

thf('C1y/0_type',type,(
    'C1y/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_X: '2d.Shape'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_A0: '2d.Point',V_B0: '2d.Point',V_C0: '2d.Point',V_A1: '2d.Point',V_B1: '2d.Point',V_C1: '2d.Point'] :
        ( ( V_A0
          = ( '2d.point/2' @ 'A0x/0' @ 'A0y/0' ) )
        & ( V_B0
          = ( '2d.point/2' @ 'B0x/0' @ 'B0y/0' ) )
        & ( V_C0
          = ( '2d.point/2' @ 'C0x/0' @ 'C0y/0' ) )
        & ( V_A1
          = ( '2d.point/2' @ 'A1x/0' @ 'A1y/0' ) )
        & ( V_B1
          = ( '2d.point/2' @ 'B1x/0' @ 'B1y/0' ) )
        & ( V_C1
          = ( '2d.point/2' @ 'C1x/0' @ 'C1y/0' ) )
        & ( '2d.is-acute-triangle/3' @ V_A0 @ V_B0 @ V_C0 )
        & ( '2d.is-acute-triangle/3' @ V_A1 @ V_B1 @ V_C1 )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_X
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.ordered-similar/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ ( '2d.triangle/3' @ V_A1 @ V_B1 @ V_C1 ) )
        & ( '2d.on/2' @ V_A0 @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_B0 @ ( '2d.seg/2' @ V_C @ V_A ) )
        & ( '2d.on/2' @ V_C0 @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_x: $real] :
              ? [V_A2: '2d.Point',V_B2: '2d.Point',V_C2: '2d.Point'] :
                ( ( '2d.is-triangle/3' @ V_A2 @ V_B2 @ V_C2 )
                & ( '2d.ordered-similar/2' @ ( '2d.triangle/3' @ V_A2 @ V_B2 @ V_C2 ) @ ( '2d.triangle/3' @ V_A1 @ V_B1 @ V_C1 ) )
                & ( '2d.on/2' @ V_A0 @ ( '2d.seg/2' @ V_B2 @ V_C2 ) )
                & ( '2d.on/2' @ V_B0 @ ( '2d.seg/2' @ V_C2 @ V_A2 ) )
                & ( '2d.on/2' @ V_C0 @ ( '2d.seg/2' @ V_A2 @ V_B2 ) )
                & ( V_x
                  = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A2 @ V_B2 @ V_C2 ) ) ) ) )
          @ ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_X_dot_0: '2d.Shape'] :
    ? [V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point',V_C_dot_0: '2d.Point',V_Oa: '2d.Point',V_Ob: '2d.Point',V_Oc: '2d.Point',V_Ap: '2d.Point',V_Bp: '2d.Point',V_Cp: '2d.Point'] :
      ( ( V_X_dot_0
        = ( '2d.triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 ) )
      & ( '2d.on/2' @ ( '2d.point/2' @ 'A0x/0' @ 'A0y/0' ) @ ( '2d.seg/2' @ V_B_dot_0 @ V_C_dot_0 ) )
      & ( '2d.on/2' @ ( '2d.point/2' @ 'B0x/0' @ 'B0y/0' ) @ ( '2d.seg/2' @ V_C_dot_0 @ V_A_dot_0 ) )
      & ( '2d.on/2' @ ( '2d.point/2' @ 'C0x/0' @ 'C0y/0' ) @ ( '2d.seg/2' @ V_A_dot_0 @ V_B_dot_0 ) )
      & ( '2d.parallel/2' @ ( '2d.line/2' @ V_Ob @ V_Oc ) @ ( '2d.line/2' @ V_B_dot_0 @ V_C_dot_0 ) )
      & ( '2d.parallel/2' @ ( '2d.line/2' @ V_Oc @ V_Oa ) @ ( '2d.line/2' @ V_C_dot_0 @ V_A_dot_0 ) )
      & ( '2d.parallel/2' @ ( '2d.line/2' @ V_Oa @ V_Ob ) @ ( '2d.line/2' @ V_A_dot_0 @ V_B_dot_0 ) )
      & ( '2d.on/2' @ V_Ap @ ( '2d.seg/2' @ V_B_dot_0 @ V_C_dot_0 ) )
      & ( '2d.on/2' @ V_Bp @ ( '2d.seg/2' @ V_C_dot_0 @ V_A_dot_0 ) )
      & ( '2d.on/2' @ V_Cp @ ( '2d.seg/2' @ V_A_dot_0 @ V_B_dot_0 ) )
      & ( '2d.ordered-similar/2' @ ( '2d.triangle/3' @ V_Ap @ V_Bp @ V_Cp ) @ ( '2d.triangle/3' @ ( '2d.point/2' @ 'A1x/0' @ 'A1y/0' ) @ ( '2d.point/2' @ 'B1x/0' @ 'B1y/0' ) @ ( '2d.point/2' @ 'C1x/0' @ 'C1y/0' ) ) )
      & ( '2d.is-circumcenter-of/2' @ V_Oa @ ( '2d.triangle/3' @ V_Ap @ ( '2d.point/2' @ 'B0x/0' @ 'B0y/0' ) @ ( '2d.point/2' @ 'C0x/0' @ 'C0y/0' ) ) )
      & ( '2d.is-circumcenter-of/2' @ V_Ob @ ( '2d.triangle/3' @ ( '2d.point/2' @ 'A0x/0' @ 'A0y/0' ) @ V_Bp @ ( '2d.point/2' @ 'C0x/0' @ 'C0y/0' ) ) )
      & ( '2d.is-circumcenter-of/2' @ V_Oc @ ( '2d.triangle/3' @ ( '2d.point/2' @ 'A0x/0' @ 'A0y/0' ) @ ( '2d.point/2' @ 'B0x/0' @ 'B0y/0' ) @ V_Cp ) ) ) ),
    answer_to(p_question,[])).

