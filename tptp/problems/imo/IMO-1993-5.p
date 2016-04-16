%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1993, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-10
%%
%% <PROBLEM-TEXT>
%% Does there exist a function $f : ¥mathbf{N} ¥rightarrow ¥mathbf{N}$ such that
%% $f(1) = 2$, $f(f(n)) = f(n) + n$ for all $n¥in ¥mathbf{N}$, and $f(n) < f(n + 1)$
%% for all $n ¥in ¥mathbf{N}$?
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   24 (   2 equality;  14 variable)
%            Maximal formula depth :   11 (  11 average)
%            Number of connectives :   19 (   0   ~;   0   |;   3   &;  15   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   1   !;   1   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   1 pred;    1 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ? [V_f: ( $int > $int )] :
      ( ( ( V_f @ 1 )
        = 2 )
      & ! [V_n: $int] :
          ( ( 'int.is-natural-number/1' @ V_n )
         => ( ( 'int.is-natural-number/1' @ ( V_f @ V_n ) )
            & ( ( V_f @ ( V_f @ V_n ) )
              = ( $sum @ ( V_f @ V_n ) @ V_n ) )
            & ( $less @ ( V_f @ V_n ) @ ( V_f @ ( $sum @ V_n @ 1 ) ) ) ) ) ) )).

