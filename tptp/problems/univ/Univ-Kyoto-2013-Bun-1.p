%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2013, Humanities Course, Problem 1
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2015-01-08
%%
%% <PROBLEM-TEXT>
%% Define $f(x)=(x + a)(x + 2)$, where $a$ is a real number equal to or
%% larger than $2$. Find the range of the value of $a$ such that
%% $f(f(x))>0$ is true for all the real numbers $x$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   33 (   0 equality;  10 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   31 (   0   ~;   0   |;   2   &;  29   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   1   !;   0   ?;   4   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   4 pred;    2 func;    2 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
        ( ( $greatereq @ V_a @ 2.0 )
        & ! [V_x: $real] :
            ( $greater
            @ ( ^ [V_x_dot_1: $real] :
                  ( $product @ ( $sum @ V_x_dot_1 @ V_a ) @ ( $sum @ V_x_dot_1 @ 2.0 ) )
              @ ( ^ [V_x_dot_0: $real] :
                    ( $product @ ( $sum @ V_x_dot_0 @ V_a ) @ ( $sum @ V_x_dot_0 @ 2.0 ) )
                @ V_x ) )
            @ 0.0 ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( $lesseq @ 2.0 @ V_a_dot_0 )
      & ( $less @ V_a_dot_0 @ ( $sum @ 2.0 @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

