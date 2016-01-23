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
%            Number of atoms       :   43 (   3 equality;  18 variable)
%            Maximal formula depth :   12 (  12 average)
%            Number of connectives :   36 (   0   ~;   0   |;   3   &;  28   @)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_f: 'Z' > 'Z'] :
      ( ! [V_n: 'Z'] :
          ( ( ( 'int.>/2' @ V_n @ 0 )
           => ( ( 'int.>/2' @ ( 'LamApp/2' @ V_f @ V_n ) @ 0 )
              & ( 'int.>/2' @ ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ V_n @ 1 ) ) @ ( 'LamApp/2' @ V_f @ ( 'LamApp/2' @ V_f @ V_n ) ) ) ) )
          & ( ( 'int.<=/2' @ V_n @ 0 )
           => ( ( 'LamApp/2' @ V_f @ V_n )
              = 0 ) ) )
     => ! [V_n_dot_0: 'Z'] :
          ( ( ( 'int.>/2' @ V_n_dot_0 @ 0 )
           => ( ( 'LamApp/2' @ V_f @ V_n_dot_0 )
              = V_n_dot_0 ) )
          & ( ( 'int.<=/2' @ V_n_dot_0 @ 0 )
           => ( ( 'LamApp/2' @ V_f @ V_n_dot_0 )
              = 0 ) ) ) ) )).
