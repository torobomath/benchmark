%% DOMAIN:    Number Theory, modular arithmetic
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 2003, Problem 6
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-21
%%
%% <PROBLEM-TEXT>
%% Show that for each prime p, there exists a prime q such that
%% n^p - p is not divisible by q for any positive integer n.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   14 (   0 equality;   7 variable)
%            Maximal formula depth :   13 (  13 average)
%            Number of connectives :   14 (   1   ~;   0   |;   1   &;  10   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :)
%            Number of variables   :    3 (   0 sgn;   2   !;   1   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_p: 'Z'] :
      ( ( 'int.is-prime/1' @ V_p )
     => ? [V_q: 'Z'] :
          ( ( 'int.is-prime/1' @ V_q )
          & ! [V_n: 'Z'] :
              ( ( 'int.>/2' @ V_n @ 0 )
             => ~ ( 'int.is-divisible-by/2' @ V_q @ ( 'int.-/2' @ ( 'int.^/2' @ V_n @ V_p ) @ V_p ) ) ) ) ) )).
