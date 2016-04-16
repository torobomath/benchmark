%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1982, Problem 1
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-02-02
%%
%% <PROBLEM-TEXT>
%% The function $f(n)$ is defined for all positive integers $n$ and takes on
%% non-negative integer values. Also, for all $m$, $n$
%% ¥begin{center}
%% $f(m + n) - f(m) - f(n) = 0$ or $1$¥¥
%% $f(2) = 0$, $f(3) > 0$, and $f(9999) = 3333$.
%% ¥end{center}
%% Determine $f(1982)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   62 (   7 equality;  27 variable)
%            Maximal formula depth :   17 (  10 average)
%            Number of connectives :   46 (   0   ~;   1   |;   6   &;  36   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   4   !;   1   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   3 pred;    2 func;    8 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_ans: $int] :
      ? [V_f: ( $int > $int )] :
        ( ! [V_n_dot_1: $int] :
            ( ( $lesseq @ V_n_dot_1 @ 0 )
           => ( ( V_f @ V_n_dot_1 )
              = 0 ) )
        & ! [V_n_dot_0: $int] :
            ( ( $greater @ V_n_dot_0 @ 0 )
           => ( $greatereq @ ( V_f @ V_n_dot_0 ) @ 0 ) )
        & ! [V_m: $int,V_n: $int] :
            ( ( $greater @ V_n @ 0 )
           => ( ( ( $difference @ ( V_f @ ( $sum @ V_m @ V_n ) ) @ ( $sum @ ( V_f @ V_m ) @ ( V_f @ V_n ) ) )
                = 0 )
              | ( ( $difference @ ( V_f @ ( $sum @ V_m @ V_n ) ) @ ( $sum @ ( V_f @ V_m ) @ ( V_f @ V_n ) ) )
                = 1 ) ) )
        & ( ( V_f @ 2 )
          = 0 )
        & ( $greater @ ( V_f @ 3 ) @ 0 )
        & ( ( V_f @ 9999 )
          = 3333 )
        & ( V_ans
          = ( V_f @ 1982 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ans_dot_0: $int] : ( V_ans_dot_0 = 660 ) ),
    answer_to(p_question,[])).

