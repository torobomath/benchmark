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
%            Number of atoms       :   31 (   2 equality;  14 variable)
%            Maximal formula depth :   12 (  12 average)
%            Number of connectives :   26 (   0   ~;   0   |;   3   &;  22   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :)
%            Number of variables   :    2 (   0 sgn;   1   !;   1   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ? [V_f: 'Z' > 'Z'] :
      ( ( ( 'LamApp/2' @ V_f @ 1 )
        = 2 )
      & ! [V_n: 'Z'] :
          ( ( 'int.is-natural-number/1' @ V_n )
         => ( ( 'int.is-natural-number/1' @ ( 'LamApp/2' @ V_f @ V_n ) )
            & ( ( 'LamApp/2' @ V_f @ ( 'LamApp/2' @ V_f @ V_n ) )
              = ( 'int.+/2' @ ( 'LamApp/2' @ V_f @ V_n ) @ V_n ) )
            & ( 'int.</2' @ ( 'LamApp/2' @ V_f @ V_n ) @ ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ V_n @ 1 ) ) ) ) ) ) )).
