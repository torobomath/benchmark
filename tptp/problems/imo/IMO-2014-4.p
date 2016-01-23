%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2014, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-14
%%
%% <PROBLEM-TEXT>
%% Points $P$ and $Q$ lie on side $BC$ of acute-angled triangle $ABC$ so that
%% $\angle PAB = \angle BCA$ and $\angle CAQ = \angle ABC$.
%% Points $M$ and $N$ lie on lines $AP$ and $AQ$, respectively, such that $P$ is the
%% midpoint of $AM$, and $Q$ is the midpoint of $AN$. Prove that lines $BM$ and $CN$
%% intersect on the circumcircle of triangle $ABC$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   77 (   4 equality;  45 variable)
%            Maximal formula depth :   25 (  25 average)
%            Number of connectives :   68 (   0   ~;   0   |;  11   &;  56   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    9 (   0 sgn;   8   !;   1   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_M: '2d.Point',V_N: '2d.Point',V_K: '2d.Shape'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_A @ V_B ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_Q ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) )
        & ( '2d.on/2' @ V_M @ ( '2d.line/2' @ V_A @ V_P ) )
        & ( '2d.on/2' @ V_N @ ( '2d.line/2' @ V_A @ V_Q ) )
        & ( V_P
          = ( '2d.seg-midpoint-of/1' @ ( '2d.seg/2' @ V_A @ V_M ) ) )
        & ( V_Q
          = ( '2d.seg-midpoint-of/1' @ ( '2d.seg/2' @ V_A @ V_N ) ) )
        & ( '2d.circle-type/1' @ V_K )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_K ) )
     => ? [V_P_dot_0: '2d.Point'] :
          ( ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_M ) @ ( '2d.line/2' @ V_C @ V_N ) @ V_P_dot_0 )
          & ( '2d.on/2' @ V_P_dot_0 @ V_K ) ) ) )).
