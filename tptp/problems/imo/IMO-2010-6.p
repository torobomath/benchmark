%% DOMAIN:    Algebra, number sequences
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2010, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-21
%%
%% <PROBLEM-TEXT>
%% Let a1, a2, a3, ... be a sequence of positive real numbers.
%% Suppose that for some positive integer s, we have
%% a_n = max{a_k + a_{n-k} | 1 <= k <= n - 1}
%% for all n > s. Prove that there exist positive integers l and N, with l <= s
%% and such that a_n = a_l + a_{n-l} for all n >= N.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   69 (   2 equality;  30 variable)
%            Maximal formula depth :   21 (  21 average)
%            Number of connectives :   64 (   0   ~;   0   |;   7   &;  53   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    9 (   0 sgn;   5   !;   3   ?;   1   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'seq.Seq',V_s: 'Z'] :
      ( ( ( 'seq.is-sequence/1' @ V_a )
        & ! [V_n_dot_0: 'Z'] :
            ( ( 'int.<=/2' @ 1 @ V_n_dot_0 )
           => ( '</2' @ 0 @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_n_dot_0 ) ) ) )
        & ! [V_n: 'Z'] :
            ( ( 'int.>/2' @ V_n @ V_s )
           => ( 'maximum/2'
              @ ( 'set-by-def/1'
                @ ^ [V_v: 'R'] :
                  ? [V_k: 'Z'] :
                    ( ( 'int.<=/2' @ 1 @ V_k )
                    & ( 'int.<=/2' @ V_k @ ( 'int.-/2' @ V_n @ 1 ) )
                    & ( V_v
                      = ( '+/2' @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_k ) ) @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ ( 'int.-/2' @ V_n @ V_k ) ) ) ) ) ) )
              @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_n ) ) ) ) )
     => ? [V_l: 'Z',V_N: 'Z'] :
          ( ( 'int.<=/2' @ 1 @ V_l )
          & ( 'int.<=/2' @ 1 @ V_N )
          & ( 'int.<=/2' @ V_l @ V_s )
          & ! [V_n_dot_1: 'Z'] :
              ( ( 'int.>=/2' @ V_n_dot_1 @ V_N )
             => ( ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_n_dot_1 ) )
                = ( '+/2' @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_l ) ) @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ ( 'int.-/2' @ V_n_dot_1 @ V_l ) ) ) ) ) ) ) ) )).
