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
%% $\int_0^1 f^{\prime }(x)(p x + q)d x =\frac{1}{2}$ and
%% $\int_{-1}^1 f^{\prime }(x)(p x + q)d x = 0$, as well as the values
%% of $p$ and $q$ at that time, where $f^{\prime }(x)$ is a derivative
%% of $f(x)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  116 (   8 equality;  19 variable)
%            Maximal formula depth :   19 (   8 average)
%            Number of connectives :  101 (   1   ~;   0   |;   6   &;  94   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   3   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   5   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   0 pred;    4 func;    7 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_pq: ( 'ListOf' @ $real )] :
      ? [V_p: $real,V_q: $real,V_f: 'R2R'] :
        ( ( V_pq
          = ( 'cons/2' @ $real @ V_p @ ( 'cons/2' @ $real @ V_q @ ( 'nil/0' @ $real ) ) ) )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 'c/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( ( 'integral/3'
            @ ^ [V_x_dot_0: $real] :
                ( $product @ ( 'funapp/2' @ ( 'derivative/1' @ V_f ) @ V_x_dot_0 ) @ ( $sum @ ( $product @ V_p @ V_x_dot_0 ) @ V_q ) )
            @ 0.0
            @ 1.0 )
          = ( $quotient @ 1.0 @ 2.0 ) )
        & ( ( 'integral/3'
            @ ^ [V_x: $real] :
                ( $product @ ( 'funapp/2' @ ( 'derivative/1' @ V_f ) @ V_x ) @ ( $sum @ ( $product @ V_p @ V_x ) @ V_q ) )
            @ -1.0
            @ 1.0 )
          = 0.0 ) ) )).

thf(p_answer,answer,(
    ^ [V_pq_dot_0: ( 'ListOf' @ $real )] :
    ? [V_p_dot_0: $real,V_q_dot_0: $real] :
      ( ( V_pq_dot_0
        = ( 'cons/2' @ $real @ V_p_dot_0 @ ( 'cons/2' @ $real @ V_q_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( ( $difference @ ( $product @ 4.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $product @ 3.0 @ ( '^/2' @ 'b/0' @ 2.0 ) ) )
       != 0.0 )
      & ( ( $product @ V_p_dot_0 @ ( $difference @ ( $product @ 3.0 @ ( '^/2' @ 'b/0' @ 2.0 ) ) @ ( $product @ 4.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) )
        = ( $product @ 3.0 @ 'b/0' ) )
      & ( ( $product @ V_q_dot_0 @ ( $difference @ ( $product @ 3.0 @ ( '^/2' @ 'b/0' @ 2.0 ) ) @ ( $product @ 4.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) )
        = ( $product @ -2.0 @ 'a/0' ) ) ) ),
    answer_to(p_question,[])).

