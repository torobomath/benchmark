%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1987, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-15
%%
%% <PROBLEM-TEXT>
%% Define the function $f(t)$ as $f(t)= 1 + 2 a t + b(2 t^2 - 1)$. Draw
%% the range of the point $(a, b)$ whose coordinates are $a$ and $b$
%% such that $f(t)\ge 0$ is true for all the values of $t$ in the
%% interval $- 1\le t\le 1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   82 (   3 equality;  23 variable)
%            Maximal formula depth :   18 (  16 average)
%            Number of connectives :   76 (   0   ~;   1   |;   6   &;  68   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :    9 (   0 sgn;   1   !;   5   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_f: 'R2R',V_a: 'R',V_b: 'R'] :
        ( ( V_f
          = ( 'fun/1'
            @ ^ [V_t_dot_0: 'R'] :
                ( '+/2' @ 1 @ ( '+/2' @ ( '*/2' @ 2 @ ( '*/2' @ V_a @ V_t_dot_0 ) ) @ ( '*/2' @ V_b @ ( '-/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_t_dot_0 @ 2 ) ) @ 1 ) ) ) ) ) )
        & ! [V_t: 'R'] :
            ( ( ( '<=/2' @ -1 @ V_t )
              & ( '<=/2' @ V_t @ 1 ) )
           => ( '>=/2' @ ( 'funapp/2' @ V_f @ V_t ) @ 0 ) )
        & ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ 'nil/0' ) ) )
      & ( ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_a_dot_0 @ 2 ) @ ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_b_dot_0 @ 2 ) ) @ ( '-/1' @ ( '*/2' @ 2 @ V_b_dot_0 ) ) ) ) @ 0 )
        | ( ( '>=/2' @ V_b_dot_0 @ ( '-/1' @ ( '+/2' @ ( '*/2' @ 2 @ V_a_dot_0 ) @ 1 ) ) )
          & ( '>=/2' @ V_b_dot_0 @ ( '-/2' @ ( '*/2' @ 2 @ V_a_dot_0 ) @ 1 ) )
          & ( '<=/2' @ V_b_dot_0 @ ( '//2' @ 1 @ 3 ) ) ) ) ) ),
    answer_to(p_question,[])).
