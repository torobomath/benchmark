%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2001, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-08
%%
%% <PROBLEM-TEXT>
%% Assume that for the different four points $P_1$, $P_2$, $P_3$, $P_4$,
%% and the vector $\vec{v}$ on the $xy$ plane,
%% $\vec{P_kP_m}\cdot\vec{v}\not= 0$ is true when $k\not= m$. Then, for
%% all the values of $m$ that are different from $k$, prove that there
%% exists the point $P_k$ that satisfies $\vec{P_kP_m}\cdot\vec{v}<0$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   74 (   3 equality;  34 variable)
%            Maximal formula depth :   19 (  19 average)
%            Number of connectives :   70 (   3   ~;   0   |;   5   &;  59   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :    9 (   0 sgn;   8   !;   1   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_P1: '2d.Point',V_P2: '2d.Point',V_P3: '2d.Point',V_P4: '2d.Point',V_v: '2d.Vector'] :
      ( ( ( 'pairwise-distinct/1' @ ( 'cons/2' @ V_P1 @ ( 'cons/2' @ V_P2 @ ( 'cons/2' @ V_P3 @ ( 'cons/2' @ V_P4 @ 'nil/0' ) ) ) ) )
        & ! [V_Pk: '2d.Point',V_Pm: '2d.Point'] :
            ( ( ( 'member/2' @ V_Pk @ ( 'cons/2' @ V_P1 @ ( 'cons/2' @ V_P2 @ ( 'cons/2' @ V_P3 @ ( 'cons/2' @ V_P4 @ 'nil/0' ) ) ) ) )
              & ( 'member/2' @ V_Pm @ ( 'cons/2' @ V_P1 @ ( 'cons/2' @ V_P2 @ ( 'cons/2' @ V_P3 @ ( 'cons/2' @ V_P4 @ 'nil/0' ) ) ) ) )
              & ( V_Pm != V_Pk ) )
           => ( ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_Pk @ V_Pm ) @ V_v )
             != 0 ) ) )
     => ? [V_Pk_dot_0: '2d.Point'] :
          ( ( 'member/2' @ V_Pk_dot_0 @ ( 'cons/2' @ V_P1 @ ( 'cons/2' @ V_P2 @ ( 'cons/2' @ V_P3 @ ( 'cons/2' @ V_P4 @ 'nil/0' ) ) ) ) )
          & ! [V_Pm_dot_0: '2d.Point'] :
              ( ( ( 'member/2' @ V_Pm_dot_0 @ ( 'cons/2' @ V_P1 @ ( 'cons/2' @ V_P2 @ ( 'cons/2' @ V_P3 @ ( 'cons/2' @ V_P4 @ 'nil/0' ) ) ) ) )
                & ( V_Pm_dot_0 != V_Pk_dot_0 ) )
             => ( '</2' @ ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_Pk_dot_0 @ V_Pm_dot_0 ) @ V_v ) @ 0 ) ) ) ) )).
