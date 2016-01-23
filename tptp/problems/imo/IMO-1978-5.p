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
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    7 (   0 sgn;   5   !;   0   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'seq.Seq',V_n: 'Z'] :
      ( ( ( 'seq.is-integer-seq/1' @ V_a )
        & ! [V_k_dot_0: 'Z',V_l: 'Z'] :
            ( ( ( 'int.</2' @ 0 @ V_k_dot_0 )
              & ( 'int.</2' @ V_k_dot_0 @ V_l ) )
           => ( ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_k_dot_0 ) )
             != ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_l ) ) ) )
        & ! [V_k: 'Z'] :
            ( '</2' @ 0 @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_k ) ) ) )
     => ( '>=/2'
        @ ( 'seq.sum-from-to/3'
          @ ( 'seq.seq/1'
            @ ^ [V_k_dot_2: 'Z'] :
                ( '//2' @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_k_dot_2 ) ) @ ( '^/2' @ ( 'int->real/1' @ V_k_dot_2 ) @ 2 ) ) )
          @ ( 'seq.index/1' @ 1 )
          @ ( 'seq.index/1' @ V_n ) )
        @ ( 'seq.sum-from-to/3'
          @ ( 'seq.seq/1'
            @ ^ [V_k_dot_1: 'Z'] :
                ( '//2' @ 1 @ ( 'int->real/1' @ V_k_dot_1 ) ) )
          @ ( 'seq.index/1' @ 1 )
          @ ( 'seq.index/1' @ V_n ) ) ) ) )).
