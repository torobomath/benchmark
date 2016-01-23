%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2013, Science Course, Problem 1
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2015-01-08
%%
%% <PROBLEM-TEXT>
%% Let $k$ be a real number. For the cubic equation
%% $f(x)= x^3 - k x^2 - 1$, let ${\alpha}$, ${\beta}$, and ${\gamma}$ be
%% the three solutions of the equation $f(x)= 0$. Assume that $g(x)$ is
%% a cubic equation of which the coefficient of $x^3$ is $1$, and let
%% ${\alpha} {\beta}$, ${\beta} {\gamma}$, and ${\gamma} {\alpha}$ be
%% the three solutions of the equation $g(x)= 0$.
%%
%% (1) Represent $g(x)$ using $k$.
%%
%% (2) Find the value of $k$ such that the equations $f(x)= 0$ and
%% $g(x)= 0$ have common solutions.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  140 (   6 equality;  38 variable)
%            Maximal formula depth :   22 (  13 average)
%            Number of connectives :  126 (   0   ~;   1   |;   5   &; 120   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :   19 (   2 sgn;   0   !;  13   ?;   4   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_gc: 'ListOf' @ 'R'] :
      ? [V_c0: 'R',V_c1: 'R',V_c2: 'R'] :
        ( ( V_gc
          = ( 'cons/2' @ V_c0 @ ( 'cons/2' @ V_c1 @ ( 'cons/2' @ V_c2 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) )
        & ? [V_alpha: 'R',V_beta: 'R',V_gamma: 'R'] :
            ( ( 'are-solutions-of/2' @ ( 'cons/2' @ V_alpha @ ( 'cons/2' @ V_beta @ ( 'cons/2' @ V_gamma @ 'nil/0' ) ) ) @ ( 'poly-equation/1' @ ( 'cons/2' @ ( '-/1' @ 1 ) @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ V_k ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) )
            & ( 'are-solutions-of/2' @ ( 'cons/2' @ ( '*/2' @ V_alpha @ V_beta ) @ ( 'cons/2' @ ( '*/2' @ V_beta @ V_gamma ) @ ( 'cons/2' @ ( '*/2' @ V_gamma @ V_alpha ) @ 'nil/0' ) ) ) @ ( 'poly-equation/1' @ V_gc ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
      ? [V_c0: 'R',V_c1: 'R',V_c2: 'R',V_alpha: 'R',V_beta: 'R',V_gamma: 'R'] :
        ( ( 'are-solutions-of/2' @ ( 'cons/2' @ V_alpha @ ( 'cons/2' @ V_beta @ ( 'cons/2' @ V_gamma @ 'nil/0' ) ) ) @ ( 'poly-equation/1' @ ( 'cons/2' @ ( '-/1' @ 1 ) @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ V_k ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) )
        & ( 'are-solutions-of/2' @ ( 'cons/2' @ ( '*/2' @ V_alpha @ V_beta ) @ ( 'cons/2' @ ( '*/2' @ V_beta @ V_gamma ) @ ( 'cons/2' @ ( '*/2' @ V_gamma @ V_alpha ) @ 'nil/0' ) ) ) @ ( 'poly-equation/1' @ ( 'cons/2' @ V_c0 @ ( 'cons/2' @ V_c1 @ ( 'cons/2' @ V_c2 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) )
        & ? [V_x: 'R'] :
            ( ( ( 'funapp/2' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '-/1' @ 1 ) @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ V_k ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) @ V_x )
              = 0 )
            & ( ( 'funapp/2' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_c0 @ ( 'cons/2' @ V_c1 @ ( 'cons/2' @ V_c2 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) @ V_x )
              = 0 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_gc_dot_0: 'ListOf' @ 'R'] :
      ( V_gc_dot_0
      = ( 'cons/2' @ -1 @ ( 'cons/2' @ V_k @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_k_dot_0: 'R'] :
      ( ( V_k_dot_0 = 0 )
      | ( V_k_dot_0 = -2 ) ) ),
    answer_to(p2_question,[])).
