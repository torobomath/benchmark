%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2009, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% On the coordinate plane, let $C_1$ be the circle with the center at
%% the origin and the radius $2$, and $C_2$, the circle with the center
%% at the point $(1, 0)$ and the radius $1$. Assume that the circle
%% $C_3$ with the center at the point $(a, b)$ and the radius $t$ is
%% inscribed in $C_1$ and circumscribed to $C_2$, where $b$ is a
%% positive real number.
%%
%% (1) Represent $a$ and $b$ using $t$. Find the range of the possible
%% value of $t$.
%%
%% (2) When $t$ moves in the range found in (1), find the maximum value
%% of $b$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  142 (  15 equality;  52 variable)
%            Maximal formula depth :   21 (  13 average)
%            Number of connectives :  109 (   0   ~;   0   |;  22   &;  87   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   27 (   1 sgn;   0   !;  18   ?;   7   ^)
%                                         (  25   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_C3: '2d.Shape',V_a: 'R',V_b: 'R'] :
        ( ( V_C1
          = ( '2d.circle/2' @ '2d.origin/0' @ 2 ) )
        & ( V_C2
          = ( '2d.circle/2' @ ( '2d.point/2' @ 1 @ 0 ) @ 1 ) )
        & ( V_C3
          = ( '2d.circle/2' @ ( '2d.point/2' @ V_a @ V_b ) @ V_t ) )
        & ( '>/2' @ V_b @ 0 )
        & ( '2d.is-circumscribed-about/2' @ V_C3 @ V_C2 )
        & ( '2d.is-inscribed-in/2' @ V_C3 @ V_C1 )
        & ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) ) ) )).

thf(p1_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_C3: '2d.Shape',V_a: 'R',V_b: 'R'] :
        ( ( V_C1
          = ( '2d.circle/2' @ '2d.origin/0' @ 2 ) )
        & ( V_C2
          = ( '2d.circle/2' @ ( '2d.point/2' @ 1 @ 0 ) @ 1 ) )
        & ( V_C3
          = ( '2d.circle/2' @ ( '2d.point/2' @ V_a @ V_b ) @ V_t ) )
        & ( '</2' @ 0 @ V_b )
        & ( '2d.is-circumscribed-about/2' @ V_C3 @ V_C2 )
        & ( '2d.is-inscribed-in/2' @ V_C3 @ V_C1 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_M: 'R'] :
      ? [V_b_set: 'SetOf' @ 'R'] :
        ( ( 'maximum/2' @ V_b_set @ V_M )
        & ( V_b_set
          = ( 'set-by-def/1'
            @ ^ [V_b: 'R'] :
              ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_C3: '2d.Shape',V_a: 'R',V_t: 'R'] :
                ( ( V_C1
                  = ( '2d.circle/2' @ '2d.origin/0' @ 2 ) )
                & ( V_C2
                  = ( '2d.circle/2' @ ( '2d.point/2' @ 1 @ 0 ) @ 1 ) )
                & ( V_C3
                  = ( '2d.circle/2' @ ( '2d.point/2' @ V_a @ V_b ) @ V_t ) )
                & ( '>/2' @ V_b @ 0 )
                & ( '2d.is-circumscribed-about/2' @ V_C3 @ V_C2 )
                & ( '2d.is-inscribed-in/2' @ V_C3 @ V_C1 ) ) ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
    ? [V_ab1: 'R',V_ab2: 'R'] :
      ( ( '</2' @ 0 @ V_t )
      & ( '</2' @ V_t @ 1 )
      & ( V_ab1
        = ( '-/2' @ 2 @ ( '*/2' @ 3 @ V_t ) ) )
      & ( V_ab2
        = ( 'sqrt/1' @ ( '-/2' @ ( '*/2' @ 8 @ V_t ) @ ( '*/2' @ 8 @ ( '^/2' @ V_t @ 2 ) ) ) ) )
      & ( V_ab_dot_0
        = ( 'cons/2' @ V_ab1 @ ( 'cons/2' @ V_ab2 @ 'nil/0' ) ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_t_dot_0 )
      & ( '</2' @ V_t_dot_0 @ 1 ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,(
    ^ [V_M_dot_0: 'R'] :
      ( V_M_dot_0
      = ( 'sqrt/1' @ 2 ) ) ),
    answer_to(p2_question,[])).
