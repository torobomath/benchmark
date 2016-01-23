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
%            Number of atoms       :   86 (   8 equality;  37 variable)
%            Maximal formula depth :   18 (  10 average)
%            Number of connectives :   69 (   1   ~;   1   |;   8   &;  53   @)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :   12 (   0 sgn;   7   !;   3   ?;   2   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_f240: 'Z'] :
      ? [V_f: 'Z' > 'Z',V_g: 'Z' > 'Z'] :
        ( ! [V_m_dot_0: 'Z',V_n_dot_4: 'Z'] :
            ( ( ( 'int.<=/2' @ 1 @ V_m_dot_0 )
              & ( 'int.<=/2' @ 1 @ V_n_dot_4 ) )
           => ( ( 'LamApp/2' @ V_f @ V_m_dot_0 )
             != ( 'LamApp/2' @ V_g @ V_n_dot_4 ) ) )
        & ! [V_n_dot_3: 'Z'] :
            ( ( 'int.<=/2' @ 1 @ V_n_dot_3 )
           => ? [V_m: 'Z'] :
                ( ( ( 'LamApp/2' @ V_f @ V_m )
                  = V_n_dot_3 )
                | ( ( 'LamApp/2' @ V_g @ V_m )
                  = V_n_dot_3 ) ) )
        & ! [V_n_dot_2: 'Z'] :
            ( ( 'int.<=/2' @ 1 @ V_n_dot_2 )
           => ( 'int.</2' @ ( 'LamApp/2' @ V_f @ V_n_dot_2 ) @ ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ V_n_dot_2 @ 1 ) ) ) )
        & ! [V_n_dot_1: 'Z'] :
            ( ( 'int.<=/2' @ 1 @ V_n_dot_1 )
           => ( 'int.</2' @ ( 'LamApp/2' @ V_g @ V_n_dot_1 ) @ ( 'LamApp/2' @ V_g @ ( 'int.+/2' @ V_n_dot_1 @ 1 ) ) ) )
        & ! [V_n_dot_0: 'Z'] :
            ( ( 'int.<=/2' @ 1 @ V_n_dot_0 )
           => ( ( 'LamApp/2' @ V_g @ V_n_dot_0 )
              = ( 'int.+/2' @ ( 'LamApp/2' @ V_f @ ( 'LamApp/2' @ V_f @ V_n_dot_0 ) ) @ 1 ) ) )
        & ! [V_n: 'Z'] :
            ( ( 'int.<=/2' @ V_n @ 0 )
           => ( ( ( 'LamApp/2' @ V_f @ V_n )
                = 0 )
              & ( ( 'LamApp/2' @ V_g @ V_n )
                = 0 ) ) )
        & ( V_f240
          = ( 'LamApp/2' @ V_f @ 240 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f240_dot_0: 'Z'] : ( V_f240_dot_0 = 388 ) ),
    answer_to(p_question,[])).
