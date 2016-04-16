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
%            Number of atoms       :   24 (   0 equality;  17 variable)
%            Maximal formula depth :   11 (  11 average)
%            Number of connectives :   23 (   0   ~;   0   |;   1   &;  20   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   2 pred;    1 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_f: ( $int > $int )] :
      ( ( ! [V_m_dot_0: $int] :
            ( $less @ 0 @ ( V_f @ V_m_dot_0 ) )
        & ! [V_m: $int,V_n: $int] :
            ( 'int.is-divisible-by/2' @ ( $difference @ ( V_f @ V_m ) @ ( V_f @ V_n ) ) @ ( V_f @ ( $difference @ V_m @ V_n ) ) ) )
     => ! [V_m_dot_1: $int,V_n_dot_0: $int] :
          ( ( $lesseq @ ( V_f @ V_m_dot_1 ) @ ( V_f @ V_n_dot_0 ) )
         => ( 'int.is-divisible-by/2' @ ( V_f @ V_n_dot_0 ) @ ( V_f @ V_m_dot_1 ) ) ) ) )).

