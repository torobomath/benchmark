%% DOMAIN:    Combinatorics, finite sets
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1994, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-11
%%
%% <PROBLEM-TEXT>
%% Let $m$ and $n$ be positive integers. Let $a_1, a_2, ¥ldots, a_m$ be distinct
%% elements of $¥{1, 2, ... , n¥}$ such that whenever $a_i + a_j ¥le n$ for some $i$,
%% $j$, $1 ¥le i ¥le j ¥le m$, there exists $k$, $1 ¥le k ¥le m$, with
%% $a_i + a_j = a_k$. Prove that
%% ¥[
%% ¥frac{a_1 + a_2 + ... + a_m}{m} ¥ge ¥frac{n+1}{2}.
%% ¥]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  105 (   3 equality;  43 variable)
%            Maximal formula depth :   24 (  24 average)
%            Number of connectives :  100 (   1   ~;   0   |;  14   &;  81   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    9 (   0 sgn;   8   !;   1   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_n: 'Z',V_m: 'Z',V_an: 'ListOf' @ 'Z'] :
      ( ( ( 'int.>/2' @ V_m @ 0 )
        & ( 'int.>/2' @ V_n @ 0 )
        & ( ( 'list-len/1' @ V_an )
          = V_m )
        & ! [V_i_dot_1: 'Z'] :
            ( ( ( 'int.<=/2' @ 1 @ V_i_dot_1 )
              & ( 'int.<=/2' @ V_i_dot_1 @ V_m ) )
           => ( ( 'int.<=/2' @ 1 @ ( 'nth/2' @ ( 'int.-/2' @ V_i_dot_1 @ 1 ) @ V_an ) )
              & ( 'int.<=/2' @ ( 'nth/2' @ ( 'int.-/2' @ V_i_dot_1 @ 1 ) @ V_an ) @ V_n ) ) )
        & ! [V_i_dot_0: 'Z',V_j_dot_0: 'Z'] :
            ( ( ( 'int.<=/2' @ 1 @ V_i_dot_0 )
              & ( 'int.</2' @ V_i_dot_0 @ V_j_dot_0 )
              & ( 'int.<=/2' @ V_j_dot_0 @ V_m ) )
           => ( ( 'nth/2' @ ( 'int.-/2' @ V_i_dot_0 @ 1 ) @ V_an )
             != ( 'nth/2' @ ( 'int.-/2' @ V_j_dot_0 @ 1 ) @ V_an ) ) )
        & ! [V_i: 'Z',V_j: 'Z'] :
            ( ( ( 'int.<=/2' @ 1 @ V_i )
              & ( 'int.<=/2' @ V_i @ V_j )
              & ( 'int.<=/2' @ V_j @ V_m )
              & ( 'int.<=/2' @ ( 'int.+/2' @ ( 'nth/2' @ ( 'int.-/2' @ V_i @ 1 ) @ V_an ) @ ( 'nth/2' @ ( 'int.-/2' @ V_j @ 1 ) @ V_an ) ) @ V_n ) )
           => ? [V_k: 'Z'] :
                ( ( 'int.<=/2' @ 1 @ V_k )
                & ( 'int.<=/2' @ V_k @ V_m )
                & ( ( 'int.+/2' @ ( 'nth/2' @ ( 'int.-/2' @ V_i @ 1 ) @ V_an ) @ ( 'nth/2' @ ( 'int.-/2' @ V_j @ 1 ) @ V_an ) )
                  = ( 'nth/2' @ ( 'int.-/2' @ V_k @ 1 ) @ V_an ) ) ) ) )
     => ( 'rat.>=/2' @ ( 'rat.ratio/2' @ ( 'int.sum/1' @ V_an ) @ V_m ) @ ( 'rat.ratio/2' @ ( 'int.+/2' @ V_n @ 1 ) @ 2 ) ) ) )).
