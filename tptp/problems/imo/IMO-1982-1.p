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
%            Number of atoms       :   73 (   7 equality;  27 variable)
%            Maximal formula depth :   17 (  10 average)
%            Number of connectives :   57 (   0   ~;   1   |;   6   &;  47   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    7 (   0 sgn;   4   !;   1   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ans: 'Z'] :
      ? [V_f: 'Z' > 'Z'] :
        ( ! [V_n_dot_1: 'Z'] :
            ( ( 'int.<=/2' @ V_n_dot_1 @ 0 )
           => ( ( 'LamApp/2' @ V_f @ V_n_dot_1 )
              = 0 ) )
        & ! [V_n_dot_0: 'Z'] :
            ( ( 'int.>/2' @ V_n_dot_0 @ 0 )
           => ( 'int.>=/2' @ ( 'LamApp/2' @ V_f @ V_n_dot_0 ) @ 0 ) )
        & ! [V_m: 'Z',V_n: 'Z'] :
            ( ( 'int.>/2' @ V_n @ 0 )
           => ( ( ( 'int.-/2' @ ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ V_m @ V_n ) ) @ ( 'int.+/2' @ ( 'LamApp/2' @ V_f @ V_m ) @ ( 'LamApp/2' @ V_f @ V_n ) ) )
                = 0 )
              | ( ( 'int.-/2' @ ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ V_m @ V_n ) ) @ ( 'int.+/2' @ ( 'LamApp/2' @ V_f @ V_m ) @ ( 'LamApp/2' @ V_f @ V_n ) ) )
                = 1 ) ) )
        & ( ( 'LamApp/2' @ V_f @ 2 )
          = 0 )
        & ( 'int.>/2' @ ( 'LamApp/2' @ V_f @ 3 ) @ 0 )
        & ( ( 'LamApp/2' @ V_f @ 9999 )
          = 3333 )
        & ( V_ans
          = ( 'LamApp/2' @ V_f @ 1982 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ans_dot_0: 'Z'] : ( V_ans_dot_0 = 660 ) ),
    answer_to(p_question,[])).
