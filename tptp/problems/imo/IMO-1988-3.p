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
%            Number of atoms       :   87 (   9 equality;  27 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :   67 (   0   ~;   0   |;   6   &;  59   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    6 (   0 sgn;   2   !;   1   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
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
        & ( ( 'LamApp/2' @ V_f @ 1 )
          = 1 )
        & ( ( 'LamApp/2' @ V_f @ 3 )
          = 3 )
        & ! [V_n_dot_0: 'Z'] :
            ( ( 'int.>/2' @ V_n_dot_0 @ 0 )
           => ( ( ( 'LamApp/2' @ V_f @ ( 'int.*/2' @ 2 @ V_n_dot_0 ) )
                = ( 'LamApp/2' @ V_f @ V_n_dot_0 ) )
              & ( ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ ( 'int.*/2' @ 4 @ V_n_dot_0 ) @ 1 ) )
                = ( 'int.-/2' @ ( 'int.*/2' @ 2 @ ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ V_n_dot_0 ) @ 1 ) ) ) @ ( 'LamApp/2' @ V_f @ V_n_dot_0 ) ) )
              & ( ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ ( 'int.*/2' @ 4 @ V_n_dot_0 ) @ 3 ) )
                = ( 'int.-/2' @ ( 'int.*/2' @ 3 @ ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ V_n_dot_0 ) @ 1 ) ) ) @ ( 'int.*/2' @ 2 @ ( 'LamApp/2' @ V_f @ V_n_dot_0 ) ) ) ) ) )
        & ( V_ans
          = ( 'int.cardinality-of/1'
            @ ( 'set-by-def/1'
              @ ^ [V_n: 'Z'] :
                  ( ( 'LamApp/2' @ V_f @ V_n )
                  = V_n ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ans_dot_0: 'Z'] : ( V_ans_dot_0 = 92 ) ),
    answer_to(p_question,[])).
