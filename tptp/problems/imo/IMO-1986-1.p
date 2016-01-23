%% DOMAIN:    Number Theory, number theory
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1986, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-18
%%
%% <PROBLEM-TEXT>
%% Let $d$ be any positive integer not equal to $2$, $5$, or $13$. Show that one can
%% find distinct $a$, $b$ in the set $¥{2, 5, 13, d¥}$ such that $ab - 1$ is not a
%% perfect square.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   43 (   4 equality;  12 variable)
%            Maximal formula depth :   14 (  14 average)
%            Number of connectives :   39 (   5   ~;   0   |;   6   &;  27   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    3 (   0 sgn;   1   !;   2   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_d: 'Z'] :
      ( ( ( 'int.>/2' @ V_d @ 0 )
        & ( V_d != 2 )
        & ( V_d != 5 )
        & ( V_d != 13 ) )
     => ? [V_a: 'Z',V_b: 'Z'] :
          ( ( 'member/2' @ V_a @ ( 'cons/2' @ 2 @ ( 'cons/2' @ 5 @ ( 'cons/2' @ 13 @ ( 'cons/2' @ V_d @ 'nil/0' ) ) ) ) )
          & ( 'member/2' @ V_b @ ( 'cons/2' @ 2 @ ( 'cons/2' @ 5 @ ( 'cons/2' @ 13 @ ( 'cons/2' @ V_d @ 'nil/0' ) ) ) ) )
          & ( V_a != V_b )
          & ~ ( 'int.is-square-number/1' @ ( 'int.-/2' @ ( 'int.*/2' @ V_a @ V_b ) @ 1 ) ) ) ) )).
