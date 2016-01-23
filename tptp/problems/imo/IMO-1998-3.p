%% DOMAIN:    Number Theory, misc
%% THEORY:    PA(comb)
%% SOURCE:    International Mathematical Olympiad, 1998, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-05
%%
%% <PROBLEM-TEXT>
%% For any positive integer $n$, let $d(n)$ denote the number of positive divisors of
%% $n$ (including $1$ and $n$ itself). Determine all positive integers $k$ such that
%% $¥frac{d(n^2)}{d(n)} = k$ for some $n$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   26 (   2 equality;  11 variable)
%            Maximal formula depth :   15 (   9 average)
%            Number of connectives :   20 (   0   ~;   0   |;   3   &;  17   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    7 (   1 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'Z'] :
      ? [V_n: 'Z',V_d: 'Z' > 'Z'] :
        ( ( 'int.is-integer/1' @ V_m )
        & ( V_d
          = ( ^ [V_n_dot_0: 'Z'] :
                ( 'int.cardinality-of/1'
                @ ( 'set-by-def/1'
                  @ ^ [V_k_dot_0: 'Z'] :
                      ( ( 'int.<=/2' @ 1 @ V_k_dot_0 )
                      & ( 'int.is-divisible-by/2' @ V_n_dot_0 @ V_k_dot_0 ) ) ) ) ) )
        & ( ( 'int.*/2' @ V_k @ ( 'LamApp/2' @ V_d @ V_n ) )
          = ( 'LamApp/2' @ V_d @ ( 'int.^/2' @ V_n @ 2 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_m_dot_0: 'Z'] :
      ( 'int.is-odd-number/1' @ V_m_dot_0 ) ),
    answer_to(p_question,[])).
