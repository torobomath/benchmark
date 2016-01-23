%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2003, Humanities Course, Problem 3
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-30
%%
%% <PROBLEM-TEXT>
%% Let $A(a, 0)$ and $B(b, 0)$ be the common points of the parabola $C$:
%% $y = - x^2 + 2 x + 1$ and the $x$ axis, let $P({\alpha}, m {\alpha})$
%% be the common points of $C$ and the straight line $y = m x$, and let
%% $O$ be the origin, where $a < b$, $m\not= 0$, and
%% ${\alpha} < {\beta}$. Assuming that the area of the region enclosed
%% by the line segments $OP$, $OA$, and $C$ is equal to the area of the
%% region enclosed by the line segments $OQ$, $OB$, and $C$, find the
%% value of $m$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  111 (   8 equality;  39 variable)
%            Maximal formula depth :   36 (  20 average)
%            Number of connectives :   94 (   1   ~;   0   |;  16   &;  77   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   11 (   0 sgn;   0   !;   9   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Shape',V_a: 'R',V_b: 'R',V_P: '2d.Point',V_Q: '2d.Point',V_alpha: 'R',V_beta: 'R'] :
        ( ( V_A
          = ( '2d.point/2' @ V_a @ 0 ) )
        & ( V_B
          = ( '2d.point/2' @ V_b @ 0 ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 2 @ ( 'cons/2' @ -1 @ 'nil/0' ) ) ) ) ) )
        & ( '2d.on/2' @ V_A @ '2d.x-axis/0' )
        & ( '2d.on/2' @ V_A @ V_C )
        & ( '2d.on/2' @ V_B @ '2d.x-axis/0' )
        & ( '2d.on/2' @ V_B @ V_C )
        & ( V_P
          = ( '2d.point/2' @ V_alpha @ ( '*/2' @ V_m @ V_alpha ) ) )
        & ( V_Q
          = ( '2d.point/2' @ V_beta @ ( '*/2' @ V_m @ V_beta ) ) )
        & ( '2d.on/2' @ V_P @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_m @ 'nil/0' ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_m @ 'nil/0' ) ) ) ) )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '</2' @ V_a @ V_b )
        & ( V_m != 0 )
        & ( '</2' @ V_alpha @ V_beta )
        & ( ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( '2d.seg/2' @ '2d.origin/0' @ V_P ) @ ( 'cons/2' @ ( '2d.seg/2' @ '2d.origin/0' @ V_A ) @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) )
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( '2d.seg/2' @ '2d.origin/0' @ V_Q ) @ ( 'cons/2' @ ( '2d.seg/2' @ '2d.origin/0' @ V_B ) @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_m_dot_0: 'R'] : ( V_m_dot_0 = 4 ) ),
    answer_to(p_question,[])).
