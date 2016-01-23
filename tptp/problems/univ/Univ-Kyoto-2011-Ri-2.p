%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2011, Science Course, Problem 2
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-07-31
%%
%% <PROBLEM-TEXT>
%% Let $T$ be the linear transformation defined by the matrix
%% $(\begin{matrix} a & 1\\ b & c\end{matrix})$ on the coordinate plane
%% with $O$ as the origin, where $a$, $b$, and $c$ are real numbers. If
%% the linear transformation $T$ satisfies the two conditions: (i) the
%% point $(1, 2)$ is transformed to the point $(1, 2)$ and (ii) when the
%% points $(1, 0)$ and $(0, 1)$ are respectively transformed to the
%% points $A$ and $B$ by $T$, the area of $\triangle OAB$ is
%% $\frac{1}{2}$, then find $a$, $b$, and $c$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   71 (   5 equality;  15 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :   61 (   0   ~;   1   |;   2   &;  58   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R',V_c: 'R'] :
        ( ( V_S
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) )
        & ( ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_a @ 1 @ V_b @ V_c ) @ ( '2d.vec2d/2' @ 1 @ 2 ) )
          = ( '2d.vec2d/2' @ 1 @ 2 ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ '2d.origin/0' @ ( '2d.vec->point/1' @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_a @ 1 @ V_b @ V_c ) @ ( '2d.vec2d/2' @ 1 @ 0 ) ) ) @ ( '2d.vec->point/1' @ ( '2d.mv*/2' @ ( '2d.matrix/4' @ V_a @ 1 @ V_b @ V_c ) @ ( '2d.vec2d/2' @ 0 @ 1 ) ) ) ) )
          = ( '//2' @ 1 @ 2 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: 'ListOf' @ 'R'] :
      ( ( V_S_dot_0
        = ( 'cons/2' @ ( '-/1' @ 1 ) @ ( 'cons/2' @ ( '-/1' @ 4 ) @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) )
      | ( V_S_dot_0
        = ( 'cons/2' @ ( '-/1' @ 1 ) @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p_question,[])).
