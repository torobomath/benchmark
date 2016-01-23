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

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   34 (   1 equality;  13 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   32 (   1   ~;   0   |;   4   &;  26   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    4 (   0 sgn;   2   !;   1   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ? [V_x: 'seq.Seq'] :
      ( ( 'seq.is-bounded/1' @ V_x )
      & ( '>/2' @ V_a @ 1 )
      & ! [V_i: 'Z',V_j: 'Z'] :
          ( ( ( V_i != V_j )
            & ( 'int.<=/2' @ 0 @ V_i )
            & ( 'int.<=/2' @ 0 @ V_j ) )
         => ( '<=/2' @ 1 @ ( '*/2' @ ( 'abs/1' @ ( '-/2' @ ( 'seq.nth-term-of/2' @ V_x @ ( 'seq.index/1' @ V_i ) ) @ ( 'seq.nth-term-of/2' @ V_x @ ( 'seq.index/1' @ V_j ) ) ) ) @ ( '^/2' @ ( 'abs/1' @ ( 'int->real/1' @ ( 'int.-/2' @ V_i @ V_j ) ) ) @ V_a ) ) ) ) ) )).
