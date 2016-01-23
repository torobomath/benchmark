%% DOMAIN:    Number Theory, misc
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2011, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-24
%%
%% <PROBLEM-TEXT>
%% Let f be a function from the set of integers to the set of positive integers.
%% Suppose that, for any two integers m and n, the difference f(m) - f(n)
%% is divisible by f(m - n). Prove that, for all integers m and n
%% with f(m) <= f(n), the number f(n) is divisible by f(m).
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   32 (   0 equality;  17 variable)
%            Maximal formula depth :   12 (  12 average)
%            Number of connectives :   31 (   0   ~;   0   |;   1   &;  28   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_f: 'Z' > 'Z'] :
      ( ( ! [V_m_dot_0: 'Z'] :
            ( 'int.</2' @ 0 @ ( 'LamApp/2' @ V_f @ V_m_dot_0 ) )
        & ! [V_m: 'Z',V_n: 'Z'] :
            ( 'int.is-divisible-by/2' @ ( 'int.-/2' @ ( 'LamApp/2' @ V_f @ V_m ) @ ( 'LamApp/2' @ V_f @ V_n ) ) @ ( 'LamApp/2' @ V_f @ ( 'int.-/2' @ V_m @ V_n ) ) ) )
     => ! [V_m_dot_1: 'Z',V_n_dot_0: 'Z'] :
          ( ( 'int.<=/2' @ ( 'LamApp/2' @ V_f @ V_m_dot_1 ) @ ( 'LamApp/2' @ V_f @ V_n_dot_0 ) )
         => ( 'int.is-divisible-by/2' @ ( 'LamApp/2' @ V_f @ V_n_dot_0 ) @ ( 'LamApp/2' @ V_f @ V_m_dot_1 ) ) ) ) )).
