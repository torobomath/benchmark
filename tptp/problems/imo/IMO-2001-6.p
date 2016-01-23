%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 2001, Problem 6
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-21
%%
%% <PROBLEM-TEXT>
%% Let a, b, c, d be integers with a > b > c > d > 0. Suppose that
%% ac + bd = (b + d + a - c)(b + d - a + c).
%% Prove that ab + cd is not prime.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   45 (   1 equality;  23 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :   43 (   1   ~;   0   |;   4   &;  37   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'Z',V_b: 'Z',V_c: 'Z',V_d: 'Z'] :
      ( ( ( 'int.>/2' @ V_a @ V_b )
        & ( 'int.>/2' @ V_b @ V_c )
        & ( 'int.>/2' @ V_c @ V_d )
        & ( 'int.>/2' @ V_d @ 0 )
        & ( ( 'int.+/2' @ ( 'int.*/2' @ V_a @ V_c ) @ ( 'int.*/2' @ V_b @ V_d ) )
          = ( 'int.*/2' @ ( 'int.+/2' @ V_b @ ( 'int.+/2' @ V_d @ ( 'int.+/2' @ V_a @ ( 'int.-/1' @ V_c ) ) ) ) @ ( 'int.+/2' @ V_b @ ( 'int.+/2' @ V_d @ ( 'int.+/2' @ ( 'int.-/1' @ V_a ) @ V_c ) ) ) ) ) )
     => ~ ( 'int.is-prime/1' @ ( 'int.+/2' @ ( 'int.*/2' @ V_a @ V_b ) @ ( 'int.*/2' @ V_c @ V_d ) ) ) ) )).
