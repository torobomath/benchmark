%% DOMAIN:    Function and Limit
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1997, Science Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Let $r$ be a real number that satisfies $0<r<1$. Consider the origin
%% $O(0, 0, 0)$ and the points $A(1, 0, 0)$ and $B(0, 1, 0)$ in the
%% $xyz$ space.
%%
%% (1) Find the range of $r$ such that there exists the point $r$ in the
%% $xyz$ space that satisfies $|\vec{PA}|=|\vec{PB}|=r |\vec{PO}|$.
%%
%% (2) When the point $P$ moves satisfying the condition mentioned in
%% (1), assume that the functions $M(r)$ and $m(r)$ represent the
%% maximum and minimum values of the inner product
%% $\vec{PA}\cdot\vec{PB}$, respectively. Then, find the limit from the
%% left $\lim_{r\rightarrow 1-0}(1 - r)^2\{M(r)- m(r)\}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   51 (   5 equality;  16 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :   39 (   0   ~;   0   |;   7   &;  32   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_r: 'R'] :
        ( ( '</2' @ 0 @ V_r )
        & ( '</2' @ V_r @ 1 )
        & ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Point'] :
            ( ( V_O = '3d.origin/0' )
            & ( V_A
              = ( '3d.point/3' @ 1 @ 0 @ 0 ) )
            & ( V_B
              = ( '3d.point/3' @ 0 @ 1 @ 0 ) )
            & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P @ V_A ) )
              = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P @ V_B ) ) )
            & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P @ V_B ) )
              = ( '*/2' @ V_r @ ( '3d.radius/1' @ ( '3d.vec/2' @ V_P @ V_O ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_r_dot_0: 'R'] :
      ( ( '<=/2' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 2 ) @ V_r_dot_0 )
      & ( '</2' @ V_r_dot_0 @ 1 ) ) ),
    answer_to(p1_question,[])).
