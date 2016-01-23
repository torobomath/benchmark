%% DOMAIN:    Algebra, number sequences
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1996, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-11
%%
%% <PROBLEM-TEXT>
%% Let $p$, $q$, $n$ be three positive integers with $p + q < n$. Let
%% $(x_0,x_1,¥ldots,x_n)$ be an $(n+1)$-tuple of integers satisfying the following
%% conditions:
%% ¥begin{flushleft}
%% (a) $x_0 = x_n = 0$.¥¥
%% (b) For each $i$ with $1 ¥le i ¥le n$, either $x_i - x_{i-1} = p$ or
%% $x_i -x_{i-1} = -q$.
%% ¥end{flushleft}
%% Show that there exist indices $i < j$ with $(i, j) ¥neq (0, n)$, such that
%% $x_i = x_j$ .
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   79 (   8 equality;  33 variable)
%            Maximal formula depth :   23 (  23 average)
%            Number of connectives :   64 (   1   ~;   1   |;  12   &;  49   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    7 (   0 sgn;   5   !;   2   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_p: 'Z',V_q: 'Z',V_n: 'Z',V_xl: 'ListOf' @ 'Z'] :
      ( ( ( 'int.>/2' @ V_p @ 0 )
        & ( 'int.>/2' @ V_q @ 0 )
        & ( 'int.>/2' @ V_n @ 0 )
        & ( 'int.</2' @ ( 'int.+/2' @ V_p @ V_q ) @ V_n )
        & ( ( 'list-len/1' @ V_xl )
          = ( 'int.+/2' @ V_n @ 1 ) )
        & ( ( 'nth/2' @ 1 @ V_xl )
          = 0 )
        & ( ( 'nth/2' @ ( 'int.+/2' @ V_n @ 1 ) @ V_xl )
          = 0 )
        & ! [V_i: 'Z'] :
            ( ( 'int.<=/2' @ 2 @ V_i )
            & ( 'int.<=/2' @ V_i @ ( 'int.+/2' @ V_n @ 1 ) )
            & ( ( ( 'int.-/2' @ ( 'nth/2' @ V_i @ V_xl ) @ ( 'nth/2' @ ( 'int.-/2' @ V_i @ 1 ) @ V_xl ) )
                = V_p )
              | ( ( 'int.-/2' @ ( 'nth/2' @ V_i @ V_xl ) @ ( 'nth/2' @ ( 'int.-/2' @ V_i @ 1 ) @ V_xl ) )
                = ( 'int.-/1' @ V_q ) ) ) ) )
     => ? [V_i_dot_0: 'Z',V_j: 'Z'] :
          ( ( 'int.</2' @ V_i_dot_0 @ V_j )
          & ~ ( ( V_i_dot_0 = 0 )
              & ( V_j = V_n ) )
          & ( ( 'nth/2' @ V_i_dot_0 @ V_xl )
            = ( 'nth/2' @ V_j @ V_xl ) ) ) ) )).
