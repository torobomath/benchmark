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
%            Number of atoms       :   55 (   4 equality;  12 variable)
%            Maximal formula depth :   14 (  14 average)
%            Number of connectives :   51 (   5   ~;   0   |;   6   &;  39   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   1   !;   2   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_d: $int] :
      ( ( ( $greater @ V_d @ 0 )
        & ( V_d != 2 )
        & ( V_d != 5 )
        & ( V_d != 13 ) )
     => ? [V_a: $int,V_b: $int] :
          ( ( 'member/2' @ $int @ V_a @ ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 5 @ ( 'cons/2' @ $int @ 13 @ ( 'cons/2' @ $int @ V_d @ ( 'nil/0' @ $int ) ) ) ) ) )
          & ( 'member/2' @ $int @ V_b @ ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 5 @ ( 'cons/2' @ $int @ 13 @ ( 'cons/2' @ $int @ V_d @ ( 'nil/0' @ $int ) ) ) ) ) )
          & ( V_a != V_b )
          & ~ ( 'int.is-square-number/1' @ ( $difference @ ( $product @ V_a @ V_b ) @ 1 ) ) ) ) )).

