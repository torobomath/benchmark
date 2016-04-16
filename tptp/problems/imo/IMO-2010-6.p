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
%            Number of atoms       :   70 (   2 equality;  30 variable)
%            Maximal formula depth :   21 (  21 average)
%            Number of connectives :   65 (   0   ~;   0   |;   7   &;  54   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   5   !;   3   ?;   1   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   4 pred;    2 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a: 'seq.Seq',V_s: $int] :
      ( ( ( 'seq.is-sequence/1' @ V_a )
        & ! [V_n_dot_0: $int] :
            ( ( $lesseq @ 1 @ V_n_dot_0 )
           => ( $less @ 0.0 @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_n_dot_0 ) ) ) )
        & ! [V_n: $int] :
            ( ( $greater @ V_n @ V_s )
           => ( 'maximum/2'
              @ ( 'set-by-def/1' @ $real
                @ ^ [V_v: $real] :
                  ? [V_k: $int] :
                    ( ( $lesseq @ 1 @ V_k )
                    & ( $lesseq @ V_k @ ( $difference @ V_n @ 1 ) )
                    & ( V_v
                      = ( $sum @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_k ) ) @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ ( $difference @ V_n @ V_k ) ) ) ) ) ) )
              @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_n ) ) ) ) )
     => ? [V_l: $int,V_N: $int] :
          ( ( $lesseq @ 1 @ V_l )
          & ( $lesseq @ 1 @ V_N )
          & ( $lesseq @ V_l @ V_s )
          & ! [V_n_dot_1: $int] :
              ( ( $greatereq @ V_n_dot_1 @ V_N )
             => ( ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_n_dot_1 ) )
                = ( $sum @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_l ) ) @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ ( $difference @ V_n_dot_1 @ V_l ) ) ) ) ) ) ) ) )).

