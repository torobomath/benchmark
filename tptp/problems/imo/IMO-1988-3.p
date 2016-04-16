%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1988, Problem 3
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-02-02
%%
%% <PROBLEM-TEXT>
%% A function $f$ is defined on the positive integers by
%% ¥[
%% ¥begin{array}{l}
%% f(1) = 1, f(3) = 3,¥¥
%% f(2n) = f(n),¥¥
%% f(4n + 1) = 2f(2n + 1) - f(n),¥¥
%% f(4n + 3) = 3f(2n + 1) - 2f(n),
%% ¥end{array}
%% ¥]
%% for all positive integers $n$. Determine the number of positive integers $n$, less
%% than or equal to $1988$, for which $f(n) = n$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   77 (   9 equality;  27 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :   57 (   0   ~;   0   |;   6   &;  49   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   2   !;   1   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_ans: $int] :
      ? [V_f: ( $int > $int )] :
        ( ! [V_n_dot_1: $int] :
            ( ( $lesseq @ V_n_dot_1 @ 0 )
           => ( ( V_f @ V_n_dot_1 )
              = 0 ) )
        & ( ( V_f @ 1 )
          = 1 )
        & ( ( V_f @ 3 )
          = 3 )
        & ! [V_n_dot_0: $int] :
            ( ( $greater @ V_n_dot_0 @ 0 )
           => ( ( ( V_f @ ( $product @ 2 @ V_n_dot_0 ) )
                = ( V_f @ V_n_dot_0 ) )
              & ( ( V_f @ ( $sum @ ( $product @ 4 @ V_n_dot_0 ) @ 1 ) )
                = ( $difference @ ( $product @ 2 @ ( V_f @ ( $sum @ ( $product @ 2 @ V_n_dot_0 ) @ 1 ) ) ) @ ( V_f @ V_n_dot_0 ) ) )
              & ( ( V_f @ ( $sum @ ( $product @ 4 @ V_n_dot_0 ) @ 3 ) )
                = ( $difference @ ( $product @ 3 @ ( V_f @ ( $sum @ ( $product @ 2 @ V_n_dot_0 ) @ 1 ) ) ) @ ( $product @ 2 @ ( V_f @ V_n_dot_0 ) ) ) ) ) )
        & ( V_ans
          = ( 'int.cardinality-of/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_n: $int] :
                  ( ( V_f @ V_n )
                  = V_n ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ans_dot_0: $int] : ( V_ans_dot_0 = 92 ) ),
    answer_to(p_question,[])).

