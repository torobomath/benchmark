%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1977, Problem 6
%% SCORE:     8
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-02-02
%%
%% <PROBLEM-TEXT>
%% Let $f(n)$ be a function defined on the set of all positive integers and having
%% all its values in the same set. Prove that if\[
%% f(n + 1) > f(f(n))
%% \]for each positive integer $n$, then
%% \begin{center} $f(n) = n$ for each $n$ \end{center}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   36 (   3 equality;  18 variable)
%            Maximal formula depth :   12 (  12 average)
%            Number of connectives :   29 (   0   ~;   0   |;   3   &;  21   @)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   2 pred;    1 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_f: ( $int > $int )] :
      ( ! [V_n: $int] :
          ( ( ( $greater @ V_n @ 0 )
           => ( ( $greater @ ( V_f @ V_n ) @ 0 )
              & ( $greater @ ( V_f @ ( $sum @ V_n @ 1 ) ) @ ( V_f @ ( V_f @ V_n ) ) ) ) )
          & ( ( $lesseq @ V_n @ 0 )
           => ( ( V_f @ V_n )
              = 0 ) ) )
     => ! [V_n_dot_0: $int] :
          ( ( ( $greater @ V_n_dot_0 @ 0 )
           => ( ( V_f @ V_n_dot_0 )
              = V_n_dot_0 ) )
          & ( ( $lesseq @ V_n_dot_0 @ 0 )
           => ( ( V_f @ V_n_dot_0 )
              = 0 ) ) ) ) )).

