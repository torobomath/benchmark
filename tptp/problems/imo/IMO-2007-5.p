%% DOMAIN:    Number Theory, modular arithmetic
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 2007, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-31
%%
%% <PROBLEM-TEXT>
%% Let a and b be positive integers. Show that if 4ab - 1 divides (4a^2 - 1)^2,
%% then a = b.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   26 (   1 equality;   7 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   23 (   0   ~;   0   |;   2   &;  20   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :    2 (   0 sgn;   2   !;   0   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'Z',V_b: 'Z'] :
      ( ( ( 'int.</2' @ 0 @ V_a )
        & ( 'int.</2' @ 0 @ V_b )
        & ( 'int.is-divisible-by/2' @ ( 'int.^/2' @ ( 'int.-/2' @ ( 'int.*/2' @ 4 @ ( 'int.^/2' @ V_a @ 2 ) ) @ 1 ) @ 2 ) @ ( 'int.-/2' @ ( 'int.*/2' @ 4 @ ( 'int.*/2' @ V_a @ V_b ) ) @ 1 ) ) )
     => ( V_a = V_b ) ) )).
