%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1978, Problem 3
%% SCORE:     8
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-24
%%
%% <PROBLEM-TEXT>
%% The set of all positive integers is the union of two disjoint subsets
%% $\{f(1), f(2), \ldots, f(n), \ldots\}$, $\{g(1), g(2), \ldots, g(n), \ldots\}$, where
%% \[               f(1) < f(2) < \cdots < f(n) < \cdots,   \]
%% \[               g(1) < g(2) < \cdots < g(n) < \cdots,   \]
%% and
%% \begin{center}   $g(n) = f(f(n)) + 1$ for all $n \geq 1$.   \end{center}
%% Determine $f(240)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   73 (   8 equality;  37 variable)
%            Maximal formula depth :   17 (  10 average)
%            Number of connectives :   56 (   1   ~;   1   |;   8   &;  40   @)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   7   !;   3   ?;   2   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   2 pred;    1 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_f240: $int] :
      ? [V_f: ( $int > $int ),V_g: ( $int > $int )] :
        ( ! [V_m_dot_0: $int,V_n_dot_4: $int] :
            ( ( ( $lesseq @ 1 @ V_m_dot_0 )
              & ( $lesseq @ 1 @ V_n_dot_4 ) )
           => ( ( V_f @ V_m_dot_0 )
             != ( V_g @ V_n_dot_4 ) ) )
        & ! [V_n_dot_3: $int] :
            ( ( $lesseq @ 1 @ V_n_dot_3 )
           => ? [V_m: $int] :
                ( ( ( V_f @ V_m )
                  = V_n_dot_3 )
                | ( ( V_g @ V_m )
                  = V_n_dot_3 ) ) )
        & ! [V_n_dot_2: $int] :
            ( ( $lesseq @ 1 @ V_n_dot_2 )
           => ( $less @ ( V_f @ V_n_dot_2 ) @ ( V_f @ ( $sum @ V_n_dot_2 @ 1 ) ) ) )
        & ! [V_n_dot_1: $int] :
            ( ( $lesseq @ 1 @ V_n_dot_1 )
           => ( $less @ ( V_g @ V_n_dot_1 ) @ ( V_g @ ( $sum @ V_n_dot_1 @ 1 ) ) ) )
        & ! [V_n_dot_0: $int] :
            ( ( $lesseq @ 1 @ V_n_dot_0 )
           => ( ( V_g @ V_n_dot_0 )
              = ( $sum @ ( V_f @ ( V_f @ V_n_dot_0 ) ) @ 1 ) ) )
        & ! [V_n: $int] :
            ( ( $lesseq @ V_n @ 0 )
           => ( ( ( V_f @ V_n )
                = 0 )
              & ( ( V_g @ V_n )
                = 0 ) ) )
        & ( V_f240
          = ( V_f @ 240 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f240_dot_0: $int] : ( V_f240_dot_0 = 388 ) ),
    answer_to(p_question,[])).

