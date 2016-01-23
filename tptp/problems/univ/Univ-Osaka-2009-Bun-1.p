%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2009, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-25
%%
%% <PROBLEM-TEXT>
%% Consider the curve $C$: $y = x^3 - k x$ and the point $A(a, a^3-k a)$
%% $(a\not= 0)$ on $C$, where $k$ is a real number. Answer the following
%% questions:
%%
%% (1) Let $l_1$ be the tangent to $C$ at the point $A$. Let $B$ be the
%% intersection of $l_1$ and $C$ other than $A$. Find the $x$ coordinate
%% of $B$.
%%
%% (2) Let $l_2$ be the tangent to $C$ at the point $B$. Find the
%% condition that $a$ and $k$ must satisfy in order that $l_1$ is
%% orthogonal to $l_2$.
%%
%% (3) Find the range of the value of $k$ such that there exists $k$
%% such that $l_1$ is orthogonal to $l_2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  184 (  16 equality;  85 variable)
%            Maximal formula depth :   23 (  14 average)
%            Number of connectives :  153 (   5   ~;   1   |;  27   &; 120   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   31 (   0 sgn;   0   !;  19   ?;   9   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_C: '2d.Shape',V_A: '2d.Point',V_l1: '2d.Shape',V_B: '2d.Point'] :
        ( ( V_a != 0 )
        & ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: 'R'] :
                  ( '-/2' @ ( '^/2' @ V_x_dot_0 @ 3 ) @ ( '*/2' @ V_k @ V_x_dot_0 ) ) ) ) )
        & ( V_A
          = ( '2d.point/2' @ V_a @ ( '-/2' @ ( '^/2' @ V_a @ 3 ) @ ( '*/2' @ V_k @ V_a ) ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.tangent/3' @ V_l1 @ V_C @ V_A )
        & ( V_B != V_A )
        & ( '2d.intersect/3' @ V_l1 @ V_C @ V_B )
        & ( V_x
          = ( '2d.x-coord/1' @ V_B ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ak: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_k: 'R',V_C: '2d.Shape',V_A: '2d.Point',V_l1: '2d.Shape',V_B: '2d.Point',V_l2: '2d.Shape'] :
        ( ( V_a != 0 )
        & ( V_ak
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_k @ 'nil/0' ) ) )
        & ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '-/2' @ ( '^/2' @ V_x @ 3 ) @ ( '*/2' @ V_k @ V_x ) ) ) ) )
        & ( V_A
          = ( '2d.point/2' @ V_a @ ( '-/2' @ ( '^/2' @ V_a @ 3 ) @ ( '*/2' @ V_k @ V_a ) ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.tangent/3' @ V_l1 @ V_C @ V_A )
        & ( V_B != V_A )
        & ( '2d.intersect/3' @ V_l1 @ V_C @ V_B )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.tangent/3' @ V_l2 @ V_C @ V_B )
        & ( '2d.perpendicular/2' @ V_l1 @ V_l2 ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
      ? [V_a: 'R',V_C: '2d.Shape',V_A: '2d.Point',V_l1: '2d.Shape',V_B: '2d.Point',V_l2: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '-/2' @ ( '^/2' @ V_x @ 3 ) @ ( '*/2' @ V_k @ V_x ) ) ) ) )
        & ( V_A
          = ( '2d.point/2' @ V_a @ ( '-/2' @ ( '^/2' @ V_a @ 3 ) @ ( '*/2' @ V_k @ V_a ) ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.tangent/3' @ V_l1 @ V_C @ V_A )
        & ( V_B != V_A )
        & ( '2d.intersect/3' @ V_l1 @ V_C @ V_B )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.tangent/3' @ V_l2 @ V_C @ V_B )
        & ( '2d.perpendicular/2' @ V_l1 @ V_l2 ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_1: 'R'] :
      ( ( ( '>/2' @ V_a @ 0 )
        | ( '</2' @ V_a @ 0 ) )
      & ( V_x_dot_1
        = ( '*/2' @ ( '-/1' @ 2 ) @ V_a ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ak_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_k_dot_0: 'R'] :
      ( ( V_ak_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_k_dot_0 @ 'nil/0' ) ) )
      & ( ( '*/2' @ ( '-/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_a_dot_0 @ 2 ) ) @ V_k_dot_0 ) @ ( '-/2' @ ( '*/2' @ 12 @ ( '^/2' @ V_a_dot_0 @ 2 ) ) @ V_k_dot_0 ) )
        = -1 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_k_dot_0: 'R'] :
      ( '>=/2' @ V_k_dot_0 @ ( '//2' @ 4 @ 3 ) ) ),
    answer_to(p3_question,[])).
