%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1978, Problem 5
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-26
%%
%% <PROBLEM-TEXT>
%% Let $\{a_k\}(k = 1, 2, 3, \ldots, n, \ldots)$ be a sequence of distinct positive
%% integers. Prove that for all natural numbers $n$,\[
%% \sum_{k=1}^{n} \frac{a_k}{k^2} \geq \sum_{k=1}^{n} \frac{1}{k}.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   1 equality;  16 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   47 (   1   ~;   0   |;   3   &;  41   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   5   !;   0   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a: 'seq.Seq',V_n: $int] :
      ( ( ( 'seq.is-integer-seq/1' @ V_a )
        & ! [V_k_dot_0: $int,V_l: $int] :
            ( ( ( $less @ 0 @ V_k_dot_0 )
              & ( $less @ V_k_dot_0 @ V_l ) )
           => ( ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_k_dot_0 ) )
             != ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_l ) ) ) )
        & ! [V_k: $int] :
            ( $less @ 0.0 @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_k ) ) ) )
     => ( $greatereq
        @ ( 'seq.sum-from-to/3'
          @ ( 'seq.seq/1'
            @ ^ [V_k_dot_2: $int] :
                ( $quotient @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_k_dot_2 ) ) @ ( '^/2' @ ( $to_real @ V_k_dot_2 ) @ 2.0 ) ) )
          @ ( 'seq.index/1' @ 1 )
          @ ( 'seq.index/1' @ V_n ) )
        @ ( 'seq.sum-from-to/3'
          @ ( 'seq.seq/1'
            @ ^ [V_k_dot_1: $int] :
                ( $quotient @ 1.0 @ ( $to_real @ V_k_dot_1 ) ) )
          @ ( 'seq.index/1' @ 1 )
          @ ( 'seq.index/1' @ V_n ) ) ) ) )).

