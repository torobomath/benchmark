%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2001, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-09
%%
%% <PROBLEM-TEXT>
%% Assume that for the vertices $P_1$ and $P_2, \cdots, P_6$ of a
%% regular octahedron and the vector $\vec{v}$ in the $xyz$ space,
%% $\vec{P_kP_m}\cdot\vec{v}\not= 0$ is true when $k\not= m$. Then, for
%% all the values of $m$ that are different from $k$, prove that there
%% exists the point $P_k$ that satisfies $\vec{P_kP_m}\cdot\vec{v}<0$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   87 (   3 equality;  44 variable)
%            Maximal formula depth :   23 (  23 average)
%            Number of connectives :   83 (   3   ~;   0   |;   5   &;  72   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :   11 (   0 sgn;  10   !;   1   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_P1: '3d.Point',V_P2: '3d.Point',V_P3: '3d.Point',V_P4: '3d.Point',V_P5: '3d.Point',V_P6: '3d.Point',V_v: '3d.Vector'] :
      ( ( ( '3d.is-regular-octahedron/6' @ V_P1 @ V_P2 @ V_P3 @ V_P4 @ V_P5 @ V_P6 )
        & ! [V_Pk: '3d.Point',V_Pm: '3d.Point'] :
            ( ( ( 'member/2' @ V_Pk @ ( 'cons/2' @ V_P1 @ ( 'cons/2' @ V_P2 @ ( 'cons/2' @ V_P3 @ ( 'cons/2' @ V_P4 @ ( 'cons/2' @ V_P5 @ ( 'cons/2' @ V_P6 @ 'nil/0' ) ) ) ) ) ) )
              & ( 'member/2' @ V_Pm @ ( 'cons/2' @ V_P1 @ ( 'cons/2' @ V_P2 @ ( 'cons/2' @ V_P3 @ ( 'cons/2' @ V_P4 @ ( 'cons/2' @ V_P5 @ ( 'cons/2' @ V_P6 @ 'nil/0' ) ) ) ) ) ) )
              & ( V_Pk != V_Pm ) )
           => ( ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_Pk @ V_Pm ) @ V_v )
             != 0 ) ) )
     => ? [V_Pk_dot_0: '3d.Point'] :
          ( ( 'member/2' @ V_Pk_dot_0 @ ( 'cons/2' @ V_P1 @ ( 'cons/2' @ V_P2 @ ( 'cons/2' @ V_P3 @ ( 'cons/2' @ V_P4 @ ( 'cons/2' @ V_P5 @ ( 'cons/2' @ V_P6 @ 'nil/0' ) ) ) ) ) ) )
          & ! [V_Pm_dot_0: '3d.Point'] :
              ( ( ( 'member/2' @ V_Pm_dot_0 @ ( 'cons/2' @ V_P1 @ ( 'cons/2' @ V_P2 @ ( 'cons/2' @ V_P3 @ ( 'cons/2' @ V_P4 @ ( 'cons/2' @ V_P5 @ ( 'cons/2' @ V_P6 @ 'nil/0' ) ) ) ) ) ) )
                & ( V_Pm_dot_0 != V_Pk_dot_0 ) )
             => ( '</2' @ ( '3d.inner-prod/2' @ ( '3d.vec/2' @ V_Pk_dot_0 @ V_Pm_dot_0 ) @ V_v ) @ 0 ) ) ) ) )).
