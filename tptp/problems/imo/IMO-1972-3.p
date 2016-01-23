%% DOMAIN:    Combinatorics, puzzles and games
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1972, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-27
%%
%% <PROBLEM-TEXT>
%% Let $m$ and $n$ be arbitrary non-negative integers. Prove that\[
%% \frac{(2m)! (2n)!}{m! n! (m+n)!}
%% \]is an integer. ($0! = 1$.)
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   26 (   0 equality;   8 variable)
%            Maximal formula depth :   11 (  11 average)
%            Number of connectives :   25 (   0   ~;   0   |;   1   &;  23   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   0   :)
%            Number of variables   :    2 (   0 sgn;   2   !;   0   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_m: 'Z',V_n: 'Z'] :
      ( ( ( 'int.>=/2' @ V_m @ 0 )
        & ( 'int.>=/2' @ V_n @ 0 ) )
     => ( 'int.is-divisible-by/2' @ ( 'int.*/2' @ ( 'int.factorial/1' @ ( 'int.*/2' @ 2 @ V_m ) ) @ ( 'int.factorial/1' @ ( 'int.*/2' @ 2 @ V_n ) ) ) @ ( 'int.*/2' @ ( 'int.factorial/1' @ V_n ) @ ( 'int.*/2' @ ( 'int.factorial/1' @ V_m ) @ ( 'int.factorial/1' @ ( 'int.+/2' @ V_n @ V_m ) ) ) ) ) ) )).
