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
%            Number of atoms       :   90 (   3 equality;  23 variable)
%            Maximal formula depth :   18 (  16 average)
%            Number of connectives :   84 (   0   ~;   1   |;   6   &;  76   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   1   !;   5   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   2 pred;    5 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab: ( 'ListOf' @ $real )] :
      ? [V_f: 'R2R',V_a: $real,V_b: $real] :
        ( ( V_f
          = ( 'fun/1'
            @ ^ [V_t_dot_0: $real] :
                ( $sum @ 1.0 @ ( $sum @ ( $product @ 2.0 @ ( $product @ V_a @ V_t_dot_0 ) ) @ ( $product @ V_b @ ( $difference @ ( $product @ 2.0 @ ( '^/2' @ V_t_dot_0 @ 2.0 ) ) @ 1.0 ) ) ) ) ) )
        & ! [V_t: $real] :
            ( ( ( $lesseq @ -1.0 @ V_t )
              & ( $lesseq @ V_t @ 1.0 ) )
           => ( $greatereq @ ( 'funapp/2' @ V_f @ V_t ) @ 0.0 ) )
        & ( V_ab
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $real )] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( ( $lesseq @ ( $sum @ ( '^/2' @ V_a_dot_0 @ 2.0 ) @ ( $sum @ ( $product @ 2.0 @ ( '^/2' @ V_b_dot_0 @ 2.0 ) ) @ ( $uminus @ ( $product @ 2.0 @ V_b_dot_0 ) ) ) ) @ 0.0 )
        | ( ( $greatereq @ V_b_dot_0 @ ( $uminus @ ( $sum @ ( $product @ 2.0 @ V_a_dot_0 ) @ 1.0 ) ) )
          & ( $greatereq @ V_b_dot_0 @ ( $difference @ ( $product @ 2.0 @ V_a_dot_0 ) @ 1.0 ) )
          & ( $lesseq @ V_b_dot_0 @ ( $quotient @ 1.0 @ 3.0 ) ) ) ) ) ),
    answer_to(p_question,[])).

