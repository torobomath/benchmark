%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2003, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-18
%%
%% <PROBLEM-TEXT>
%% For the triangle $ABC$, assume that $AB = 1$, $AC = 2$, and
%% $\angle A = 60^{\circ}$. For the positive numbers $m$ and $n$, let
%% $D$, $E$, and $F$ be the points that internally divide the sides
%% $BC$, $CA$, and $AB$ in a ratio of $m : n$, respectively.
%%
%% (1) When $\vec{DE}$ and $\vec{EF}$ are perpendicular to each other,
%% find the ratio $m : n$.
%%
%% (2) Prove that $\vec{AD}$ and $\vec{EF}$ are not perpendicular to
%% each other for any positive integers $m$ and $n$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  139 (  13 equality;  68 variable)
%            Maximal formula depth :   22 (  15 average)
%            Number of connectives :  112 (   1   ~;   1   |;  16   &;  94   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   22 (   0 sgn;   0   !;  18   ?;   4   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_mn: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_m: 'R',V_n: 'R'] :
        ( ( ( '2d.distance/2' @ V_A @ V_B )
          = 1 )
        & ( ( '2d.distance/2' @ V_A @ V_C )
          = 2 )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
          = ( '//2' @ 'Pi/0' @ 3 ) )
        & ( '2d.divide-internally/4' @ V_D @ ( '2d.seg/2' @ V_B @ V_C ) @ V_m @ V_n )
        & ( '2d.divide-internally/4' @ V_E @ ( '2d.seg/2' @ V_C @ V_A ) @ V_m @ V_n )
        & ( '2d.divide-internally/4' @ V_F @ ( '2d.seg/2' @ V_A @ V_B ) @ V_m @ V_n )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_D @ V_E ) @ ( '2d.line/2' @ V_E @ V_F ) )
        & ( V_mn
          = ( '//2' @ V_m @ V_n ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_mn: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_m: 'R',V_n: 'R'] :
        ( ( ( '2d.distance/2' @ V_A @ V_B )
          = 1 )
        & ( ( '2d.distance/2' @ V_A @ V_C )
          = 2 )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
          = ( '//2' @ 'Pi/0' @ 3 ) )
        & ( '2d.divide-internally/4' @ V_D @ ( '2d.seg/2' @ V_B @ V_C ) @ V_m @ V_n )
        & ( '2d.divide-internally/4' @ V_E @ ( '2d.seg/2' @ V_C @ V_A ) @ V_m @ V_n )
        & ( '2d.divide-internally/4' @ V_F @ ( '2d.seg/2' @ V_A @ V_B ) @ V_m @ V_n )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_E @ V_F ) )
        & ( V_mn
          = ( 'cons/2' @ V_m @ ( 'cons/2' @ V_n @ 'nil/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_mn_dot_0: 'R'] :
      ( ( V_mn_dot_0 = 3 )
      | ( V_mn_dot_0 = 1 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_mn_dot_0: 'ListOf' @ 'R'] :
    ? [V_m_dot_0: 'R',V_n_dot_0: 'R'] :
      ( ( V_mn_dot_0
        = ( 'cons/2' @ V_m_dot_0 @ ( 'cons/2' @ V_n_dot_0 @ 'nil/0' ) ) )
      & ( 0 != V_m_dot_0 )
      & ( 0
        = ( '-/2' @ ( '-/2' @ ( '^/2' @ V_m_dot_0 @ 2 ) @ ( '*/2' @ 3 @ ( '*/2' @ V_m_dot_0 @ V_n_dot_0 ) ) ) @ ( '^/2' @ V_n_dot_0 @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).
