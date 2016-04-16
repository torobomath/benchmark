%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2003, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-18
%%
%% <PROBLEM-TEXT>
%% For the real number $a$, define the sets $A$ and $B$ as
%% $A =\{x| x^2+(1 - a^2)x+a^3-2 a^2+a\le 0, x is a real number\}$ and
%% $B =\{x| x^2+(2 a - 7)x+a^2-7 a+10<0, x is a real number\}$. Find the
%% range of $a$ such that the intersection $A\cap B$ is not an empty
%% set.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   78 (   2 equality;  18 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   75 (   1   ~;   1   |;   3   &;  70   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   2 pred;    4 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_A: ( 'SetOf' @ $real ),V_B: ( 'SetOf' @ $real )] :
        ( ( V_A
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x_dot_0: $real] :
                ( $lesseq @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( $sum @ ( $product @ ( $difference @ 1.0 @ ( '^/2' @ V_a @ 2.0 ) ) @ V_x_dot_0 ) @ ( $sum @ ( '^/2' @ V_a @ 3.0 ) @ ( $sum @ ( $uminus @ ( $product @ 2.0 @ ( '^/2' @ V_a @ 2.0 ) ) ) @ V_a ) ) ) ) @ 0.0 ) ) )
        & ( V_B
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x: $real] :
                ( $less @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $sum @ ( $product @ ( $difference @ ( $product @ 2.0 @ V_a ) @ 7.0 ) @ V_x ) @ ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( $sum @ ( $uminus @ ( $product @ 7.0 @ V_a ) ) @ 10.0 ) ) ) ) @ 0.0 ) ) )
        & ~ ( 'is-empty/1' @ $real @ ( 'set-intersection/2' @ $real @ V_A @ V_B ) ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( $less @ V_a_dot_0 @ ( $uminus @ ( 'sqrt/1' @ 2.0 ) ) )
      | ( ( $less @ ( 'sqrt/1' @ 2.0 ) @ V_a_dot_0 )
        & ( $less @ V_a_dot_0 @ 3.0 ) ) ) ),
    answer_to(p_question,[])).

