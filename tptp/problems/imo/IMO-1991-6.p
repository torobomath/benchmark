%% DOMAIN:    Algebra, number sequences
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1991, Problem 6
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-17
%%
%% <PROBLEM-TEXT>
%% An infinite sequence $x_0, x_1, x_2, ¥ldots$ of real numbers is said to be
%% $bounded$ if there is a constant $C$ such that $|x_i| ¥le C$ for every $i ¥ge 0$.
%% Given any real number $a > 1$, construct a bounded infinite sequence
%% $x_0, x_1, x_2, ¥ldots$ such that
%% ¥[
%% |x_i - x_j| |i - j|^a ¥ge 1
%% ¥]
%% for every pair of distinct nonnegative integers $i$, $j$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   34 (   1 equality;  11 variable)
%            Maximal formula depth :   15 (   8 average)
%            Number of connectives :   32 (   1   ~;   0   |;   4   &;  26   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   1   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   2   !;   1   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   2 pred;    3 func;    2 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p,conjecture,(
    ? [V_x: 'seq.Seq'] :
      ( ( 'seq.is-bounded/1' @ V_x )
      & ( $greater @ 'a/0' @ 1.0 )
      & ! [V_i: $int,V_j: $int] :
          ( ( ( V_i != V_j )
            & ( $lesseq @ 0 @ V_i )
            & ( $lesseq @ 0 @ V_j ) )
         => ( $lesseq @ 1.0 @ ( $product @ ( 'abs/1' @ ( $difference @ ( 'seq.nth-term-of/2' @ V_x @ ( 'seq.index/1' @ V_i ) ) @ ( 'seq.nth-term-of/2' @ V_x @ ( 'seq.index/1' @ V_j ) ) ) ) @ ( '^/2' @ ( 'abs/1' @ ( $to_real @ ( $difference @ V_i @ V_j ) ) ) @ 'a/0' ) ) ) ) ) )).

