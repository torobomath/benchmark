%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2009, Science Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2013-12-29
%%
%% <PROBLEM-TEXT>
%% Consider the cuboid $OABC-DEFG$ whose vertices are $O(0, 0, 0)$,
%% $A(3, 0, 0)$, $B(3, 2, 0)$, $C(0, 2, 0)$, $D(0, 0, 4)$, $E(3, 0, 4)$,
%% $F(3, 2, 4)$, and $G(0, 2, 4)$ in the $xyz$ space. Let $P$ be the
%% point that internally divides the side $AE$ in a ratio of $s:1-s$,
%% and $Q$, the point that internally divides the side $CG$ in a ratio
%% of $t:1-t$, where $0<s<1$ and $0<t<1$. Find the condition that $s$
%% and $t$ must satisfy in order that the straight line passing through
%% $D$ and perpendicular to the plane containing the points $O$, $P$,
%% and $Q$ intersects with the line segment $AC$ (including both ends).
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  107 (   3 equality;  31 variable)
%            Maximal formula depth :   29 (  20 average)
%            Number of connectives :  101 (   0   ~;   0   |;  17   &;  84   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   8   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_st: 'ListOf' @ 'R'] :
      ? [V_P: '3d.Point',V_Q: '3d.Point',V_l: '3d.Shape',V_OPQ: '3d.Shape',V_s: 'R',V_t: 'R'] :
        ( ( '3d.divide-internally/4' @ V_P @ ( '3d.seg/2' @ ( '3d.point/3' @ 3 @ 0 @ 0 ) @ ( '3d.point/3' @ 3 @ 0 @ 4 ) ) @ V_s @ ( '-/2' @ 1 @ V_s ) )
        & ( '3d.divide-internally/4' @ V_Q @ ( '3d.seg/2' @ ( '3d.point/3' @ 0 @ 2 @ 0 ) @ ( '3d.point/3' @ 0 @ 2 @ 4 ) ) @ V_t @ ( '-/2' @ 1 @ V_t ) )
        & ( '</2' @ 0 @ V_s )
        & ( '</2' @ V_s @ 1 )
        & ( '</2' @ 0 @ V_t )
        & ( '</2' @ V_t @ 1 )
        & ( '3d.line-type/1' @ V_l )
        & ( '3d.plane-type/1' @ V_OPQ )
        & ( '3d.on/2' @ ( '3d.point/3' @ 0 @ 0 @ 4 ) @ V_l )
        & ( '3d.on/2' @ '3d.origin/0' @ V_OPQ )
        & ( '3d.on/2' @ V_P @ V_OPQ )
        & ( '3d.on/2' @ V_Q @ V_OPQ )
        & ( '3d.perpendicular/2' @ V_l @ V_OPQ )
        & ( '3d.intersect/2' @ V_l @ ( '3d.seg/2' @ ( '3d.point/3' @ 3 @ 0 @ 0 ) @ ( '3d.point/3' @ 0 @ 2 @ 0 ) ) )
        & ( V_st
          = ( 'cons/2' @ V_s @ ( 'cons/2' @ V_t @ 'nil/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_st_dot_0: 'ListOf' @ 'R'] :
    ? [V_s_dot_0: 'R',V_t_dot_0: 'R'] :
      ( ( V_st_dot_0
        = ( 'cons/2' @ V_s_dot_0 @ ( 'cons/2' @ V_t_dot_0 @ 'nil/0' ) ) )
      & ( ( '+/2' @ ( '*/2' @ 16 @ V_s_dot_0 ) @ ( '*/2' @ 36 @ V_t_dot_0 ) )
        = 9 )
      & ( '</2' @ 0 @ V_t_dot_0 )
      & ( '</2' @ V_t_dot_0 @ ( '//2' @ 1 @ 4 ) ) ) ),
    answer_to(p1_question,[])).
