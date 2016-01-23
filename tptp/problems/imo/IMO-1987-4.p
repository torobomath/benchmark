%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1987, Problem 4
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-11
%%
%% <PROBLEM-TEXT>
%% Prove that there is no function $f$ from the set of non-negative integers into
%% itself such that $f(f(n)) = n + 1987$ for every $n$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   28 (   2 equality;  11 variable)
%            Maximal formula depth :   11 (  11 average)
%            Number of connectives :   24 (   1   ~;   0   |;   2   &;  18   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :)
%            Number of variables   :    4 (   0 sgn;   3   !;   1   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ~ ( ? [V_f: 'Z' > 'Z'] :
          ( ! [V_n_dot_1: 'Z'] :
              ( ( 'int.</2' @ V_n_dot_1 @ 0 )
             => ( ( 'LamApp/2' @ V_f @ V_n_dot_1 )
                = 0 ) )
          & ! [V_n_dot_0: 'Z'] :
              ( ( 'int.<=/2' @ 0 @ V_n_dot_0 )
             => ( 'int.<=/2' @ 0 @ ( 'LamApp/2' @ V_f @ V_n_dot_0 ) ) )
          & ! [V_n: 'Z'] :
              ( ( 'int.<=/2' @ 0 @ V_n )
             => ( ( 'LamApp/2' @ V_f @ ( 'LamApp/2' @ V_f @ V_n ) )
                = ( 'int.+/2' @ V_n @ 1987 ) ) ) ) ) )).
