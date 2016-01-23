%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2003, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-25
%%
%% <PROBLEM-TEXT>
%% For the real numbers $a$, $b$, and $c$, define
%% $f(x)= a x^2 + b x + c$. Find the condition that $a$, $b$, and $c$
%% must satisfy in order that there exist the real numbers $p$ and $q$
%% that satisfy the equations
%% $\int_0^t f^{\prime }(x)(p x + q)d x =\frac{1}{2}$ and
%% $\int_{-1}^1 f^{\prime }(x)(p x + q)d x = 0$, as well as the values
%% of $p$ and $q$ at that time, where $f^{\prime }(x)$ is a derivative
%% of $f(x)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  116 (   8 equality;  36 variable)
%            Maximal formula depth :   22 (  20 average)
%            Number of connectives :  101 (   1   ~;   0   |;   6   &;  94   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   15 (   0 sgn;   0   !;  11   ?;   4   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_abcpq: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R',V_c: 'R',V_f: 'R2R',V_p: 'R',V_q: 'R'] :
        ( ( V_abcpq
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_p @ ( 'cons/2' @ V_q @ 'nil/0' ) ) ) ) ) )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) )
        & ( ( 'integral/3'
            @ ^ [V_x_dot_0: 'R'] :
                ( '*/2' @ ( 'funapp/2' @ ( 'derivative/1' @ V_f ) @ V_x_dot_0 ) @ ( '+/2' @ ( '*/2' @ V_p @ V_x_dot_0 ) @ V_q ) )
            @ 0
            @ 1 )
          = ( '//2' @ 1 @ 2 ) )
        & ( ( 'integral/3'
            @ ^ [V_x: 'R'] :
                ( '*/2' @ ( 'funapp/2' @ ( 'derivative/1' @ V_f ) @ V_x ) @ ( '+/2' @ ( '*/2' @ V_p @ V_x ) @ V_q ) )
            @ -1
            @ 1 )
          = 0 ) ) )).

thf(p_answer,answer,(
    ^ [V_abcpq_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R',V_c_dot_0: 'R',V_p_dot_0: 'R',V_q_dot_0: 'R'] :
      ( ( V_abcpq_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ ( 'cons/2' @ V_c_dot_0 @ ( 'cons/2' @ V_p_dot_0 @ ( 'cons/2' @ V_q_dot_0 @ 'nil/0' ) ) ) ) ) )
      & ( ( '-/2' @ ( '*/2' @ 4 @ ( '^/2' @ V_a_dot_0 @ 2 ) ) @ ( '*/2' @ 3 @ ( '^/2' @ V_b_dot_0 @ 2 ) ) )
       != 0 )
      & ( ( '*/2' @ V_p_dot_0 @ ( '-/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_b_dot_0 @ 2 ) ) @ ( '*/2' @ 4 @ ( '^/2' @ V_a_dot_0 @ 2 ) ) ) )
        = ( '*/2' @ 3 @ V_b_dot_0 ) )
      & ( ( '*/2' @ V_q_dot_0 @ ( '-/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_b_dot_0 @ 2 ) ) @ ( '*/2' @ 4 @ ( '^/2' @ V_a_dot_0 @ 2 ) ) ) )
        = ( '*/2' @ 2 @ V_a_dot_0 ) ) ) ),
    answer_to(p_question,[])).
